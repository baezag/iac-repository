# Configure the AWS provider
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.region

  assume_role {
    role_arn = var.workspace_role
    session_name = "AssumeRole"
  }

  default_tags {
    tags = {
      Demo = var.demo
      Env = var.envr
    }
  }
}

# Variables
variable "region" {
  type        = string
  description = "AWS Region"
}

variable "envr" {
  type        = string
  description = "ENVR Tag"
}

variable "demo" {
  type        = string
  description = "Demo Tag"
}

variable "workspace_role" {
  type        = string
  description = "AWS Account Role"
}
