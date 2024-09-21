# terraform-project-structure
sample of terraform project structure 


# Terraform Project

This project manages the infrastructure for [ bialrn Project].

## Structure

- **environments/**: Contains environment-specific configurations.
- **modules/**: Contains reusable modules.
- **global/**: Contains global configurations.

## Usage

1. Navigate to the desired environment directory:
   ```sh
   cd environments/dev
   terraform init
   terraform validate
   terraform plan
   terraform apply


Steps to Run Each Environment
1. Navigate to the Environment Directory

Change your current directory to the environment you want to manage (e.g., dev, staging, prod).

cd terraform-project-structure/environments/dev

#
terraform init
terraform validate

#3. Plan the Infrastructure Changes

Generate and show an execution plan. This helps in understanding what changes will be made by Terraform

terraform plan -var-file="terraform.tfvars"

#Apply the Infrastructure Changes

Apply the changes required to reach the desired state of the configuration.

terraform apply -var-file="terraform.tfvars"

#Destroy the Infrastructure (if needed)

terraform destroy -var-file="terraform.tfvars"


# Running the Dev Environment
cd terraform-project/environments/dev
terraform init
terraform validate
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"

# Destroy when done 
terraform destroy -var-file="terraform.tfvars"

Using Terraform Workspaces (Optional)

Terraform workspaces can be used to manage multiple environments in a single directory. This approach allows you to use the same configuration but separate state files for each environment.

cd terraform-project
terraform workspace new dev
terraform workspace new staging
terraform workspace new prod


# Switch to a Workspace
# Switch to the desired workspace before running plan and apply.

terraform workspace select dev
terraform plan -var-file="environments/dev/terraform.tfvars"
terraform apply -var-file="environments/dev/terraform.tfvars"


# Example Commands with Workspaces

cd terraform-project-structure

# For dev environment
terraform workspace select dev
terraform init
terraform plan -var-file="environments/dev/terraform.tfvars"
terraform apply -var-file="environments/dev/terraform.tfvars"

# For staging environment
terraform workspace select staging
terraform plan -var-file="environments/staging/terraform.tfvars"
terraform apply -var-file="environments/staging/terraform.tfvars"

# For prod environment
terraform workspace select prod
terraform plan -var-file="environments/prod/terraform.tfvars"
terraform apply -var-file="environments/prod/terraform.tfvars"




