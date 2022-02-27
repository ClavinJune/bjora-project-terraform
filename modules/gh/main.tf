terraform {
  required_version = "~> 1.1.0"

  required_providers {
    github = {
      version = "~> 4.0"
      source  = "integrations/github"
    }
  }
}

resource "github_repository" "this" {
  name        = var.name
  description = var.description

  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_auto_merge       = false
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = var.gitignore_template
  license_template       = "mit"
  vulnerability_alerts   = true
}

resource "github_branch_default" "this" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_actions_secret" "this_plain" {
  count = length(var.plain_secrets)

  repository      = github_repository.this.name
  secret_name     = nonsensitive(var.plain_secrets[count.index].name)
  plaintext_value = var.plain_secrets[count.index].value
}

resource "github_actions_secret" "this_encrypted" {
  count = length(var.encrypted_secrets)

  repository      = github_repository.this.name
  secret_name     = nonsensitive(var.encrypted_secrets[count.index].name)
  encrypted_value = var.encrypted_secrets[count.index].value
}