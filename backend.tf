### 
terraform {
  cloud {
    organization = "MasonClouds"

    workspaces {
      name = "networking-dev-us-east"
    }
  }
}