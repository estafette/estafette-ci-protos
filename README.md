# ESTAFETTE-CI-PROTOS

This mono-repository contains all messages used by the Estafette CI platform in proto3 format.

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

## Before committing changes

To make sure formatting follows convention run the following command before creating and pushing a commit:

```bash
prototool format -w
```

## Automatically generated stubs

Once a PR is merged to the `master` branch files for the following languages will be generated and tagged with the same version as this build.

| Language    | Repository                                                                                                 |
| ----------- | ---------------------------------------------------------------------------------------------------------- |
| Golang      | [github.com/estafette/estafette-ci-protos-golang](https://github.com/estafette/estafette-ci-protos-golang) |
| Java        | [github.com/estafette/estafette-ci-protos-java](https://github.com/estafette/estafette-ci-protos-java)     |
| CSharp      | [github.com/estafette/estafette-ci-protos-csharp](https://github.com/estafette/estafette-ci-protos-csharp) |
| Python      | [github.com/estafette/estafette-ci-protos-python](https://github.com/estafette/estafette-ci-protos-python) |
| C++         | [github.com/estafette/estafette-ci-protos-cpp](https://github.com/estafette/estafette-ci-protos-cpp)       |
| Ruby        | [github.com/estafette/estafette-ci-protos-ruby](https://github.com/estafette/estafette-ci-protos-ruby)     |
| Objective-C | [github.com/estafette/estafette-ci-protos-objc](https://github.com/estafette/estafette-ci-protos-objc)     |
| Javascript  | [github.com/estafette/estafette-ci-protos-js](https://github.com/estafette/estafette-ci-protos-js)         |