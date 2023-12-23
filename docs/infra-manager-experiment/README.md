# GCP Terraform setup

- https://cloud.google.com/infrastructure-manager/docs/overview
- https://cloud.google.com/docs/terraform
- https://cloud.google.com/docs/terraform/get-started-with-terraform

## General setup

```sh
gcloud services enable config.googleapis.com
gcloud auth login
gcloud auth application-default login
```

## Infrastructure Manager

```sh
gcloud infra-manager deployments apply projects/project-patterns-dev/locations/asia-east1/deployments/example \
    --service-account projects/project-patterns-dev/serviceAccounts/infrastructure-manager@project-patterns-dev.iam.gserviceaccount.com \
    --local-source="./example" \
    --input-values=""
```

```sh
gcloud infra-manager deployments list --location asia-east1

gcloud infra-manager deployments delete example --location asia-east1
```
