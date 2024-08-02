## Requirements

No requirements.

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
| <a name="input_cidr"></a> [cidr](#input\_cidr) | CIDR block. | `string` | `"0.0.0.0/0"` | no |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | SG name | `string` | `"ec2_cw_agent_sg"` | no |
| <a name="input_tag"></a> [tag](#input\_tag) | n/a | `string` | `""` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id. | `string` | `"vpc-0769af89e3dff6849"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | n/a |
