resource "github_actions_secret" "bjora-project-terraform-sonar-token" {
  repository       = github_repository.bjora-project-terraform.name
  secret_name      = "SONAR_TOKEN"
  plaintext_value = var.BJORA_PROJECT_TERRAFORM_SONAR_TOKEN
}