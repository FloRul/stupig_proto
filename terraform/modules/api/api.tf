locals {
  api_name = "stupig"
}

data "aws_region" "current" {}

resource "aws_api_gateway_rest_api" "this" {
  name        = "${var.environment}-${local.api_name}"
  description = "API for Stupig, to generate random projects and events with LLMs"
  body = templatefile("${path.module}/api.yaml", {
    lambda_invoke_arn = module.lambda_router.lambda_function_arn
    aws_region        = data.aws_region.current.name
  })

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Create an API Key
resource "aws_api_gateway_api_key" "this" {
  name = "${var.environment}-${local.api_name}-api-key"
}

# Create a usage plan
resource "aws_api_gateway_usage_plan" "this" {
  name        = "${var.environment}-${local.api_name}-usage-plan"
  description = "Usage plan for ${local.api_name} API"

  api_stages {
    api_id = aws_api_gateway_rest_api.this.id
    stage  = aws_api_gateway_deployment.this.stage_name
  }

  # Optional: Add quota and throttling settings
  quota_settings {
    limit  = 1000 # Number of requests per day
    period = "DAY"
  }

  throttle_settings {
    burst_limit = 5   # Maximum number of concurrent requests
    rate_limit  = 10  # Requests per second
  }
}

# Link the usage plan to the API key
resource "aws_api_gateway_usage_plan_key" "this" {
  key_id        = aws_api_gateway_api_key.this.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.this.id
}

# Create a deployment
resource "aws_api_gateway_deployment" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [aws_api_gateway_rest_api.this]
}

# Create a stage
resource "aws_api_gateway_stage" "this" {
  deployment_id = aws_api_gateway_deployment.this.id
  rest_api_id   = aws_api_gateway_rest_api.this.id
  stage_name    = var.environment
}

resource "aws_lambda_permission" "this" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = module.lambda_router.lambda_function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.this.execution_arn}/*/*"
}