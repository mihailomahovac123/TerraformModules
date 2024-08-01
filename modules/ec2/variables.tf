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
  type = any
  default = []
}
variable "depends_on_two" {  
  type = any
  default = []
}


variable "instance_profile_name" {
  type = any
  default = []
}


variable "sg_id" {
  type = any
  default = []
}
