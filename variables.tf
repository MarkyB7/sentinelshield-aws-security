variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "sentinelshield"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnet_1_cidr" {
  type    = string
  default = "10.10.1.0/24"
}

variable "public_subnet_2_cidr" {
  type    = string
  default = "10.10.2.0/24"
}

variable "private_subnet_1_cidr" {
  type    = string
  default = "10.10.11.0/24"
}

variable "private_subnet_2_cidr" {
  type    = string
  default = "10.10.12.0/24"
}

variable "frontend_bucket_name_override" {
  description = "Optional override for frontend bucket name"
  type        = string
  default     = null
}

variable "cognito_domain_prefix" {
  description = "Unique Cognito hosted UI domain prefix"
  type        = string
  default     = "sentinelshield-markblas-dev"
}
