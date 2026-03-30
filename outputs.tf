output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_instance_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.public_instance.public_ip
}

output "private_instance_id" {
  description = "Private instance ID (only if deploy_private_instance = true)"
value       = var.deploy_private_instance ? aws_instance.private_instance[0].id : "not deployed"
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = [aws_subnet.public_1.id, aws_subnet.public_2.id]
}

output "environment" {
  description = "Deployed environment name"
  value       = var.environment
}
