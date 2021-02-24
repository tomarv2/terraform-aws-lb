<p align="center">
    <a href="https://www.apache.org/licenses/LICENSE-2.0" alt="license">
        <img src="https://img.shields.io/github/license/tomarv2/terraform-aws-lb" /></a>
    <a href="https://github.com/tomarv2/terraform-aws-lb/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-aws-lb" /></a>
    <a href="https://github.com/tomarv2/terraform-aws-lb/pulse" alt="Activity">
        <img src="https://img.shields.io/github/commit-activity/m/tomarv2/terraform-aws-lb" /></a>
    <a href="https://stackoverflow.com/users/6679867/tomarv2" alt="Stack Exchange reputation">
        <img src="https://img.shields.io/stackexchange/stackoverflow/r/6679867"></a>
    <a href="https://discord.gg/XH975bzN" alt="chat on Discord">
        <img src="https://img.shields.io/discord/813961944443912223?logo=discord"></a>
    <a href="https://twitter.com/intent/follow?screen_name=varuntomar2019" alt="follow on Twitter">
        <img src="https://img.shields.io/twitter/follow/varuntomar2019?style=social&logo=twitter"></a>
</p>

# AWS Load Balancer

Terraform to create Load Balancer on AWS.

## Versions

- Module tested for Terraform 0.14.
- AWS provider version [3.29.0](https://registry.terraform.io/providers/hashicorp/aws/latest)
- `main` branch: Provider versions not pinned to keep up with Terraform releases
- `tags` releases: Tags are pinned with versions (use latest     
        <a href="https://github.com/tomarv2/terraform-aws-lb/tags" alt="GitHub tag">
        <img src="https://img.shields.io/github/v/tag/tomarv2/terraform-aws-lb" /></a> 
  in your releases)

**NOTE:** 

- Read more on [tfremote](https://github.com/tomarv2/tfremote)

## Usage

Recommended method:

- Create python 3.6+ virtual environment 
```
python3 -m venv <venv name>
```

- Install package:
```
pip install tfremote
```

- Set below environment variables:
```
export TF_AWS_BUCKET=<remote state bucket name>
export TF_AWS_PROFILE=default
export TF_AWS_BUCKET_REGION=us-west-2
export PATH=$PATH:/usr/local/bin/
```  

- Update:
```
example/custom/sample.tfvars
```

- Change to: 
```
example/base
``` 

- Run and verify the output before deploying:
```
tf -cloud aws plan -var-file <path to .tfvars file>
```

- Run below to deploy:
```
tf -cloud aws apply -var-file <path to .tfvars file>
```

- Run below to destroy:
```
tf -cloud aws destroy -var-file <path to .tfvars file>
```

Please refer to example directory [link](example/README.md) for references.


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

