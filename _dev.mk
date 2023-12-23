include tools/tools.mk

### Dependencies - manage project and tool dependencies

## Install dependencies using locked versions
deps.install: deps.app.install deps.tools.install
.PHONY: deps.install

## Update dependencies
deps.update: deps.app.update deps.tools.update
.PHONY: deps.update

## Update dependencies
deps.upgrade: deps.app.upgrade deps.tools.upgrade
.PHONY: deps.update

## Install app dependencies
deps.app.install:
.PHONY: deps.app.install

## Update app dependencies
deps.app.update:
.PHONY: deps.app.update

## Upgrade app dependencies
deps.app.upgrade:
.PHONY: deps.app.upgrade

## Install tool dependencies
deps.tools.install: \
	tools/terraform
.PHONY: deps.tools.install

## Update tool dependencies
deps.tools.update:
.PHONY: deps.tools.update

## Upgrade tool dependencies
deps.tools.upgrade:
.PHONY: deps.tools.upgrade

### Code generation

## Run all code generation
codegen: codegen.docs
.PHONY: codegen

## Run docs code generation
codegen.docs:
	./scripts/generate-docs.sh
.PHONY: codegen.docs

### Verify

## Verify using static analysis
verify:
.PHONY: verify

## Verify using static analysis and autofix where possible
verify.fix:
.PHONY: verify.fix

## Verify that there is no git diff (used after generating code)
verify.empty-git-diff:
	./scripts/verify-empty-git-diff.sh
.PHONY: verify.empty-git-diff

### Test

## Run unit tests
test.unit:
.PHONY: test.unit
