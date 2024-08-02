#containing the terraform block, s3 backend definition, provider configurations, and aliases.

variable "terraform_state_file_bucket" {
    description = "Bucket for remote backend."
    type = string
    default = "tfstatemihailo"
}

variable "terraform_remote_state_file" {
    description = "Terraform tfstate file on remote backend."
    type = string
    default = "terraform5.state" 
}

variable "provisioning_region" {
    description = "Region for resource provisioning."
    type = string
    default = "eu-central-1" 
}
