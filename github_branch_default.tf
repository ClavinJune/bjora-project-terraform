resource "github_branch_default" "bjora-project" {
  repository = github_repository.bjora-project.name
  branch     = "main"
}

resource "github_branch_default" "bjora-project-terraform" {
  repository = github_repository.bjora-project-terraform.name
  branch     = "main"
}