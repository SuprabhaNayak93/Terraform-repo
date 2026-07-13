terraform {
  backend "s3" {
    bucket = "terraformbuckets3supppbbbnayak"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
