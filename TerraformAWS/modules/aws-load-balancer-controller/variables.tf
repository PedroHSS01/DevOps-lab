variable "project_name" {
  type        = string
  description = "O nome do projeto para tags dos recursos"
}

variable "tags" {
  type        = map(any)
  description = "Tags para ser adicionado aos recursos da AWS"
}

variable "oidc" {
  type        = string
  description = "URL https do provaider OIDC do cluster EKS"
} 