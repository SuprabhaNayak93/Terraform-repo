module "s3_bucket" {
  source = "github.com/terraform-aws-modules/terraform-aws-s3-bucket.git"

  bucket = "my-s3-bucket12wwffmjghfdertyiojjgkk"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}