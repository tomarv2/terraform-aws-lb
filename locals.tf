locals {
  #security_group = var.security_groups_to_use != null ? flatten([var.security_groups_to_use]) : flatten([var.security_groups_to_use])
  tg_name = tolist(var.target_group_arn)
}
