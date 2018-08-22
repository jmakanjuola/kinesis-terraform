variable "name" {
  default = "data-demo"
}

variable "stream_name" {
  default = "data-demo"
}

variable "create_api_gateway" {
  default = false
}

variable "shard_count" {
  default = "2"
}

variable "retention_period" {
  default = "48"
}

variable "environment_name" {
  default = "development"
}

variable "application_name" {
  default = "data-demo"
}


variable "firehose_count"    {
 default = 2
}
variable "log_group_name"    {
  default = "data-demo"
}
variable "log_stream_name"   {
  default = "data-demo"
}

variable "aws_region" {
  default     = "us-west-2"
  description = "Region"
}

 variable "lambda_s3_key" {
  default = "data-demo-test"
}
