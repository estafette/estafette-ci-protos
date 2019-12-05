#!/bin/bash

set -e

. ./break-check.sh

echo -e "\nCleaning old files"
rm -rfv generated

echo -e "\nGenerating Protobuf stubs..."
prototool generate

echo -e "\nCopying resources to generated stubs directories..."
cp -rv source/cpp/. generated/cpp
cp -rv source/csharp/. generated/csharp
cp -rv source/golang/. generated/golang/github.com/estafette/estafette-ci-protos-golang
cp -rv source/java/. generated/java
cp -rv source/js/. generated/js
cp -rv source/objc/. generated/objc
cp -rv source/python/. generated/python
cp -rv source/ruby/. generated/ruby