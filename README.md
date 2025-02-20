# Terragrunt Run-All S3 Backend Test

This repository is designed to test `terragrunt run-all` with an **S3 backend** across multiple environments and modules.

## 📁 Project Structure
├── modules/
│   ├── unit1/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── unit2/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   ├── unit3/
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
├── envs/
│   ├── dev/
│   │   ├── unit1/
│   │   │   ├── terragrunt.hcl
│   │   ├── unit2/
│   │   │   ├── terragrunt.hcl
│   │   ├── unit3/
│   │       ├── terragrunt.hcl
│   ├── prod/
│       ├── unit1/
│       │   ├── terragrunt.hcl
│       ├── unit2/
│           ├── terragrunt.hcl
├── terragrunt.hcl

- **`modules/`** – Contains reusable Terraform modules.
- **`envs/dev/` & `envs/prod/`** – Environment-specific configurations with `terragrunt.hcl`.
- **`terragrunt.hcl` (root)** – dynamically generates the S3 backend configuration (`backend.tf`) using `BACKEND_BUCKET_NAME` and `BACKEND_DYNAMODB_TABLE_NAME` shell variables.

## 🛠 Requirements
 - Terraform & Terragrunt installed
 - AWS credentials configured
 - S3 bucket & DynamoDB table exist