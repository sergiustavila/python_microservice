terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "python-microservice"
    key     = "terraform.tfstate"
    region  = "eu-central-1"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

output "private_key" {
  value     = module.key_pair.private_key
  sensitive = true
}

module "security_group" {
  source = "./tf-modules/security-group"

  ssh_access_cidr = var.ssh_access_cidr
  web_access_cidr = var.web_access_cidr
  security_group  = var.security_group
}

module "key_pair" {
  source = "./tf-modules/key-pair"

  key_name = var.key_name
}

module "ec2_instance" {
  source = "./tf-modules/ec2"

  instance_type      = var.instance_type
  ami_id             = var.ami_id
  key_name           = module.key_pair.key_name
  security_group_ids = [module.security_group.sg_id]
}