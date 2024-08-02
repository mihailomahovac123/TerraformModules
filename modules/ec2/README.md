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

| Name | Description |
|------|-------------|
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | n/a |
