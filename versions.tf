terraform {
  required_version = "~> 1.1.0"

  cloud {
    organization = "bjora"
    workspaces {
      name = "bjora-project-terraform"
    }
  }

  required_providers {
    github = {
      version = "~> 4.20.0"
      source  = "integrations/github"
    }
  }
}