variable "policy_name" {
  description = "Policy name for policy"
  type = string
  default = ""
}

variable "role_id" {
  type = any
  default = []
}

variable "policy_depends_on" {
  type = any
  default = []
}