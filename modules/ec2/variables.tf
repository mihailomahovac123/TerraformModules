variable "ami" {
  description = "AMI."
  type = string
  default = "ami-0dd35f81b9eeeddb1"
}

variable "subnet_id" {
  description = "ID of subnet."
  type = string
  default = "subnet-0c988bbc1a2d11109"
}


variable "instance_type" {
  description = "Instance type."
  type = string
  default = "t2.micro"
}

variable "key_name" {
  description = "Key name."
  type = string
  default = "first_key"
}

variable "depends_on_one" {  
  description = "Additional variable for including extrnal module."
  type = any
  default = []
}
variable "depends_on_two" {
  description = "Additional variable for including extrnal module."  
  type = any
  default = []
}


variable "instance_profile_name" {
  description = "Name of instance profile."
  type = any
  default = ["Name of instance profile."]
}


variable "sg_id" {
  type = any
  default = ["ID of security group."]
}

variable "tag" {
  type = string
  default = ""
  
}
