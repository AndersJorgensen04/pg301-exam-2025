terraform {
    required_version = ">= 1.5"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
    backend "s3" {
        bucket = "pg301-backend-kandidat-39"
        key = "kandidat-39-state.tfstate"
        region = "eu-west-1"
    }
}
provider "aws" {
    region = var.region
}