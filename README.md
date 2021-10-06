# DEPLOY EKS - TERRAFORM, EC2 :space_invader:

Tired of creating clusters manually just to try something out for a few minutes? Then run this.

### Pre-requisites

* Terraform installed
* AWS credentials
* AWS cli installed on a host to connect to the cluster
* kubectl installed on a host to deploy to the cluster

### Deployment Instructions - EKS
* Install Terraform
* Clone this repository
* Run a ```terraform init``` to grab providers and modules
* Run ```aws_configure``` and establish your credentials
* Run a ```terraform_apply``` and wait 10 - 15 minutes
* Run ```aws eks --region us-east-1 update-kubeconfig --name dev-cluster``` to add the context to your kubeconfig
* Profit

### Deployment Instructions - EC2 Instances
* Install Terraform
* Clone this repository
* Edit the variables in ```variables.tf``` to match any unique values you want to apply to your instances
* Edit the public key in ```keypairs.tf``` to match the public key of a keypair you generated somewhere using ```ssh-keygen```
* Run a ```terraform init``` to grab providers and modules
* Run ```aws_configure``` and establish your credentials
* Run a ```terraform_apply``` and wait 10 - 15 minutes
* Profit

### Connecting
* Run ```aws eks --region us-east-1 update-kubeconfig --name dev-cluster``` to add the context to your kubeconfig

### Troubleshooting

#### Pods stuck in Pending
* Possibility of resources not efficient. The instances in the worker group could be too small to assign IP addresses to all the pods

#### Workers not joining the cluster
* Ensure the workers are getting public IP addresses

