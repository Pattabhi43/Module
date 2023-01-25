
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 3.74.2"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZJMM3CBGS2PKFFGD"
  secret_key = "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"
}

module "vpc" {
  source     = "./modules/vpc-04"
  cidr_block = var.cidr_block
  sub-01     = var.sub-01
}

module "sec-group" {
  source = "./modules/sec-group"
  vpc_id = module.vpc.vpc-04
}
module "iam" {
  source = "./modules/iam-01"
}

module "ec2" {
  source        = "./modules/ec2-03"
  ami           = var.ami
  instance_type = var.instance_type
  sg02          = module.sec-group.sg02
  sub-01        = module.vpc.sub-01
}