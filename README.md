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
# qa app-example-module
make tf.init MOD=app-example-module BACKEND=nonprod WORK=qa
make tf.plan MOD=app-example-module
make tf.apply MOD=app-example-module
make tf.destroy MOD=app-example-module

# prod app-example-module
make tf.init MOD=app-example-module BACKEND=prod WORK=prod
make tf.plan MOD=app-example-module
make tf.apply MOD=app-example-module
make tf.destroy MOD=app-example-module
```
