use clap::Parser as CLAPParser;
use std::env;
#[derive(CLAPParser)]
#[command(author,version,about,long_about=None)]
pub struct Args {
    sheets: Vec<String>,
    /// List available sheets or sections
    #[arg(short, long, default_value_t = false)]
    list: bool,
}

fn main() {
    let sheet_path: String;
    let option_sheet_path = env::var("CHEAT_SHEET_PATH");

    if option_sheet_path.is_ok() {
        sheet_path = option_sheet_path.unwrap().to_owned();
    } else {
        sheet_path = String::from("~/.cheatsheets");
    }

    let args = Args::parse();

    if args.sheets.len() == 0 && args.list == true {
        if let Err(e) = cheatsheet::list(sheet_path.as_str()) {
            eprintln!("{}", e);
            std::process::exit(1);
        }
    } else {
        if let Err(e) = cheatsheet::run(args.sheets, args.list, sheet_path.as_str()) {
            eprintln!("{}", e);
            std::process::exit(1);
        }
    }
}
