terraform {
  required_version = ">= 1.0.1"
  required_providers {
    aws = {
      version = "~> 4.61"
    }
  }
}

provider "aws" {
  region = var.region
}

module "load_balancer" {
  source = "../"

  config = {
    testlb = {
      port             = "80"
      target_group_arn = "1"
    }
    testlb1 = {
      port             = "443"
      target_group_arn = "2"
    }
  }

  # ----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
