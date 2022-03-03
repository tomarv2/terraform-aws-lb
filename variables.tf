variable "teamid" {
  description = "Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "security_groups" {
  description = "Security groups to use"
  default     = []
  type        = list(any)
}

variable "aws_region" {
  description = "The AWS region to create resources"
  default     = null
  type        = string
}

variable "account_id" {
  description = "The AWS account to create resources"
  default     = null
  type        = string
}

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

variable "deploy_lb" {
  description = "feature flag, true or false"
  default     = true
  type        = bool
}
