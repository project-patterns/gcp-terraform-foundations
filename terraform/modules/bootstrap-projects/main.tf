resource "google_storage_bucket" "bootstrap_tf_backend_dev" {
  project       = local.gcp-projects.dev
  name          = "${local.prefix.system}-tf-backend-dev"
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

resource "google_storage_bucket" "bootstrap_tf_backend_nonprod" {
  project       = local.gcp-projects.nonprod
  name          = "${local.prefix.system}-tf-backend-nonprod"
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

resource "google_storage_bucket" "bootstrap_tf_backend_shared" {
  project       = local.gcp-projects.shared
  name          = "${local.prefix.system}-tf-backend-shared"
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

resource "google_storage_bucket" "bootstrap_tf_backend_prod" {
  project       = local.gcp-projects.prod
  name          = "${local.prefix.system}-tf-backend-prod"
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
