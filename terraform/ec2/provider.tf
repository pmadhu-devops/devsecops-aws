terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }

    # backend "s3" {
    #     bucket = "2026-poc-state"
    #     key    = "remote-poc-state"
    #     region = "us-east-1"
    # }

}

provider "aws" {
    region = "us-east-1"
}