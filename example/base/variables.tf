variable "email" {
  description = "email address to be used for tagging (suggestion: use group email address)"
}

variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "profile_to_use" {
  description = "Getting values from ~/.aws/credentials"
}

variable "security_groups_to_use" {
  description = "Security groups to use"
  default = []
}

variable "aws_region" {
  description = "The AWS region to create resources"
  default     = "us-west-2"
}

variable "account_id" {
  description = "aws account id"
}

variable "healthcheck_path" {
  description = "load balancer healthcheck path"
  default     = ""
}

variable "healthy_threshold" {
  description = "load balancer healthcheck threshold"
  default     = ""
}

variable "unhealthy_threshold" {
  description = "load balancer unhealthy threshold"
  default     = ""
}

variable "healthcheck_timeout" {
  description = "load balancer healthcheck timeout"
  default     = ""
}

variable "healthcheck_interval" {
  description = "load balancer healthcheck interval"
  default     = ""
}

variable "healthcheck_matcher" {
  description = "load balancer healthcheck matcher"
  default     = ""
}

variable "healthcheck_retries" {
  description = "load balancer healthcheck retries"
  default = 2
}

variable "healthcheck_start_period" {
  description = "load balancer healthcheck start period"
  default = 120
}

variable "is_public" {
  description = "load balancer public or private"
  default     = "false"
}

variable "lb_type" {
  description = "load balancer type"
  default     = "application"
}

variable "lb_protocol" {
  description = "load balancer protocol"
  default     = "HTTP"
}

variable "lb_port" {
  description = "load balancer port"
  default = [80]
}

variable "alb_cert_arn" {
  description = "application load balancer certificate arn"
    default     = ""
}

variable "alb_ssl_policy" {
  description = "application load balancer ssl policy"
  default     = ""
}

variable "lb_action_type" {
  description = "load balancer action type"
  default     = "forward"
}

variable "target_group_arn" {
  description = "target group arn"
  type = list
}

variable "https_listeners" {
  description = "A list of maps describing the HTTPS listeners for this ALB. Required key/values: port, certificate_arn. Optional key/values: ssl_policy (defaults to ELBSecurityPolicy-2016-08), target_group_index (defaults to https_listeners[count.index])"
  type        = any
  default     = []
}

variable "enable_cross_zone_load_balancing" {
  description = "enable cross zone load balancing used for nlb"
  default = ""
}
