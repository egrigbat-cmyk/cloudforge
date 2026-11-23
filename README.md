# Cloudforge

## AWS Infrastructure Automation with Terraform and GitHub Actions

Cloudforge is an Infrastructure as Code project that provisions and manages AWS infrastructure using Terraform, with automated CI checks through GitHub Actions.

Infrastructure

* Custom AWS VPC (10.0.0.0/16)
* Two public and two private subnets across two Availability Zones
* Internet Gateway and route tables
* EC2 instance running Amazon Linux 2023 and Nginx
* IAM role with AWS Systems Manager permissions
* S3 remote Terraform state with versioning, encryption, and native locking

## Tech Stack

AWS · Terraform · Linux · Nginx · Git · GitHub Actions · TFLint

## CI Pipeline

GitHub Actions automatically runs:

* Terraform formatting
* Terraform initialization
* Terraform validation
* TFLint

Deployment

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply

To remove the infrastructure:

terraform destroy

## Security & Cost

* No SSH ingress configured.
* EC2 uses an IAM instance profile.
* Terraform state is stored remotely in S3.
* NAT Gateway omitted to reduce development costs.
* Local state and sensitive variable files excluded from Git.

## Project Objective

Demonstrate practical AWS infrastructure provisioning, Terraform automation, cloud networking, IAM, remote state management, and CI workflows.

Cloudforge Building cloud infrastructure through automation.
