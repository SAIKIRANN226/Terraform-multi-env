terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    # bucket = "daws76s-remote-state"
    # key    = "foreach"
    # region = "us-east-1"
    # dynamodb_table = "daws76s-locking"
  }
}

# the above 10-13 lines are commented because terraform will understand that devops engineers are using s3 bucket so we need to keep empty block however actual keys are in dev/prod backend.tf

provider "aws" {
  region = "us-east-1"
}