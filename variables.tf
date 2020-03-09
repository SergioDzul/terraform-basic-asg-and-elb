variable "aws_region" {
    type = string
    default = "aws-east-1"
}

variable "aws_profile" {
    type = string
}

variable "project_name" {
    type = string
}

variable "vpc_id" {
    type = string
}

variable "ami_id" {
    type = string
}

variable "instance_type" {
    type = string
}

variable "public_ssh_key" {
    type = string
}
