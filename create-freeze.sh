#!/bin/bash

set -xeu

docker build -t python-freeze create-freeze
docker run --rm -it -v $PWD:/out python-freeze bash -c "pip3 freeze > /out/requirements-freeze.txt"