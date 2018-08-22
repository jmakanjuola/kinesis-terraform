resource "aws_s3_bucket" "data-demo" {
  bucket = "demo-atrium-${var.stream_name}-event-backup"
  acl    = "private"
}

resource "aws_kinesis_firehose_delivery_stream" "data-demo" {
  name        = "${var.stream_name}-backup"
  # count   = "${var.data-demo}"
  destination = "s3"

  s3_configuration {
    role_arn   = "${aws_iam_role.firehose_role.arn}"
    bucket_arn = "${aws_s3_bucket.data-demo.arn}"
    buffer_size = 5
    buffer_interval = 60

    cloudwatch_logging_options {
      enabled         = "true"
      log_group_name  = "${aws_cloudwatch_log_group.data-demo.name}"
      log_stream_name = "${aws_cloudwatch_log_stream.data-demo.name}"
    }
  }
}
