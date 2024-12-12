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

data "aws_region" "current" {}

module "api" {
  source = "../modules/api"
  environment = "dev"
}

module "cloudfront" {
  source = "../modules/cloudfront"
  domain_name = var.domain_name
  dev_api_id = module.api.api_id
  region = data.aws_region.current.name
}