output "public_ip_address" {
  value = aws_instance.ec2_with_cw_agent.public_ip //prosledi output main.tf fajlu kao output
}