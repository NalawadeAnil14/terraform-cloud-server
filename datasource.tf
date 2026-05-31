data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "ABN-first-org"
    workspaces = {
      name = "terraform-cloud-network"
    }
  }
}
