#!/bin/bash

architectures=(
  "aarch64-apple-darwin"
  "x86_64-apple-darwin"
  "x86_64-unknown-linux-gnu"
)

pkgid=$(cargo pkgid | cut -d "#" -f2)
project_name=$(echo "$pkgid" | cut -d "@" -f 1)
version=$(echo "$pkgid" | cut -d "@" -f 2)

for arch in "${architectures[@]}"; do
  echo "Building for $arch..."

  cargo build --release --target="$arch"

  target_path="target/$arch"
  tarball_name="${project_name}-${version}-${arch}.tar.gz"

  if [ -d "$target_path" ]; then
    mkdir $arch
    cp target/$arch/release/$project_name $arch
    cp -r sheets $arch/
    echo "Creating tarball $tarball_name $target_path"
    tar czf "$tarball_name" "$arch"
    rm $arch/sheets/* 
    rmdir $arch/sheets 
    rm $arch/* 
    rmdir $arch

    sha256=$(shasum -a 256 "$tarball_name" | cut -d' ' -f1)
    echo "$arch sha256: $sha256"

    cat <<EOT >> "${project_name}_arch.rb"
   if Hardware::CPU.arch == :${arch%%-*}
     url "https://github.com/jheryer/cheatsheetrs/releases/download/$version/$tarball_name"
     sha256 "$sha256"
   end
EOT
  else
    echo "Error: Binary not found at $target_path"
  fi

  echo "Done with $arch"
  echo ""
done

first_letter="$(echo "${project_name:0:1}" | tr '[:lower:]' '[:upper:]')"
rest_of_string="${project_name:1}"
class_name="${first_letter}${rest_of_string}rs"

cat <<EOT > "${project_name}_header.rb"
class ${class_name} < Formula
  desc "cheatsheet is a command-line tool written in Rust that lets users quickly view cheat sheets on the command line."
  homepage "https://github.com/jheryer/cheatsheetrs"
  version "$version"

EOT

# Append the formula footer
cat <<EOT >> "${project_name}_footer.rb"
  def install
      create_wrapper
      prefix.install "sheets"
      libexec.install "cheatsheet"
      bin.install "cheatsheet_wrapper" => "cheatsheet"
    end
  
    def post_install
      ohai "Sheets location: CHEAT_SHEET_PATH=#{prefix}/sheets"
    end

    private def create_wrapper
      wrapper = "#!/usr/bin/env bash
      export CHEAT_SHEET_PATH=\\"$\{CHEAT_SHEET_PATH:-#{prefix}/sheets\}\\"
      #{prefix}/libexec/cheatsheet \"\$@\""
      File.write('cheatsheet_wrapper',wrapper)
    end

  test do
    system "#{bin}/$project_name", "--version"
  end
end
EOT

cat "${project_name}_header.rb" >> "${project_name}_tmp.rb"
cat "${project_name}_arch.rb" >> "${project_name}_tmp.rb"
cat "${project_name}_footer.rb" >> "${project_name}_tmp.rb"
mv "${project_name}_tmp.rb" "${project_name}.rb"
#rm "${project_name}_header.rb" "${project_name}_arch.rb" "${project_name}_footer.rb" 