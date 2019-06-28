# Tsinghua-Tencent 100K Base Docker Container(GPU)

[![Software License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](LICENSE)

This repository is a base docker container for Tsinghua-Tencent 100K object detection docker container.  
It is tested with Nvidia Geforce GTX 1080 Ti.

## Pre-built based on

- Ubuntu 16.04
- CUDA 8.0  
- cuDNN 6.0  
- Python 2.7.12  
- Caffe of TT100K

## Docker Build
- Docker repository and tag name is "aibakevision/object-detector-tt100k-base-gpu:cuda8.0-ubuntu16.04-python2.7.12-gh".  

```bash
./build.sh
```

### Docker Push
- Push docker image

```bash
./push.sh
```

### Docker Run
- Run docker image
- For volumn binding, it needs host path parameter.(ex: ~/test)

```bash
./run.sh ~/test
```

- On Docker Bash shell, prepare tt100k dataset.

```bash
cd tsinghua-tencent-100k && wget http://cg.cs.tsinghua.edu.cn/traffic-sign/data_model_code/data.zip && unzip data.zip && mkdir -p /data/lmdb
cd code/script && ./prepare.sh
```

- On Docker Bash shell, train the tt100k dataset

```bash
cd code/script && ./train.sh
```

## License

This project is made available under the [MIT License](https://github.com/asyncbridge/object-detector-tt100k-base-gpu/blob/master/LICENSE).
