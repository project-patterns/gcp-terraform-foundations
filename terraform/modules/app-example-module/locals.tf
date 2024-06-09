locals {
  workspaces = {
    dev = {
      env = "dev"
      gcp_project = "project-patterns-dev"
    }
    qa = {
      env = "qa"
      gcp_project = "project-patterns-nonprod"
    }
    prod = {
      env = "prod"
      gcp_project = "project-patterns-nonprod"
    }
  }
  workspace = local.workspaces[terraform.workspace]
  prefix = {
    system = "project-patterns"
    module = "${local.workspace.env}-${basename(abspath(path.module))}"
  }
}
