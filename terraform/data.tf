data "aws_lb" "public" {
  name = "${var.app}-${var.env}-public"
}

data "aws_security_group" "alb" {
  name = "${var.app}-${var.env}-alb-sg"
}

data "aws_acm_certificate" "cert" {
  domain = var.domain_name
}
