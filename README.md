Project: Flask & Express Deployment using AWS and Terraform

This project demonstrates deploying a Flask backend and an Express frontend using AWS and Terraform in three different ways:

Single EC2 Instance

Flask (port 5000) and Express (port 3000) run on one EC2

Installed and started automatically using Terraform user_data

Separate EC2 Instances

Flask runs on one EC2

Express runs on another EC2

Separate security groups and automated setup

Docker + ECR + ECS + ALB (Production Setup)

Flask and Express are Dockerized

Images stored in AWS ECR

Containers run on ECS Fargate

Application Load Balancer routes traffic

/ → Flask

/express → Express
