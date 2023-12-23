locals {
  workspaces = {
    bootstrap = {}
  }
  workspace = local.workspaces[terraform.workspace]
  prefix = {
    system = "project-patterns"
  }
  gcp-projects = {
    dev = "project-patterns-dev"
    nonprod = "project-patterns-nonprod"
    shared = "project-patterns-shared"
    prod = "project-patterns-prod"
  }
}
