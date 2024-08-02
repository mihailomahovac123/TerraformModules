#output of successfull apply

output "instance_ip_address" {
  value = module.ec2.public_ip_address //primljeno iz ec2 modula output
}