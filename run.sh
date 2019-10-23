#!/bin/bash
HOST_PATH="$1"
BINDING_PATH="$2"
docker run --runtime=nvidia -v ${HOST_PATH}:${BINDING_PATH} -it aibakevision/object-detector-tt100k-base-gpu:cuda8.0-ubuntu16.04-python2.7.12-gh
