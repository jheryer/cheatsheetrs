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
    shasum -a 256 $tarball_name
    rm $arch/sheets/* 
    rmdir $arch/sheets 
    rm $arch/* 
    rmdir $arch
  else
    echo "Error: Binary not found at $target_path"
  fi

  echo "Done with $arch"
  echo ""
done