#!/bin/bash

set -xeu

docker build --platform linux/amd64 -t python-freeze create-freeze
docker run --platform linux/amd64 --rm -it -v $PWD:/out python-freeze bash -c "pip3 freeze > /out/requirements-freeze.txt"