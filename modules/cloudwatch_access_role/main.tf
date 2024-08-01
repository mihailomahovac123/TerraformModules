resource "aws_iam_role" "cloud_watch_access_role" {
  name = var.role_name 
  assume_role_policy = jsonencode(


    {
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sts:AssumeRole"
            ],
            "Principal": {
                "Service": [
                    "${var.resource_name}.amazonaws.com"
                ]
            }
        }
    ]
}
)
}


