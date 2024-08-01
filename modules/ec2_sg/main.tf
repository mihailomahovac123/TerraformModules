resource "aws_security_group" "ec2_cw_agent_sg" {
    name = var.sg_name
    vpc_id = var.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [var.cidr]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [var.cidr]
    }
  
}