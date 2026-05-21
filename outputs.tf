output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "ec2_public_ip" {
  description = "Public IP of the web server"
  value       = aws_instance.web.public_ip
}

output "alb_dns_name" {
  description = "Load Balancer URL"
  value       = aws_lb.web_alb.dns_name
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.web_sg.id
}

output "elastic_ip" {
  description = "Static Elastic IP of web server"
  value       = aws_eip.web.public_ip
}