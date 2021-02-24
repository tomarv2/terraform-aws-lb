# AWS Load Balancer

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_id | aws account id | `any` | n/a | yes |
| alb\_cert\_arn | application load balancer certificate arn | `string` | `""` | no |
| alb\_ssl\_policy | application load balancer ssl policy | `string` | `""` | no |
| aws\_region | The AWS region to create resources | `string` | `"us-west-2"` | no |
| email | email address to be used for tagging (suggestion: use group email address) | `any` | n/a | yes |
| enable\_cross\_zone\_load\_balancing | enable cross zone load balancing used for nlb | `string` | `""` | no |
| healthcheck\_interval | load balancer healthcheck interval | `string` | `""` | no |
| healthcheck\_matcher | load balancer healthcheck matcher | `string` | `""` | no |
| healthcheck\_path | load balancer healthcheck path | `string` | `""` | no |
| healthcheck\_retries | load balancer healthcheck retries | `number` | `2` | no |
| healthcheck\_start\_period | load balancer healthcheck start period | `number` | `120` | no |
| healthcheck\_timeout | load balancer healthcheck timeout | `string` | `""` | no |
| healthy\_threshold | load balancer healthcheck threshold | `string` | `""` | no |
| https\_listeners | A list of maps describing the HTTPS listeners for this ALB. Required key/values: port, certificate\_arn. Optional key/values: ssl\_policy (defaults to ELBSecurityPolicy-2016-08), target\_group\_index (defaults to https\_listeners[count.index]) | `any` | `[]` | no |
| is\_public | load balancer public or private | `string` | `"false"` | no |
| lb\_action\_type | load balancer action type | `string` | `"forward"` | no |
| lb\_port | load balancer port | `list` | <pre>[<br>  80<br>]</pre> | no |
| lb\_protocol | load balancer protocol | `string` | `"HTTP"` | no |
| lb\_type | load balancer type | `string` | `"application"` | no |
| prjid | (Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| profile\_to\_use | Getting values from ~/.aws/credentials | `any` | n/a | yes |
| security\_groups\_to\_use | Security groups to use | `list` | `[]` | no |
| target\_group\_arn | target group arn | `list` | n/a | yes |
| teamid | (Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply' | `any` | n/a | yes |
| unhealthy\_threshold | load balancer unhealthy threshold | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| lb\_arn | arn of the load balancer |
| lb\_id | load balancer id |
| lb\_listener | load balancer listener |
| lb\_type | load balancer type |
| lb\_zoneid | zone id of the load balancer |
