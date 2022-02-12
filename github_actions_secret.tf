resource "github_actions_secret" "bjora-project-terraform-sonar-token" {
  repository      = github_repository.bjora-project-terraform.name
  secret_name     = "SONAR_TOKEN"
  plaintext_value = var.BJORA_PROJECT_TERRAFORM_SONAR_TOKEN
}

resource "github_actions_secret" "bjora-project-golang-sonar-token" {
  repository      = github_repository.bjora-project-golang.name
  secret_name     = "SONAR_TOKEN"
  plaintext_value = var.BJORA_PROJECT_GOLANG_SONAR_TOKEN
}