terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.36.1"
    }
  }

# app_name = auth0-connectors
resource "tfe_workspace" "testworkspace" {
  name         = "workspace1"
  organization = "BineeshN"
  tag_names    = ["test", "app"]
}
