resource "aws_lambda_function" "dynamodb_handler" {
  function_name    = "DynamoDBHandler"
  runtime          = var.lambda_runtime
  role             = var.lambda_role_arn
  handler          = "dynamodb_handler.lambda_handler"
  filename         = var.dynamodb_handler_zip
  source_code_hash = filebase64sha256(var.dynamodb_handler_zip)
}

resource "aws_lambda_function" "s3_handler" {
  function_name    = "S3Handler"
  runtime          = var.lambda_runtime
  role             = var.lambda_role_arn
  handler          = "s3_handler.lambda_handler"
  filename         = var.s3_handler_zip
  source_code_hash = filebase64sha256(var.s3_handler_zip)
  publish          = true
}

resource "aws_lambda_function" "glue_handler" {
  function_name    = "GlueHandler"
  runtime          = var.lambda_runtime
  role             = var.lambda_role_arn
  handler          = "glue_handler.lambda_handler"
  filename         = var.glue_handler_zip
  source_code_hash = filebase64sha256(var.glue_handler_zip)  # Add this line
}

resource "aws_lambda_permission" "apigw_lambda" {
  statement_id  = "AllowAPIGatewayInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.dynamodb_handler.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = var.api_gateway_execute_arn
}

resource "aws_lambda_permission" "apigw_lambda_glue" {
  statement_id  = "AllowAPIGatewayInvokeGlue"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.glue_handler.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = var.api_gateway_execute_arn
}

resource "aws_lambda_permission" "apigw_lambda_s3" {
  statement_id  = "AllowAPIGatewayInvokeS3"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.s3_handler.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = var.api_gateway_execute_arn
}