variable "lambda_runtime" {
  description = "Runtime environment for Lambda functions"
  type        = string
}

variable "dynamodb_handler_zip" {
  description = "Filename for the dynamodb_handler Lambda zip file"
  type        = string
}

variable "s3_handler_zip" {
  description = "Filename for the s3_handler Lambda zip file"
  type        = string
}

variable "glue_handler_zip" {
  description = "Filename for the glue_handler Lambda zip file"
  type        = string
}

variable "lambda_role_arn" {
  description = "IAM Role ARN for Lambda functions"
  type        = string
}

variable "api_gateway_execute_arn" {
  description = "API Gateway execute ARN (with wildcards) for lambda permissions"
  type        = string
}