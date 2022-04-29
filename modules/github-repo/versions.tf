terraform {
  required_version = "~> 1.1.0"

  required_providers {
    github = {
      version = "~> 4.20.0"
      source  = "integrations/github"
    }
  }
}