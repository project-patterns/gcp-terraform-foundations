# GCP Terraform setup

## Bootstrap

For details on how this project was boostrapped see [./docs/bootstrap.md](./docs/bootstrap.md)

## General setup

Authenticate w/ gcloud CLI

```sh
gcloud auth login
gcloud auth application-default login
```

Follow the steps in [./docs/setup/gcloud-setup.md](./docs/setup/gcloud-setup.md) to setup `gcloud` CLI configurations for each environment.

- `project-patterns-dev`
- `project-patterns-nonprod`
- `project-patterns-shared`
- `project-patterns-prod`

## Terraform

### Bootstrap modules

```sh
# bootstrap-self
make tf.init MOD=bootstrap-self BACKEND=bootstrap WORK=bootstrap
make tf.plan MOD=bootstrap-self
make tf.apply MOD=bootstrap-self

# bootstrap-projects
make tf.init MOD=bootstrap-projects BACKEND=bootstrap WORK=bootstrap
make tf.plan MOD=bootstrap-projects
make tf.apply MOD=bootstrap-projects
```

### Application modules

```sh
# qa example-app-module
make tf.init MOD=example-app-module BACKEND=nonprod WORK=qa
make tf.plan MOD=example-app-module
make tf.apply MOD=example-app-module
make tf.destroy MOD=example-app-module

# prod example-app-module
make tf.init MOD=example-app-module BACKEND=prod WORK=prod
make tf.plan MOD=example-app-module
make tf.apply MOD=example-app-module
make tf.destroy MOD=example-app-module
```
