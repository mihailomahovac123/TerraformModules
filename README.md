## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.60.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cwpolicy"></a> [cwpolicy](#module\_cwpolicy) | ./modules/cloudwatch_access_policy | n/a |
| <a name="module_cwrole"></a> [cwrole](#module\_cwrole) | ./modules/cloudwatch_access_role | n/a |
| <a name="module_ec2"></a> [ec2](#module\_ec2) | ./modules/ec2 | n/a |
| <a name="module_inst_profile"></a> [inst\_profile](#module\_inst\_profile) | ./modules/instance_profile | n/a |
| <a name="module_sg_for_ec2"></a> [sg\_for\_ec2](#module\_sg\_for\_ec2) | ./modules/ec2_sg | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
## Requirements

No requirements.

## CloudWatch Access Policy Module


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role_policy.cloud_watch_full_access_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_policy_depends_on"></a> [policy\_depends\_on](#input\_policy\_depends\_on) | n/a | `any` | `[]` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | Policy name for policy | `string` | `""` | no |
| <a name="input_role_id"></a> [role\_id](#input\_role\_id) | n/a | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of a role created |
## Requirements

No requirements.


## CloudWatch Access Role Module



## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.cloud_watch_access_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_name"></a> [resource\_name](#input\_resource\_name) | Name of the resource that the role will be attached to | `string` | `""` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of the role | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | ID of a role created |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of a role created |
## Requirements

No requirements.


## Instance Profile Module



## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.cloud_watch_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | Instance profile name. | `string` | `""` | no |
| <a name="input_instnace_profile_depends_on"></a> [instnace\_profile\_depends\_on](#input\_instnace\_profile\_depends\_on) | n/a | `any` | `[]` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | n/a | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_inst_profile_name"></a> [inst\_profile\_name](#output\_inst\_profile\_name) | n/a |
## Requirements

No requirements.


## Module for EC2 Security group



## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.ec2_cw_agent_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr"></a> [cidr](#input\_cidr) | CIDR block. | `string` | `""` | no |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | SG name | `string` | `""` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id. | `string` | `"vpc-0769af89e3dff6849"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | n/a |
## Requirements

No requirements.


## CloudWatch EC2 Module


## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2_with_cw_agent](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI. | `string` | `"ami-0dd35f81b9eeeddb1"` | no |
| <a name="input_depends_on_one"></a> [depends\_on\_one](#input\_depends\_on\_one) | n/a | `any` | `[]` | no |
| <a name="input_depends_on_two"></a> [depends\_on\_two](#input\_depends\_on\_two) | n/a | `any` | `[]` | no |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | n/a | `any` | `[]` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type. | `string` | `"t2.micro"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key name. | `string` | `"first_key"` | no |
| <a name="input_sg_id"></a> [sg\_id](#input\_sg\_id) | n/a | `any` | `[]` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | ID of subnet. | `string` | `"subnet-0c988bbc1a2d11109"` | no |

## Outputs

No outputs.
