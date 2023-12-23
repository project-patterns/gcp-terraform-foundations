# Bootstrapping

## Manual steps

* Manually created a number of GCP projects
  * `project-patterns-dev`
  * `project-patterns-nonprod`
  * `project-patterns-shared`
  * `project-patterns-prod`

Setup `gcloud` CLI

```sh
gcloud auth login
gcloud auth application-default login

export NEW_CONFIGURATION="project-patterns-dev"
export GCLOUD_PROJECT="project-patterns-dev"
export GCLOUD_ACCOUNT="your.email@gmail.com"
gcloud config configurations create $NEW_CONFIGURATION
gcloud config configurations activate $NEW_CONFIGURATION
gcloud config set core/project $GCLOUD_PROJECT
gcloud config set core/account $GCLOUD_ACCOUNT
gcloud config set core/disable_usage_reporting true
gcloud config set compute/region australia-southeast1
gcloud config set compute/zone australia-southeast1-a

export NEW_CONFIGURATION="project-patterns-nonprod"
export GCLOUD_PROJECT="project-patterns-nonprod"
export GCLOUD_ACCOUNT="your.email@gmail.com"
gcloud config configurations create $NEW_CONFIGURATION
gcloud config configurations activate $NEW_CONFIGURATION
gcloud config set core/project $GCLOUD_PROJECT
gcloud config set core/account $GCLOUD_ACCOUNT
gcloud config set core/disable_usage_reporting true
gcloud config set compute/region australia-southeast1
gcloud config set compute/zone australia-southeast1-a

export NEW_CONFIGURATION="project-patterns-shared"
export GCLOUD_PROJECT="project-patterns-shared"
export GCLOUD_ACCOUNT="your.email@gmail.com"
gcloud config configurations create $NEW_CONFIGURATION
gcloud config configurations activate $NEW_CONFIGURATION
gcloud config set core/project $GCLOUD_PROJECT
gcloud config set core/account $GCLOUD_ACCOUNT
gcloud config set core/disable_usage_reporting true
gcloud config set compute/region australia-southeast1
gcloud config set compute/zone australia-southeast1-a

export NEW_CONFIGURATION="project-patterns-prod"
export GCLOUD_PROJECT="project-patterns-prod"
export GCLOUD_ACCOUNT="your.email@gmail.com"
gcloud config configurations create $NEW_CONFIGURATION
gcloud config configurations activate $NEW_CONFIGURATION
gcloud config set core/project $GCLOUD_PROJECT
gcloud config set core/account $GCLOUD_ACCOUNT
gcloud config set core/disable_usage_reporting true
gcloud config set compute/region australia-southeast1
gcloud config set compute/zone australia-southeast1-a
```

## Terraform

```sh

### BOOTSTRAP SELF
# First bootstrap the backend of the bootstrap modules themselves using a temporary "local" backend
# set "local" backend in: ./terraform/modules/bootstrap-self/terraform.tf
make tf.init MOD=bootstrap-self WORK=bootstrap BACKEND=bootstrap-local
make tf.plan MOD=bootstrap-self
make tf.apply MOD=bootstrap-self
# Migrate state to GCS bucket created in bootstrap-self
# set local backend in: ./terraform/modules/bootstrap-self/terraform.tf
make tf.init MOD=bootstrap-self WORK=bootstrap BACKEND=bootstrap
make tf.plan MOD=bootstrap-self
make tf.apply MOD=bootstrap-self

### Bootstrap projects
make tf.init MOD=bootstrap-projects WORK=bootstrap BACKEND=bootstrap
make tf.plan MOD=bootstrap-projects
make tf.apply MOD=bootstrap-projects
```
