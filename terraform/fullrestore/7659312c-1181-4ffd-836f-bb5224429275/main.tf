terraform {
  required_version = ">= 1.0"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.78.0"
    }
  }
}

# DigitalOcean App Platform deployment for Folder-Structure-Conventions
resource "digitalocean_app" "folder_structure_conventions" {
  spec {
    name   = var.app_name
    region = var.region

    # Static site configuration with Node.js build
    static_site {
      name             = "folder-structure-conventions"
      build_command    = var.build_command
      output_dir       = var.output_dir
      environment_slug = "node-js"
      
      github {
        repo           = var.github_repo
        branch         = var.github_branch
        deploy_on_push = var.auto_deploy
      }

      # Routes configuration
      routes {
        path = "/"
      }
    }

    # Alert policy for deployment failures
    alert {
      rule     = "DEPLOYMENT_FAILED"
      disabled = false
    }

    # Alert for high CPU usage
    alert {
      rule     = "CPU_UTILIZATION"
      value    = 80
      operator = "GREATER_THAN"
      window   = "FIVE_MINUTES"
      disabled = false
    }
  }
}
