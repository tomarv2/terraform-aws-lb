output "arn" {
  description = "ARN of the Load balancer"
  value       = [for lb in aws_lb.this : lb.arn]
}
#
#output "lb_id" {
#  description = "load balancer id"
#  value       = [for lb in aws_lb.this : lb.id]
#}
#
#output "lb_zone_id" {
#  description = "Load balancer zone id"
#  value       = [for lb in aws_lb.this : lb.zone_id]
#}
#
#output "lb_dns_name" {
#  description = "Load balancer DNS name"
#  value       = [for lb in aws_lb.this : lb.dns_name]
#}
#
#output "lb_listener_arn" {
#  description = "Load balancer listener arn"
#  value       = [for listener in aws_lb_listener.this : listener.arn]
#}
#
#output "lb_listener_id" {
#  description = "Load balancer listener id"
#  value       = [for listener in aws_lb_listener.this : listener.id]
#}
#
##output "target_group_arn" {
##  value = [for target_group in module.target_group : target_group.arn]
##}