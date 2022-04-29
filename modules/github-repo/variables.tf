variable "description" {
  description = "repository description"
  type        = string
  default     = ""
}

variable "gitignore_template" {
  description = "repository gitignore"
  type        = string
  default     = ""
}

variable "name" {
  description = "repository name"
  type        = string
  nullable    = false
}

variable "plain_secrets" {
  description = "repository plain secrets"
  type = list(object({
    name  = string
    value = string
  }))

  default   = []
  sensitive = true
}

variable "encrypted_secrets" {
  description = "repository encrypted secrets"
  type = list(object({
    name  = string
    value = string
  }))

  default   = []
  sensitive = true
}
