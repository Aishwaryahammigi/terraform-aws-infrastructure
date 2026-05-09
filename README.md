# Automated AWS Infrastructure Provisioning using Terraform

## Overview
This project provisions a complete AWS cloud infrastructure using Terraform (Infrastructure as Code). All resources are created automatically with a single command — no manual clicking in the AWS Console.

## Architecture
- VPC with CIDR block 10.0.0.0/16
- Public Subnet (10.0.1.0/24) with Internet access
- Private Subnet (10.0.2.0/24) for internal resources
- Internet Gateway for public internet access
- Route Table associated with Public Subnet
- Security Group allowing HTTP (80) and SSH (22)
- EC2 Instance (t3.micro) running in Public Subnet
- S3 Bucket for remote Terraform state with versioning

## Tech Stack
- **Terraform** v1.15.2
- **AWS** (VPC, EC2, S3, IAM)
- **Git & GitHub**

## Project Structure

## How to Run

### Prerequisites
- Terraform installed
- AWS CLI configured with IAM user credentials

### Steps
```bash
# Initialize Terraform
terraform init

# Preview infrastructure
terraform plan

# Create infrastructure
terraform apply

# Destroy infrastructure
terraform destroy
```

## Resources Created
| Resource | Name | Purpose |
|---|---|---|
| VPC | terraform-vpc | Private network on AWS |
| Public Subnet | public-subnet | Hosts web server |
| Private Subnet | private-subnet | Isolated internal network |
| Internet Gateway | terraform-igw | Internet access for VPC |
| Security Group | web-security-group | Firewall rules |
| EC2 Instance | terraform-web-server | Web server |
| S3 Bucket | terraform-state-aishwarya-2026 | Remote Terraform state |