variable "sg_name" {
  description = "SG name"
  type = string
  default = ""
}

variable "vpc_id" {
  description = "VPC id."
  type = string
  default = "vpc-0769af89e3dff6849"
}

variable "cidr" {
  description = "CIDR block."
  type = string
  default = ""
}

