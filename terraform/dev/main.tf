terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.80.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
  default_tags {
    tags = {
      Environment = "dev"
      Project = "stupig"
    }
  }
}

module "api" {
  source = "../modules/api"
  environment = "dev"
}