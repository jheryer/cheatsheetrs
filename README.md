# Cheatsheet CLI

`cheatsheet` is a command-line tool written in Rust that enables users to quickly view cheat sheets.  Use the `--list` command to view all available cheat sheets.

## Table of Contents

- [Cheatsheet CLI](#cheatsheet-cli)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Available Cheatsheets](#available-cheatsheets)
  - [Create a new cheatsheet](#create-a-new-cheatsheet)
  - [Troubleshooting](#troubleshooting)

## Installation

To install `cheatsheet`, ensure you have Rust and Cargo installed on your system. Then, follow these steps:

1. Clone the repository:

```sh
git clone https://github.com/yourusername/cheatsheet.git
```

2. Change to the cheatsheet directory:
```sh
cd cheatsheet
```
3. Build and Install
```sh
cargo build --release
cargo install --path .
cp -r sheets ~/.cheatsheet
export CHEAT_SHEET_PATH=~/.cheatsheets
```

## Usage
* List all cheat sheets
  ```sh
  cheatsheet --list
  ```
* Show the docker cheat sheet
  ```sh
  cheatsheet docker
  ```
* Show the sections in the docker cheat sheet
  ```sh
  cheatsheet docker -l
  ```
* Show only the general and images sections in the docker cheat sheet
  ```sh
  cheatsheet docker general images
  ``` 
* Show help
  ```sh
  cheatsheet --help
  ``` 


## Available Cheatsheets
* markdown
* vim
* gsutil
* k8s
* maven
* terraform
* git
* docker
* aws
* gcloud
* xcodebuild
* conda
* sed
* cargo

## Create a new cheatsheet
Create a new markdown file in $CHEAT_SHEET_PATH and verify it shows up with --list. Markdown headings provide filtering by section.


## Troubleshooting
```sh
cheatsheet --list
No such file or directory (os error 2)
```
Ensure the $CHEAT_SHEET_PATH is set
```sh
export CHEAT_SHEET_PATH=~/.cheatsheets
```