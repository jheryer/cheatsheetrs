# gcloud

## config
Configuration and Setup
|
| Command | Description |
| --- | --- |
| `gcloud init` | Initialize or reinitialize gcloud CLI configuration |
| `gcloud config set project <project-id>` | Set the active project |
| `gcloud config set compute/zone <zone>` | Set the default compute zone |
|
## GCE
Compute Engine Instances
|
| Command | Description |
| --- | --- |
| `gcloud compute instances list` | List all Compute Engine instances |
| `gcloud compute instances create <instance-name> --image-family <image-family> --image-project <image-project> --machine-type <machine-type>` | Create a new Compute Engine instance |
| `gcloud compute instances delete <instance-name>` | Delete a Compute Engine instance |
|
## GKE 
Kubernetes Engine Clusters
|
| Command | Description |
| --- | --- |
| `gcloud container clusters list` | List all Kubernetes Engine clusters |
| `gcloud container clusters create <cluster-name> --zone <zone> --num-nodes <num-nodes>` | Create a new Kubernetes Engine cluster |
| `gcloud container clusters delete <cluster-name> --zone <zone>` | Delete a Kubernetes Engine cluster |
|
## GAE
App Engine Applications
|
| Command | Description |
| --- | --- |
| `gcloud app deploy` | Deploy an App Engine application |
| `gcloud app browse` | Open the deployed application in a web browser |
|
## Functions
Cloud Functions
|
| Command | Description |
| --- | --- |
| `gcloud functions list` | List all Cloud Functions |
| `gcloud functions deploy <function-name> --runtime <runtime> --trigger-http --allow-unauthenticated` | Deploy a new Cloud Function |
| `gcloud functions delete <function-name>` | Delete a Cloud Function |
|
## Storage
Cloud Storage Buckets
|
| Command | Description |
| --- | --- |
| `gcloud storage ls` | List all Cloud Storage buckets |
| `gcloud storage cp <source> gs://<bucket-name>/<destination>` | Upload a file or directory to a Cloud Storage bucket |
| `gcloud storage cp gs://<bucket-name>/<source> <destination>` | Download a file or directory from a Cloud Storage bucket |
| `gcloud storage rm gs://<bucket-name>/<object>` | Delete an object from a Cloud Storage bucket |
|
## General 
|
| Command | Description |
| --- | --- |
| `gcloud help` | Display help information about gcloud CLI |
| `gcloud components update` | Update gcloud CLI to the latest version |
| `gcloud auth login` | Authenticate with your Google Cloud account |
|
