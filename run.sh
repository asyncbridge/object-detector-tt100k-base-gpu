#!/bin/bash
HOST_PATH="$1"
nvidia-docker run -v ${HOST_PATH}/test:/tt100k -it aibakevision/object-detector-tt100k-base-gpu:cuda8.0-ubuntu16.04-python2.7.12-gh
