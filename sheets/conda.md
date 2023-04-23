# Conda

## Setup
|
| Command | Description |
| --- | --- |
| `conda init` | Initialize conda for shell interaction |
| `conda update conda` | Update conda to the latest version |
|
## Environment
|
| Command | Description |
| --- | --- |
| `conda create --name <env-name> <package-list>` | Create a new environment with specified packages |
| `conda create --name <env-name> python=3.x` | Create a new environment with python version |
| `conda env list` | List all available environments |
| `conda activate <env-name>` | Activate the specified environment |
| `conda deactivate` | Deactivate the current environment |
| `conda remove --name <env-name> --all` | Remove the specified environment |
|
## Package
|
| Command | Description |
| --- | --- |
| `conda install <package>` | Install a package in the current environment |
| `conda install --name <env-name> <package>` | Install a package in the specified environment |
| `conda list` | List all packages in the current environment |
| `conda list --all` | List all packages in all environments |
| `conda update <package>` | Update a package in the current environment |
| `conda remove <package>` | Remove a package from the current environment |
|
## Channels
|
| Command | Description |
| --- | --- |
| `conda config --add channels <channel>` | Add a new channel to the list of channels |
| `conda config --show channels` | Show the list of channels |
| `conda search <package>` | Search for a package across all channels |
|
## General
|
| Command | Description |
| --- | --- |
| `conda --version` | Display the current version of conda |
| `conda info` | Display information about the current environment and system |
| `conda help` | Display help information about conda commands |
|
