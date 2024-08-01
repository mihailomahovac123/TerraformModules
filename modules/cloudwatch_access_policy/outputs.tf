output "role_name" {
  value = aws_iam_role_policy.cloud_watch_full_access_policy.name
  description = "Name of a role created"
}