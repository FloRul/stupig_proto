variable "domain_name" {
  type = string
  nullable = false
}

variable "dev_api_id" {
  description = "Id name for dev API"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}