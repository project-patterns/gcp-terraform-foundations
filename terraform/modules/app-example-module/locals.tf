locals {
  workspaces = {
    dev = {
      env = "dev"
      gcp-project = "project-patterns-dev"
    }
    qa = {
      env = "qa"
      gcp-project = "project-patterns-nonprod"
    }
    prod = {
      env = "prod"
      gcp-project = "project-patterns-nonprod"
    }
  }
  workspace = local.workspaces[terraform.workspace]
  prefix = {
    system = "project-patterns"
    module = "${local.workspace.env}-${basename(abspath(path.module))}"
  }
}
