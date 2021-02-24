module "global" {
  source = "git::git@github.com:tomarv2/terraform-global.git//aws?ref=0.0.1"
}

locals {
  shared_tags  = map(
      "Name", "${var.teamid}-${var.prjid}",
      "Owner", var.email,
      "Team", var.teamid,
      "Project", var.prjid
  )
}
