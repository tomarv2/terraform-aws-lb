module "load_balancer" {
  source = "../"

  account_id       = "123456789012"
  lb_port          = ["80"]
  target_group_arn = ["<target_group_arn>"]
  # ----------------------------------------------
  # Note: Do not change teamid and prjid once set.
  teamid = var.teamid
  prjid  = var.prjid
}
