resource "aws_cloudwatch_log_group" "data-demo" {
  name = "${var.stream_name}"

  tags {
    Environment = "${var.environment_name}"
    Application = "${var.application_name}"
  }
}

resource "aws_cloudwatch_log_stream" "data-demo" {
  name           = "S3Delivery"
  log_group_name = "${aws_cloudwatch_log_group.data-demo.name}"
}
