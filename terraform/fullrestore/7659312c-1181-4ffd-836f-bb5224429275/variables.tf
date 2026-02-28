variable "app_name" {
  description = "The name of the DigitalOcean App"
  type        = string
  default     = "folder-structure-conventions"
}

variable "region" {
  description = "The DigitalOcean region to deploy to"
  type        = string
  default     = "nyc"
  
  validation {
    condition     = contains(["nyc", "sfo", "ams", "sgp", "lon", "fra", "tor", "blr"], var.region)
    error_message = "Region must be a valid DigitalOcean App Platform region."
  }
}

variable "github_repo" {
  description = "GitHub repository in format 'owner/repo'"
  type        = string
  default     = "douglasswm/Folder-Structure-Conventions"
}

variable "github_branch" {
  description = "GitHub branch to deploy from"
  type        = string
  default     = "master"
}

variable "auto_deploy" {
  description = "Enable automatic deployments on push to branch"
  type        = bool
  default     = true
}

variable "build_command" {
  description = "Build command for the static site"
  type        = string
  default     = "npm install && npm run build || echo 'No build script found'"
}

variable "output_dir" {
  description = "Output directory for built static files"
  type        = string
  default     = "/"
}
