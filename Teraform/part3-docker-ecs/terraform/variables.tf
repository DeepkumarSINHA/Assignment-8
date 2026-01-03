variable "flask_repo_name" {
  default = "flask-backend"
}

variable "express_repo_name" {
  default = "express-frontend"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_1" {
  default = "10.0.1.0/24"
}

variable "public_subnet_2" {
  default = "10.0.2.0/24"
}
