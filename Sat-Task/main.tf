resource "aws_iam_user" "developer" {
  name = "developer-user"
}
resource "aws_iam_group" "developers" {
  name = "developers"
}
resource "aws_iam_policy" "s3_readonly" {
  name = "S3ReadOnlyPolicy123457ttttthhhh"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "s3:GetObject",
          "s3:ListBucket"
        ]

        Resource = "*"
      }
    ]
  })
}

