# Create new storage bucket in the US multi-region
# with standard storage

resource "google_storage_bucket" "static" {
  project       = "test-dev"
  name          = "gcp-terraform-infra-manager-example-bucket"
  location      = "US"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true
}

# Upload a text file as an object
# to the storage bucket

# resource "google_storage_bucket_object" "default" {
#   project = "test-dev"
#  name         = "OBJECT_NAME"
#  source       = "OBJECT_PATH"
#  content_type = "text/plain"
#  bucket       = google_storage_bucket.static.id
# }
