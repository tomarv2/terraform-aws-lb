locals {
  security_group = var.security_groups_to_use != null ? flatten([var.security_groups_to_use]) : flatten([var.security_groups_to_use])
  tg_name        = tolist(var.target_group_arn)
}

# lb
resource "aws_lb" "lb" {
  count = length(var.lb_port)

  name                             = "${var.teamid}-${var.prjid}-${element(var.lb_port, count.index)}"
  internal                         = var.is_public
  load_balancer_type               = var.lb_type
  subnets                          = module.global.list_of_subnets[var.account_id][var.aws_region]
  enable_cross_zone_load_balancing = var.lb_type == "application" ? false : true
  security_groups                  = var.lb_type == "application" ? flatten([var.security_groups_to_use]) : null
  tags                             = merge(local.shared_tags)
}

# listener
resource "aws_lb_listener" "listener" {
  count = length(var.lb_port)

  load_balancer_arn = element(aws_lb.lb.*.id, count.index)
  port              = element(var.lb_port, count.index)
  protocol          = var.lb_protocol # #var.alb_cert_arn == "" ? "HTTP" : "HTTPS"
  ssl_policy        = var.alb_ssl_policy == "" ? "" : var.alb_ssl_policy
  certificate_arn   = var.alb_cert_arn == "" ? "" : var.alb_cert_arn

  default_action {
    target_group_arn = element(local.tg_name, count.index)
    type             = var.lb_action_type
  }
}
