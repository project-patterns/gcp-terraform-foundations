terraform {
  # NOTE: "local" backend was used as part of initial bootstrap-self setup
  # backend "local" {}
  backend "gcs" {}
}
