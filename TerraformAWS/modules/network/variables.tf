variable "cidr_block" {
  type        = string
  description = "O bloco CIDR para a VPC"
}

variable "project_name" {
  type        = string
  description = "O nome do projeto para tags dos recursos"
}

variable "tags" {
  type        = map(any)
  description = "Tags para ser adicionado aos recursos da AWS"
}