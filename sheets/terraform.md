# Terraform

## Initialization
|
| Command | Description |
| --- | --- |
| `terraform init` | Initialize a new or existing Terraform working directory by downloading modules and setting up the backend |
|
## Planning 
|
| Command | Description |
| --- | --- |
| `terraform plan` | Generate and show an execution plan |
| `terraform apply` | Apply the changes required to reach the desired state of the configuration |
| `terraform destroy` | Destroy the managed infrastructure |
|
## Inspecting 
|
| Command | Description |
| --- | --- |
| `terraform show` | Show the current state or a saved plan |
| `terraform state list` | List resources in the state |
| `terraform state show <resource>` | Show the attributes of a single resource in the state |
|
## Importing 
|
| Command | Description |
| --- | --- |
| `terraform import <address> <id>` | Import existing infrastructure into your Terraform state |
| `terraform state mv <source> <destination>` | Move an item in the state to another location or to a different environment |
|
## Workspace
|
| Command | Description |
| --- | --- |
| `terraform workspace new <name>` | Create a new workspace |
| `terraform workspace select <name>` | Select a different workspace |
| `terraform workspace list` | List available workspaces |
| `terraform workspace delete <name>` | Delete an existing workspace |
|
## General
|
| Command | Description |
| --- | --- |
| `terraform validate` | Validate the configuration files |
| `terraform version` | Show the Terraform version |
| `terraform output` | Show output values from your root module |
| `terraform fmt` | Reformat your configuration in the standard style |
|
