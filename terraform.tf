resource "tfe_workspace" "testworkspace" {
    name = "workspace1"
    organization = "BineeshN"
    tag_names = ["test", "app"]
  
}