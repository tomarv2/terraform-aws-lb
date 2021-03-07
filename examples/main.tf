module "load_balancer" {
  source                      = "../"

  email                       = "demo@demo.com"
  account_id                  = "123456789012"
  profile_to_use              = "default"
  aws_region                  = "us-west-2"
  lb_port                     = ["22", "80", "443", "5432", "8000"]
  target_group_arn            = "target_group_arn"
  # ------------------------------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid                      = var.teamid
  prjid                       = var.prjid
}

