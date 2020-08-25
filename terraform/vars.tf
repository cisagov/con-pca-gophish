variable "env" {
  type = string
}

variable "app" {
  type = string
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "image_repo" {
  type = string
}

variable "image_tag" {
  type = string
}

variable "mysql_instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "mysql_storage" {
  type    = number
  default = 20
}
