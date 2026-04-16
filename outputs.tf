output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
}

output "private_subnets" {
  value = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]
}

output "cloudtrail_bucket" {
  value = aws_s3_bucket.cloudtrail_logs.bucket
}

output "config_bucket" {
  value = aws_s3_bucket.config_logs.bucket
}

output "guardduty_detector_id" {
  value = aws_guardduty_detector.main.id
}

output "securityhub_account_id" {
  value = aws_securityhub_account.main.id
}

output "frontend_bucket_name" {
  value = aws_s3_bucket.frontend.bucket
}

output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.frontend.domain_name
}

output "cognito_user_pool_id" {
  value = aws_cognito_user_pool.main.id
}

output "cognito_app_client_id" {
  value = aws_cognito_user_pool_client.frontend.id
}

output "cognito_domain" {
  value = aws_cognito_user_pool_domain.main.domain
}

output "http_api_url" {
  value = aws_apigatewayv2_api.main.api_endpoint
}
