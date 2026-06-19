variable "project_name" {
  type        = string
  description = "O nome do projeto para tags dos recursos"
}

variable "eks_cluster_name" {
  type        = string
  description = "O nome do cluster EKS onde o Node Group será criado"
}

variable "subnet_id_1" {
  type        = string
  description = "O ID da primeira subnet para o Node Group AZ 1"
}

variable "subnet_id_2" {
  type        = string
  description = "O ID da segunda subnet para o Node Group AZ 2"
}

variable "tags" {
  type        = map(any)
  description = "Tags para ser adicionado aos recursos da AWS"
}