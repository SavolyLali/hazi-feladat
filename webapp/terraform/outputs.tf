output "public_ip" {
  description = "The public IP address of the EC2 instance."
  value       = aws_instance.web.public_ip
}

output "instance_arn" {
  description = "The ARN of the EC2 instance."
  value       = aws_instance.web.arn
}
