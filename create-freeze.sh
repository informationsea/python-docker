#!/bin/bash

set -xeu

docker build --platform linux/amd64 -t python-freeze create-freeze
docker run --platform linux/amd64 --rm -it python-freeze bash -c "pip3 freeze" > requirements-freeze.txt