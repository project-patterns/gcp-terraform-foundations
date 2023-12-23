resource "google_storage_bucket" "bootstrap_tf_backend_self" {
  project       = local.gcp-project
  name          = "${local.prefix.system}-tf-backend-bootstrap"
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
