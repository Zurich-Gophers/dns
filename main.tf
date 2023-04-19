terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Zurich-Gophers"

    workspaces {
      name = "dns"
    }
  }
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.3.0"
    }

  }
}

provider "cloudflare" {
  api_token = var.cf_api_token
}

