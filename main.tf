# lb
resource "aws_lb" "this" {
  for_each = var.config

  name                             = each.key
  internal                         = try(each.value.internal, "false")
  load_balancer_type               = try(each.value.load_balancer_type, "application")
  subnets                          = try(each.value.subnets, module.global.list_of_subnets[local.account_id][local.region])
  enable_cross_zone_load_balancing = try(each.value.load_balancer_type, "null") == "application" ? false : true
  security_groups                  = try(each.value.load_balancer_type, "application") == "application" ? each.value.security_groups : null
  tags                             = merge(local.shared_tags, var.extra_tags)
}

# listener
resource "aws_lb_listener" "this" {
  for_each = aws_lb.this

  load_balancer_arn = each.value.arn
  port              = lookup(var.config[each.value.name], "port")
  protocol          = try(lookup(var.config[each.value.name], "alb_cert_arn"), null) == null ? "HTTP" : "HTTPS"
  ssl_policy        = lookup(var.config[each.value.name], "alb_ssl_policy", null)
  certificate_arn   = lookup(var.config[each.value.name], "alb_cert_arn", null)

  default_action {
    target_group_arn = lookup(var.config[each.value.name], "target_group_arn", null)
    type             = lookup(var.config[each.value.name], "lb_action_type", "forward")
  }
  tags = merge(local.shared_tags, var.extra_tags)
}
