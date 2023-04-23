mod sheet;
use std::borrow::Cow;
use std::error::Error;
use std::fs::{read_dir, File};
use std::io::{BufRead, BufReader};
type RunResult<T> = Result<T, Box<dyn Error>>;

pub fn run(sheets: Vec<String>, list: bool, sheet_path: &str) -> RunResult<()> {
    if sheets.len() <= 0 {
        return Err(From::from("Zero Sheets to find."));
    }

    if let Some(file_sheet) = sheets.get(0) {
        let path = get_file_from_name(file_sheet.to_string(), sheet_path).into_owned();
        match open_file(&path) {
            Err(err) => eprintln!("{}: {}", path, err),
            Ok(file) => sheet::process_new_sheet(file, &sheets[1..], list),
        }
    }

    Ok(())
}

pub fn list(dir_path: &str) -> RunResult<()> {
    let mut filenames = Vec::new();

    for entry in read_dir(dir_path)? {
        let entry = entry?;
        let path = entry.path();
        if path.is_file() {
            if let Some(stem) = path.file_stem() {
                if let Some(stem_str) = stem.to_str() {
                    filenames.push(stem_str.to_string());
                }
            }
        }
    }
    for filename in filenames {
        println!("{}", filename);
    }
    Ok(())
}

fn get_file_from_name<'a>(name: String, sheet_path: &str) -> Cow<'a, str> {
    let path = format!("{}/{}.md", sheet_path, name);
    Cow::Owned(path)
}

#[test]
fn test_get_file_from_name() {
    let subject = get_file_from_name(String::from("test_name"), "./tests/inputs");
    assert_eq!(subject, "./tests/inputs/test_name.md");
}

fn open_file(filename: &str) -> RunResult<Box<dyn BufRead>> {
    match filename {
        _ => Ok(Box::new(BufReader::new(File::open(filename)?))),
    }
}
