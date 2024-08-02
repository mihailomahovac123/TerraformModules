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
| [aws_iam_role_policy.cloud_watch_full_access_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_policy_depends_on"></a> [policy\_depends\_on](#input\_policy\_depends\_on) | Additional variable for including extrnal module. | `any` | `[]` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | Policy name for policy | `string` | `"cw_full_access_policy"` | no |
| <a name="input_role_id"></a> [role\_id](#input\_role\_id) | ID of a dependant role. | `any` | <pre>[<br>  "ID of a cloud watch role created."<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of a role created |
