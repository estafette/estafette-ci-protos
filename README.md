# ESTAFETTE-CI-API-CONTRACTS-PROTO

This mono-repository contains all contracts used by the Estafette CI platform in proto3 format.

## Adding or extending messages

To make changes you have to issue a PR, which will then be linted, compiled and validated not to contain breaking changes. 

### Validating it yourself

To perform these actions upfront yourself install prototool with

```bash
brew install prototool
```

and after making any changes in your branch run

```bash
prototool lint
prototool compile
prototool break check --git-branch master
prototool generate
```


## Automatically generated stubs

Once a PR is merged to the `master` branch files for the following languages will be generated and tagged with the same version as this build.

| Language | Repository                                         |
| -------- | -------------------------------------------------- |
| Golang   | github.com/estafette/estafette-ci-contracts-golang |
| Java     | github.com/estafette/estafette-ci-contracts-java   |
| CSharp   | github.com/estafette/estafette-ci-contracts-dotnet |
| Python   | github.com/estafette/estafette-ci-contracts-python |
| C++      | github.com/estafette/estafette-ci-contracts-cpp    |