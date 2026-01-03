output "ec2_public_ip" {
  value = aws_instance.single_ec2.public_ip
}
