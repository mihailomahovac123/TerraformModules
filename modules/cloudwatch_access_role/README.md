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
| [aws_iam_role.cloud_watch_access_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_name"></a> [resource\_name](#input\_resource\_name) | Name of the resource that the role will be attached to | `string` | `"ec2"` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of the role | `string` | `"CloudWatchAccessForEC2Instance"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_id"></a> [role\_id](#output\_role\_id) | ID of a role created |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of a role created |
