terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.42.0"
    }
  }

  cloud {
    organization = "bineeshn"
    hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io
    workspaces {
      name = "terraformtest1"
    }
  }

}


# app_name = auth0-connectors er 1234
resource "tfe_workspace" "testworkspace" {
  name         = "workspace1"
  organization = "BineeshN"
  tag_names    = ["test", "app"]
}
