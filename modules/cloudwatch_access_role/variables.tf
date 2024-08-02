variable "role_name" {
  description = "Name of the role"
  type = string
  default = "CloudWatchAccessForEC2Instance"
}

variable "resource_name" {
  description = "Name of the resource that the role will be attached to"
  type = string
    default = "ec2"
}

