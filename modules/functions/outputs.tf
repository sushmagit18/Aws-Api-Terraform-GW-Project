output "dynamodb_handler_invoke_arn" {
  description = "Invoke ARN for the dynamodb_handler Lambda function"
  value       = aws_lambda_function.dynamodb_handler.invoke_arn
}

output "s3_handler_invoke_arn" {
  description = "Invoke ARN for the s3_handler Lambda function"
  value       = aws_lambda_function.s3_handler.invoke_arn
}

output "glue_handler_invoke_arn" {
  description = "Invoke ARN for the glue_handler Lambda function"
  value       = aws_lambda_function.glue_handler.invoke_arn
}