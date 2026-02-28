output "app_id" {
  description = "The ID of the deployed DigitalOcean App"
  value       = digitalocean_app.folder_structure_conventions.id
}

output "app_live_url" {
  description = "The live URL of the deployed application"
  value       = digitalocean_app.folder_structure_conventions.live_url
}

output "app_default_ingress" {
  description = "The default ingress URL for the application"
  value       = digitalocean_app.folder_structure_conventions.default_ingress
}

output "app_urn" {
  description = "The uniform resource name (URN) for the app"
  value       = digitalocean_app.folder_structure_conventions.urn
}

output "app_created_at" {
  description = "The timestamp when the app was created"
  value       = digitalocean_app.folder_structure_conventions.created_at
}

output "app_updated_at" {
  description = "The timestamp when the app was last updated"
  value       = digitalocean_app.folder_structure_conventions.updated_at
}

output "active_deployment_id" {
  description = "The ID of the currently active deployment"
  value       = digitalocean_app.folder_structure_conventions.active_deployment_id
}
