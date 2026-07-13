
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-sssuuuppprrrrrkk"

  tags = {
    Name        = "MyBucketroji"
    Environment = "Dev"
  }
}