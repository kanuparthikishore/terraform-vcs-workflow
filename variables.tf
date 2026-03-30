variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment: dev, test, or prod"
  type        = string
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "environment must be one of: dev, test, prod."
  }
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"   # t3 is current-gen; t2.micro is legacy
}

variable "key_name" {
  description = "Name of the EC2 key pair for SSH access"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed for SSH. Use 0.0.0.0/0 only for dev."
  type        = string
  default     = "10.0.0.0/16"   # Restrict in production!
}

variable "deploy_private_instance" {
  description = "Whether to deploy an EC2 instance in the private subnet"
  type        = bool
  default     = false
}
