# Tsinghua-Tencent 100K Base Docker Container(GPU)

This repository is a base docker container for Tsinghua-Tencent 100K object detection docker container.  
It is tested with Nvidia Geforce GTX 1080 Ti.

## Pre-built based on

- Docker CE 18.06.2-ce 
- Nvidia Docker2
- Host O/S Nvidia Driver 418.87.00
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
- For volumn binding, it needs host path parameter and binding path parameter in Docker container.

```bash
./run.sh ~/data_folder /workspace/data_folder
```

- On Docker Bash shell, prepare tt100k dataset.

```bash
cd data_folder && wget http://cg.cs.tsinghua.edu.cn/traffic-sign/data_model_code/data.zip && unzip data.zip && mkdir -p /data/lmdb
cd ../tsinghua-tencent-100k/code/script && ./prepare.sh
```

- On Docker Bash shell, train the tt100k dataset
- Before training, you need to set the dataset path in train_val.prototxt file. (/workspae/data_folder/data)

```bash
cd code/script && ./train.sh
```

## License

It is cited from:

    @InProceedings{Zhe_2016_CVPR,
	author = {Zhu, Zhe and Liang, Dun and Zhang, Songhai and Huang, Xiaolei and Li, Baoli and Hu, Shimin},
	title = {Traffic-Sign Detection and Classification in the Wild},
	booktitle = {The IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
	year = {2016}
	}
	

