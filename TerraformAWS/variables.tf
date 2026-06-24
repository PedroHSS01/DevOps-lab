variable "cidr_block" {
  type        = string
  description = "O bloco CIDR para a VPC"
}

variable "project_name" {
  type        = string
  description = "O nome do projeto para tags dos recursos"
}

variable "region" {
  type        = string
  description = "A região AWS para os recursos"
}

variable "tags" {
  type        = map(string)
  description = "As tags para os recursos"
}