output "lb_arn" {
  description = "arn of the load balancer"
  value = module.load_balancer.*.lb_arn
}

output "lb_type" {
  description = "load balancer type"
  value = module.load_balancer.*.lb_type
}

output "lb_id" {
  description = "load balancer id"
  value = module.load_balancer.*.lb_id
}

output "lb_listener" {
  description = "load balancer listener"
  value = module.load_balancer.*.lb_listener
}

output "lb_zoneid" {
  description = "zone id of the load balancer"
  value = module.load_balancer.*.lb_zoneid
}