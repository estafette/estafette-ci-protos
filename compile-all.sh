#!/bin/bash

set -e

. ./generate-stubs.sh

trap "cd ../.." ERR

echo -e "\nCompiling java stubs and source code..."
cd generated/java
mvn -B verify
cd ../..

trap "cd ../.." ERR

echo -e "\nCompiling dotnet stubs and source code..."
cd generated/csharp
dotnet test --configuration Release
cd ../..

trap "cd ../../../../.." ERR

echo -e "\nCompiling golang stubs and source code..."
cd generated/golang/github.com/estafette/estafette-ci-protos-golang
go test ./...
cd ../../../../..

trap "cd ../.." ERR

echo -e "\nCompiling python stubs and source code..."
cd generated/python
python -m compileall
cd ../..