output "role_id" {
  value = aws_iam_role.cloud_watch_access_role.id
  description = "ID of a role created"
}

output "role_name" {
  value = aws_iam_role.cloud_watch_access_role.name
  description = "Name of a role created"
}