# Alpheya AKS IaC Project

## Project Overview
This project automates Azure infrastructure deployment using Terraform for AKS. It includes reusable modules, CI/CD with GitHub Actions, and secure authentication.

## Directory Structure
- modules/aks: Reusable Terraform module for Azure AKS
- envs/dev: Environment-specific configuration for dev
- envs/prod: Environment-specific configuration for prod
- .github/workflows: CI/CD pipeline

## Setup Instructions
1. Initialize backend using `backend.tfvars`
2. Navigate to `envs/dev` or `envs/prod` and run:
   - `terraform init -backend-config=../backend.tfvars`
   - `terraform plan`
   - `terraform apply`

## Secure Authentication Setup
Use GitHub OIDC to avoid static secrets.

## GitHub Actions CI/CD Workflow
The workflow:
- Runs `terraform validate` and `terraform plan` on PRs
- Runs `terraform plan` on merge to main
- Requires manual approval for `terraform apply`
- Supports dev and prod environments

## Best Practices Followed
1. Remote state management
2. Modular Terraform code
3. Environment separation
4. Manual approval in CI/CD
5. No static secrets

## Assumptions
AKS cluster is deployed in eastus. Secure authentication uses OIDC.
