output "flask_ecr_url" {
  value = aws_ecr_repository.flask_repo.repository_url
}

output "express_ecr_url" {
  value = aws_ecr_repository.express_repo.repository_url
}
output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}
