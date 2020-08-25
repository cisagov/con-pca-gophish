data "aws_lb" "public" {
  name = "${var.app}-${var.env}-public"
}

data "aws_iam_server_certificate" "self" {
  name = "${var.app}-${var.env}-alb"
}

data "aws_security_group" "alb" {
  name = "${var.app}-${var.env}-alb-sg"
}
