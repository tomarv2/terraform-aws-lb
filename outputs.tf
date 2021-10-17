output "lb_arn" {
  description = "load balancer arn"
  value       = aws_lb.lb.*.arn
}

output "lb_type" {
  description = "load balancer type"
  value       = aws_lb.lb.*.load_balancer_type
}

output "lb_id" {
  description = "load balancer id"
  value       = aws_lb.lb.*.id
}

output "lb_listener" {
  description = "load balancer listener"
  value       = aws_lb_listener.listener
}

output "lb_zoneid" {
  description = "load balancer zone id"
  value       = aws_lb.lb.*.zone_id
}

output "lb_dns_name" {
  description = "load balancer dns name"
  value       = join(", ", aws_lb.lb.*.dns_name)
}
