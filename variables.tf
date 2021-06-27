variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "profile_to_use" {
  description = "Getting values from ~/.aws/credentials"
  default     = "default"
  type        = string
}

variable "security_groups_to_use" {
  description = "Security groups to use"
  default     = []
  type        = list(any)
}

variable "aws_region" {
  description = "The AWS region to create resources"
  default     = "us-west-2"
  type        = string
}

variable "account_id" {
  description = "aws account id"
  type        = string
}
/*
variable "healthcheck_path" {
  description = "load balancer healthcheck path"
  default     = ""
  type        = string
}

variable "healthy_threshold" {
  description = "load balancer healthcheck threshold"
  default     = ""
  type        = string
}

variable "unhealthy_threshold" {
  description = "load balancer unhealthy threshold"
  default     = ""
  type        = string
}

variable "healthcheck_timeout" {
  description = "load balancer healthcheck timeout"
  default     = ""
  type        = string
}

variable "healthcheck_interval" {
  description = "load balancer healthcheck interval"
  default     = ""
  type        = string
}

variable "healthcheck_matcher" {
  description = "load balancer healthcheck matcher"
  default     = ""
  type        = string
}

variable "healthcheck_retries" {
  description = "load balancer healthcheck retries"
  default     = 2
  type        = number
}

variable "healthcheck_start_period" {
  description = "load balancer healthcheck start period"
  default     = 120
  type        = number
}
*/
variable "is_public" {
  description = "load balancer public or private"
  default     = "false"
  type        = string
}

variable "lb_type" {
  description = "load balancer type"
  default     = "application"
  type        = string
}

variable "lb_protocol" {
  description = "load balancer protocol"
  default     = "HTTP"
  type        = string
}

variable "lb_port" {
  description = "load balancer port"
  default     = [80]
  type        = list(any)
}

variable "alb_cert_arn" {
  description = "application load balancer certificate arn"
  default     = ""
  type        = string
}

variable "alb_ssl_policy" {
  description = "application load balancer ssl policy"
  default     = ""
  type        = string
}

variable "lb_action_type" {
  description = "load balancer action type"
  default     = "forward"
  type        = string
}

variable "target_group_arn" {
  description = "target group arn"
  type        = list(any)
}
/*
variable "https_listeners" {
  description = "A list of maps describing the HTTPS listeners for this ALB. Required key/values: port, certificate_arn. Optional key/values: ssl_policy (defaults to ELBSecurityPolicy-2016-08), target_group_index (defaults to https_listeners[count.index])"
  type        = any
  default     = []
}

variable "enable_cross_zone_load_balancing" {
  description = "enable cross zone load balancing used for nlb"
  default     = ""
  type        = string
}
*/
