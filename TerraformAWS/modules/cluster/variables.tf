variable "project_name" {
  type        = string
  description = "O nome do projeto para tags dos recursos"
}

variable "tags" {
  type        = map(any)
  description = "Tags para ser adicionado aos recursos da AWS"
}


variable "public_subnet_1a" {
  type        = string
  description = "ID da Subnet Pública na Zona de Disponibilidade 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "ID da Subnet Pública na Zona de Disponibilidade 1b"
}