resource "github_repository" "bjora-project" {
  name        = "bjora-project"
  description = "bjora project"

  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_auto_merge       = false
  delete_branch_on_merge = true
  auto_init              = true
  license_template       = "mit"
}

resource "github_repository" "bjora-project-terraform" {
  name        = "bjora-project-terraform"
  description = "bjora project terraform"

  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_auto_merge       = false
  delete_branch_on_merge = true
  auto_init              = true
  gitignore_template     = "Terraform"
  license_template       = "mit"
}

resource "github_repository" "bjora-project-golang" {
  name        = "bjora-project-golang"
  description = "bjora project golang"

  allow_merge_commit     = false
  allow_rebase_merge     = false
  allow_auto_merge       = false
  delete_branch_on_merge = true
  auto_init              = true
  gitignore_template     = "Go"
  license_template       = "mit"
}