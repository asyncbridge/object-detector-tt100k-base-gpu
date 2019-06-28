FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04

RUN apt-get update && apt-get install -y libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev protobuf-compiler libhdf5-10 libhdf5-serial-dev libhdf5-dev libhdf5-cpp-11 
RUN apt-get install -y --no-install-recommends libboost-all-dev
RUN apt-get install -y libatlas-base-dev libopenblas-dev python-dev libgflags-dev libgoogle-glog-dev liblmdb-dev git python-numpy wget curl libssl-dev python-pip awscli unzip

RUN pip install --upgrade pip
RUN python -V && which python && pip -V
RUN apt-get install -y python-tk
RUN pip install --no-cache-dir werkzeug flask tornado numpy pandas pillow pyyaml opencv-python scikit-image matplotlib

RUN mkdir /workspace
RUN mkdir /workspace/tt100k
WORKDIR /workspace/tt100k

RUN git clone https://github.com/asyncbridge/tsinghua-tencent-100k.git
RUN cd tsinghua-tencent-100k/code/script && ./compile.sh
