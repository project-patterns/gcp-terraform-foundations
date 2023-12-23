resource "google_storage_bucket" "example_app_module_bucket" {
  project       = local.workspace.gcp_project
  name          = "${local.prefix.module}-bucket"
  location      = "AU"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true

  custom_placement_config {
    data_locations = [
      "AUSTRALIA-SOUTHEAST1",
      "AUSTRALIA-SOUTHEAST2",
    ]
  }

  versioning {
    enabled = true
  }
}
