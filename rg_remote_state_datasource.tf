data "terraform_remote_state" "shared-services-us-east" {
    backend = "remote"

    config = {
      organization = "MasonClouds"
      workspaces = {
        name = "shared-services-us-east"
      }
    }
    
}