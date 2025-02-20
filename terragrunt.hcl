generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"

  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "${get_env(BACKEND_BUCKET_NAME)}"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "${get_env(BACKEND_DYNAMODB_TABLE_NAME)}"
  }
}
EOF
}
