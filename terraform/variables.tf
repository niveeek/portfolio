variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "Nombre del key pair"
  default     = "mykey"
}

variable "my_ip" {
  type        = string
  description = "IP para acceso SSH"
}
