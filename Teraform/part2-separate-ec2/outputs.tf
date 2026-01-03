output "flask_public_ip" {
  value = aws_instance.flask_ec2.public_ip
}

output "express_public_ip" {
  value = aws_instance.express_ec2.public_ip
}

