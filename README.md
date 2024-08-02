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

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_provisioning_region"></a> [provisioning\_region](#input\_provisioning\_region) | Region for resource provisioning. | `string` | `"eu-central-1"` | no |
| <a name="input_terraform_remote_state_file"></a> [terraform\_remote\_state\_file](#input\_terraform\_remote\_state\_file) | Terraform tfstate file on remote backend. | `string` | `"terraform5.state"` | no |
| <a name="input_terraform_state_file_bucket"></a> [terraform\_state\_file\_bucket](#input\_terraform\_state\_file\_bucket) | Bucket for remote backend. | `string` | `"tfstatemihailo"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ip_address"></a> [instance\_ip\_address](#output\_instance\_ip\_address) | n/a |
