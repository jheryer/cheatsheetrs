# Kubernetes

## Cluster
|
| Command | Description |
| --- | --- | 
| `kubectl cluster-info` | Display addresses of the master and services |
| `kubectl get nodes` | List all nodes in the cluster |
| `kubectl get namespaces` | List all namespaces in the cluster |
|
## Resources
|
| Command | Description |
| --- | --- | 
| `kubectl get all` | List all resources in a namespace |
| `kubectl get pods` | List all pods in a namespace |
| `kubectl get services` | List all services in a namespace |
| `kubectl get deployments` | List all deployments in a namespace |
| `kubectl get replicaSets` | List all replicaSets in a namespace |
| `kubectl get statefulSets` | List all statefulSets in a namespace |
| `kubectl get configMaps` | List all configMaps in a namespace |
| `kubectl get secrets` | List all secrets in a namespace |
| `kubectl get jobs` | List all jobs in a namespace |
| `kubectl get cronJobs` | List all cronJobs in a namespace |
| `kubectl get persistentVolumes` | List all persistentVolumes in a namespace |
| `kubectl get persistentVolumeClaims` | List all persistentVolumeClaims in a namespace |
| `kubectl get storageClasses` | List all storageClasses in a namespace |
|
## Details
|
| Command | Description |
| --- | --- | 
| `kubectl describe <resource> <name>` | Show details of a specific resource |
| `kubectl logs <pod-name>` | Print the logs of a container in a pod |
| `kubectl exec -it <pod-name> -- /bin/bash` | Execute a command in a container |
| `kubectl cp <src> <dst>` | Copy files and directories to/from a container |
|
## CRUD
|
| Command | Description |
| --- | --- | 
| `kubectl create -f <filename>` | Create resources from a file |
| `kubectl apply -f <filename>` | Apply a configuration to a resource by filename |
| `kubectl set image deployment/<deployment-name> <container-name>=<new-image>` | Update the image of a deployment |
| `kubectl edit <resource> <name>` | Edit a resource |
| `kubectl delete -f <filename>` | Delete resources specified in a file |
| `kubectl delete <resource> <name>` | Delete a specific resource by name |
|
## Autoscale
|
| Command | Description |
| --- | --- | 
| `kubectl autoscale deployment <deployment-name> --min=<min> --max=<max> --cpu-percent=<target>` | Autoscale a deployment based on CPU usage |
|
## rollout
|
| Command | Description |
| --- | --- | 
| `kubectl rollout status deployment/<deployment-name>` | Get the status of a deployment rollout |
| `kubectl rollout history deployment/<deployment-name>` | Get the revision history of a deployment |
| `kubectl rollout undo deployment/<deployment-name> --to-revision=<revision>` | Rollback a deployment to a specific revision |
|
## Config
|
| Command | Description |
| --- | --- | 
| `kubectl config use-context <context-name>` | Set the active kubectl context |
| `kubectl config get-contexts` | List all kubectl contexts |
| `kubectl config set-context <context-name>` | Create a new context or update an existing one |
| `kubectl config delete-context <context-name>` | Delete a kubectl context |
|
