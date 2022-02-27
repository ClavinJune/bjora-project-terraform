module "bjora-project" {
  source = "./modules/gh"

  name        = "bjora-project"
  description = "bjora project"
}

module "bjora-project-terraform" {
  source = "./modules/gh"

  name               = "bjora-project-terraform"
  description        = "bjora project terraform"
  gitignore_template = "Terraform"

  plain_secrets = [
    {
      name  = "SONAR_TOKEN"
      value = var.BJORA_PROJECT_TERRAFORM_SONAR_TOKEN
    }
  ]
}

module "bjora-project-terraform-modules" {
  source = "./modules/gh"

  name               = "bjora-project-terraform-modules"
  description        = "bjora project terraform modules"
  gitignore_template = "Terraform"

  plain_secrets = [
    {
      name  = "SONAR_TOKEN"
      value = var.BJORA_PROJECT_TERRAFORM_MODULES_SONAR_TOKEN
    }
  ]
}

module "bjora-project-golang" {
  source = "./modules/gh"

  name               = "bjora-project-golang"
  description        = "bjora project golang"
  gitignore_template = "Go"

  plain_secrets = [
    {
      name  = "SONAR_TOKEN"
      value = var.BJORA_PROJECT_GOLANG_SONAR_TOKEN
    }
  ]
}