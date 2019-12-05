#!/bin/bash

set -e

. ./lint.sh

echo -e "\nCompiling Protobuf messages..."
prototool compile