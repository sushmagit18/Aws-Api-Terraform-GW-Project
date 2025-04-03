variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "data_bucket_name" {
  description = "Name of the S3 bucket for Glue scripts and general services"
  type        = string
  default     = "AWSDataBucket2318"
}

variable "upload_bucket_name" {
  description = "Name of the S3 bucket used exclusively for file uploads"
  type        = string
  default     = "AWSUploadbucket2318"
}

variable "dynamodb_handler_zip" {
  description = "Filename for the dynamodb_handler Lambda zip file"
  type        = string
  default     = "dynamodb_handler.zip"
}

variable "s3_handler_zip" {
  description = "Filename for the s3_handler Lambda zip file"
  type        = string
  default     = "s3_handler.zip"
}

variable "glue_handler_zip" {
  description = "Filename for the glue_handler Lambda zip file"
  type        = string
  default     = "glue_handler.zip"
}

variable "lambda_runtime" {
  description = "Runtime environment for Lambda functions"
  type        = string
  default     = "python3.8"
}

variable "glue_job_name" {
  description = "Name of the AWS Glue job"
  type        = string
  default     = "HelloworldGlueJob"
}

variable "glue_script_location" {
  description = "Relative path in the data bucket for the Glue job script"
  type        = string
  default     = "scripts/glue_script.py"
}

variable "api_name" {
  description = "Name of the API Gateway"
  type        = string
  default     = "API"
}

variable "api_stage" {
  description = "Deployment stage for API Gateway"
  type        = string
  default     = "prod"
}