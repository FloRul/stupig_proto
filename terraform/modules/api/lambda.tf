locals {
  lambda_name = "stupig-router"
}
module "lambda_router" {
  source        = "git::https://github.com/terraform-aws-modules/terraform-aws-lambda?ref=v7.9.0"
  function_name = "${var.environment}-${local.lambda_name}"
  description   = "Lambda router for the Stupig API."
  handler       = "index.lambda_handler"
  runtime       = "python3.11"
  source_path   = "${path.module}/src"
  timeout       = 60
  layers = [
    "arn:aws:lambda:${data.aws_region.current.name}:017000801446:layer:AWSLambdaPowertoolsPythonV2:79"
  ]
  tracing_mode                 = "Active"
  trigger_on_package_timestamp = false

  environment_variables = {
  }

  create_current_version_allowed_triggers = false
  role_name = "${var.environment}-${local.lambda_name}-role"

  attach_policy_statements = true
  policy_statements = {
    bedrock = {
      effect = "Allow"
      actions = [
        "bedrock:*",
      ]
      resources = [
        "*"
      ]
    },
  }
}
