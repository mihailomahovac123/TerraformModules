
variable "role_name" { #zavisi od role name kojeg cemo da ucitamo  u main
  type = any
  default = []
}

variable "instnace_profile_depends_on" { #zavisi od modula role
  type = any
  default = []
}

variable "instance_profile_name" {
  description = "Instance profile name." 
  type = string
  default = ""
}