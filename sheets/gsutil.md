# gsutil

## Configuration
|
| Command | Description |
| --- | --- |
| `gsutil config` | Create a configuration file for gsutil |
| `gsutil config -b` | Set up a project-wide bucket and object default ACL |
| `gsutil auth login` | Obtain credentials for gsutil to access protected data |
|
## General
|
| Command | Description |
| --- | --- |
| `gsutil mb gs://<bucket-name>` | Create a new bucket |
| `gsutil ls` | List all your buckets |
| `gsutil ls gs://<bucket-name>` | List the contents of a bucket |
| `gsutil rb gs://<bucket-name>` | Delete an empty bucket |
| `gsutil acl ch -u <user-email>:<permission> gs://<bucket-name>` | Change the bucket ACL |
|
## copy
|
| Command | Description |
| --- | --- |
| `gsutil cp <local-file> gs://<bucket-name>` | Upload a file to a bucket |
| `gsutil cp gs://<bucket-name>/<object-name> <local-destination>` | Download a file from a bucket |
| `gsutil cp -r <local-directory> gs://<bucket-name>` | Upload a directory to a bucket |
|
## move
|
| Command | Description |
| --- | --- |
| `gsutil mv <source> <destination>` | Move or rename an object |
| `gsutil rm gs://<bucket-name>/<object-name>` | Delete an object |
| `gsutil rm -r gs://<bucket-name>/<directory>` | Delete a directory |
| `gsutil acl ch -u <user-email>:<permission> gs://<bucket-name>/<object-name>` | Change the object ACL |
|
## operations
|
| Command | Description |
| --- | --- |
| `gsutil rsync <source> <destination>` | Synchronize the contents of two directories |
| `gsutil du gs://<bucket-name>` | Show the total space used by a bucket |
| `gsutil setmeta -h "Content-Type:<type>" gs://<bucket-name>/<object-name>` | Set the content type of an object |
| `gsutil cors set <cors-json-file> gs://<bucket-name>` | Set the CORS configuration for a bucket |
| `gsutil cors get gs://<bucket-name>` | Get the CORS configuration for a bucket |
|