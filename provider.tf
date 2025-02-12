terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = "terraformstatefilesaeed112025" # Replace with your S3 bucket name
    key    = "terraform.tfstate"             # State file location within the bucket
    region = "ca-central-1"                  # Use your desired region here
  }
}

provider "aws" {
  region = var.region
}
