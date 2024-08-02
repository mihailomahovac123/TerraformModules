variable "policy_name" {
  description = "Policy name for policy"
  type = string
  default = "cw_full_access_policy"
}

variable "role_id" {  //!
description = "ID of a dependant role."
  type = any
  default = ["ID of a cloud watch role created."]
}

variable "policy_depends_on" {
  description = "Additional variable for including extrnal module."
  type = any
  default = []
}


