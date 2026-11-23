terraform {
  backend "s3" {
    bucket       = "cloudforge-terraform-timzy-2026"
    key          = "cloudforge/dev/terraform.tfstate"
    region       = "eu-west-1"
    encrypt      = true
    use_lockfile = true
  }
}
