#!/bin/bash

mkdir -p /opt/bigdl/
cd /opt/bigdl/
python ./get-pip.py
mkdir -p ~/.pip
echo -e "[global]\\nindex-url = http://mirrors.aliyun.com/pypi/simple/\\n\\n[install]\\ntrusted-host=mirrors.aliyun.com\\n"  > ~/.pip/pip.conf

pip install keras==1.2.2
pip install tensorflow==1.0.0
pip install h5py
pip install jupyter
pip install pandas
pip install matplotlib


mkdir -p  ~/.keras/models
cd ~/.keras/models
wget https://s3.amazonaws.com/deep-learning-models/image-models/imagenet_class_index.json
wget http://tutorial.bj.bcebos.com/resnet50_weights_th_dim_ordering_th_kernels.h5

cd /opt/bigdl/

wget http://mirrors.shu.edu.cn/apache/spark/spark-1.6.3/spark-1.6.3-bin-hadoop2.6.tgz
tar -zxvf  spark-1.6.3-bin-hadoop2.6.tgz

wget http://tutorial.bj.bcebos.com/dist-spark-1.6.2-scala-2.10.5-all-0.5.0-dist.zip
mkdir -p bigdl-0.5.0-spark1.6.3
unzip dist-spark-1.6.2-scala-2.10.5-all-0.5.0-dist.zip -d bigdl-0.5.0-spark1.6.3


mkdir -p ~/.keras/datasets/mnist
cd ~/.keras/datasets/mnist

wget http://tutorial.bj.bcebos.com/mnist%2Ft10k-images-idx3-ubyte.gz -O t10k-images-idx3-ubyte.gz
wget http://tutorial.bj.bcebos.com/mnist%2Ft10k-labels-idx1-ubyte.gz -O t10k-labels-idx1-ubyte.gz
wget http://tutorial.bj.bcebos.com/mnist%2Ftrain-images-idx3-ubyte.gz -O train-images-idx3-ubyte.gz
wget http://tutorial.bj.bcebos.com/mnist%2Ftrain-labels-idx1-ubyte.gz -O train-labels-idx1-ubyte.gz


