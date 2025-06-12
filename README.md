# AWS EKS Web App Deployment

This is a Terraform configuration for deploying a simple web app on AWS using EKS.

## Prerequisites

- Terraform 1.0 or later
- AWS account
- kubectl installed and configured

## Deployment Steps

1. Clone the repository:

   ```bash
   git clone https://github.com/moises-herrera/terraform-eks-base
   cd terraform-eks-base
   ```

2. Update the `variables.tf` file with your desired configuration. Also update the container image in the YAML file.

3. Initialize Terraform:

   ```bash
   terraform init
   ```

4. Plan the deployment:

   ```bash
   terraform plan
   ```

5. Apply the deployment:

   ```bash
   terraform apply
   ```
