output "name" {
  description = "repository name"
  value       = github_repository.this.name
}

output "url" {
  description = "repository URL"
  value       = github_repository.this.html_url
}