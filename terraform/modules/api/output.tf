output "api_id" {
  value = aws_api_gateway_rest_api.this.id
}

output "api_key" {
  value = aws_api_gateway_api_key.this.value
}