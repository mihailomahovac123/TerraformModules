variable "sg_name" {
  description = "SG name"
  type = string
  default = "ec2_cw_agent_sg"
}

variable "vpc_id" {
  description = "VPC id."
  type = string
  default = "vpc-0769af89e3dff6849"
}

variable "cidr" {
  description = "CIDR block."
  type = string
  default = "0.0.0.0/0"
}

variable "tag" {
    description = "Common tag for all resources."
  type = string
  default = ""
  
}

