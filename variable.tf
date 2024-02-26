variable "region" {
  description = "AWS Region where the application will be deployed"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Private key name"
  type        = string
}

variable "security_group" {
  description = "Network configuration to access the machine with ssh"
  type        = string
  default     = "ec2_security_group_hw"
}

variable "ssh_access_cidr" {
  description = "CIDR block for SSH access"
  type        = string
  default     = "0.0.0.0/0"
}

variable "web_access_cidr" {
  description = "CIDR block for web access"
  type        = string
  default     = "0.0.0.0/0"
}

variable "ami_id" {
  description = "Amazon image"
  type        = string
}