module "load_balancer" {
  source                      = "../.."

  email                       = var.email
  teamid                      = var.teamid
  prjid                       = var.prjid
  account_id                  = var.account_id
  profile_to_use              = var.profile_to_use
  aws_region                  = var.aws_region
  lb_port                     = var.lb_port
  target_group_arn            = var.target_group_arn
  security_groups_to_use      = var.security_groups_to_use
  lb_type                     = var.lb_type
  lb_protocol                 = var.lb_protocol
  alb_cert_arn                = var.alb_cert_arn
  alb_ssl_policy              = var.alb_ssl_policy
}

