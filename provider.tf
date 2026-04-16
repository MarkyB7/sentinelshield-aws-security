provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "SentinelShield"
      Environment = var.environment
      ManagedBy   = "Terraform"
      Owner       = "MarkBlas"
      Phase       = "Phase1"
    }
  }
}
