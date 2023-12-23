locals {
  workspaces = {
    bootstrap = {}
  }
  workspace = local.workspaces[terraform.workspace]
  gcp-project = "project-patterns-shared"
  prefix = {
    system = "project-patterns"
  }
}
