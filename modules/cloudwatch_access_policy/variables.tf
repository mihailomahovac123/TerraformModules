variable "policy_name" {
  description = "Policy name for policy"
  type = string
  default = "cw_full_access_policy"
}

variable "role_id" {  //!
  type = any
  default = []
}

variable "policy_depends_on" {
  type = any
  default = []
}