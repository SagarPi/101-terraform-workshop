terraform {
  required_version = "0.12.16"

  backend "s3" {
    bucket = "training-terraform-sagar"
    region = "us-east-1"
    key = "workshop/terraform/terraform.tfstate"
  }
}
