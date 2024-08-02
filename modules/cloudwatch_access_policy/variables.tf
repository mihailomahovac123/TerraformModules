variable "policy_name" {
  description = "Policy name for policy"
  type = string
  default = "cw_full_access_policy"
}

variable "role_id" {  //!
  type = any
  default = ["ID of a cloud watch role created."]
}

variable "policy_depends_on" {
  type = any
  default = []
}


