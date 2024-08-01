resource "aws_iam_instance_profile" "cloud_watch_instance_profile" {
    name=var.instance_profile_name
    role = var.role_name
}