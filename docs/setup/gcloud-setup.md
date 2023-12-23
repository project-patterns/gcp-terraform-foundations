# Gcloud CLI setup

```sh
export GCLOUD_ACCOUNT="your.email@gmail.com"
new_configuration () {
  gcloud config configurations create $NEW_CONFIGURATION
  gcloud --configuration $NEW_CONFIGURATION config set core/project $GCLOUD_PROJECT
  gcloud --configuration $NEW_CONFIGURATION config set core/account $GCLOUD_ACCOUNT
  gcloud --configuration $NEW_CONFIGURATION services enable compute.googleapis.com
  gcloud --configuration $NEW_CONFIGURATION config set core/disable_usage_reporting true
  gcloud --configuration $NEW_CONFIGURATION config set compute/region australia-southeast1
  gcloud --configuration $NEW_CONFIGURATION config set compute/zone australia-southeast1-a
}
```

```sh
export NEW_CONFIGURATION="project-patterns-dev"
export GCLOUD_PROJECT="project-patterns-dev"
new_configuration

export NEW_CONFIGURATION="project-patterns-nonprod"
export GCLOUD_PROJECT="project-patterns-nonprod"
new_configuration

export NEW_CONFIGURATION="project-patterns-shared"
export GCLOUD_PROJECT="project-patterns-shared"
new_configuration

export NEW_CONFIGURATION="project-patterns-prod"
export GCLOUD_PROJECT="project-patterns-prod"
new_configuration
```
