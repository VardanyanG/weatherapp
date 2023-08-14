variable "vpc_name" {
  type    = string
  default = "dev-vpc"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "snet_public_cidr_1" {
  type    = string
  default = "10.0.1.0/24"
}
variable "snet_public_cidr_2" {
  type    = string
  default = "10.0.2.0/24"
}

variable "snet_private_cidr_1" {
  type    = string
  default = "10.0.3.0/24"
}
variable "snet_private_cidr_2" {
  type    = string
  default = "10.0.4.0/24"
}


variable "availability_zone" {
  type    = string
  default = "us-east-1a"

}

variable "aws_security_group" {
  type    = string
  default = "dev-sg"
}

variable "aws_ecr_repository" {
  type    = string
  default = "dev-ecr"
}

variable "dev_nat_gw_1" {
  type    = string
  default = "Dev-NAT-GW-1"
}
variable "dev_nat_gw_2" {
  type    = string
  default = "Dev-NAT-GW-2"
}

variable "dev_eip_1" {
  type    = string
  default = "Dev-eip_1"
}

variable "dev_eip_2" {
  type    = string
  default = "Dev-eip_2"
}