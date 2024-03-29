#!/bin/bash

# Run terraform fmt to format Terraform configuration files
echo "Formatting Terraform files..."
terraform fmt -recursive

# Run terraform validate to check Terraform configuration files
echo "Validating Terraform files..."
terraform validate

# Run terraform apply to provision resources from Terraform configuration files
echo "Provisioning Terraform resources..."
terraform apply -var-file=api_gateway_variables.tfvars -var-file=provider_variables.tfvars -auto-approve