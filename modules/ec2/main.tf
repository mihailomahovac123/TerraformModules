resource "aws_instance" "ec2_with_cw_agent" {
  ami=var.ami
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  associate_public_ip_address = true
  key_name = var.key_name

  iam_instance_profile = var.instance_profile_name //podesi output
  security_groups = [var.sg_id] //podesi output

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y 
              sudo yum install -y awslogs
              EOF


tags = {
    Name=var.tag
}



}