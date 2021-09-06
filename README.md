# DEPLOY EKS - TERRAFORM

Tired of creating clusters manually just to try something out for a few minutes? Then run this.

### Pre-requisites

* Terraform installed
* AWS credentials
* AWS cli installed on a host to connect to the cluster
* kubectl installed on a host to deploy to the cluster

### Deployment Instructions
* Install Terraform
* Clone this repository
* Run a ```terraform init``` to grab providers and modules
* Run ```aws_configure``` and establish your credentials
* Run a ```terraform_apply``` and wait 10 - 15 minutes
* Profit

### Connecting
* Run ```aws eks --region us-east-1 update-kubeconfig --name dev-cluster``` to add the context to your kubeconfig

