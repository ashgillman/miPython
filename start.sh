#!/usr/bin/env bash

docker stop ipython-server
docker rm ipython-server
docker run -d -p 8888:8888 -v ~:/home -v ~/notebooks:/notebooks --name ipython-server --restart always gil2a4/mipython
