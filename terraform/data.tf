data "aws_vpc" "vpc" {
  tags = {
    Name = "${var.app}-${var.env}-vpc"
  }
}

data "aws_subnet_ids" "public" {
  vpc_id = data.aws_vpc.vpc.id

  tags = {
    Name = "${var.app}-${var.env}-subnet-public*"
  }
}

data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.vpc.id

  tags = {
    Name = "${var.app}-${var.env}-subnet-private*"
  }
}

data "aws_lb" "public" {
  name = "${var.app}-${var.env}-public"
}

data "aws_iam_server_certificate" "self" {
  name = "${var.app}-${var.env}-alb"
}

data "aws_security_group" "alb" {
  name = "${var.app}-${var.env}-alb-sg"
}
