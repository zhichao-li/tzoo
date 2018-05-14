#!/bin/bash

mkdir -p /tmp/zoo/
cd /tmp/zoo
if [ ! -f analytics-zoo-0.1.0-SNAPSHOT-jar-with-dependencies.jar ]; then
    wget http://tzoo.su.bcebos.com/analytics-zoo-0.1.0-SNAPSHOT-jar-with-dependencies.jar
fi

if [ ! -f analytics-zoo-0.1.0-SNAPSHOT-python-api.zip ]; then
    wget    http://tzoo.su.bcebos.com/analytics-zoo-0.1.0-SNAPSHOT-python-api.zip
fi

if [ ! -f spark-2.1.0-bin-hadoop2.7.tgz ]; then
    wget http://tzoo.su.bcebos.com/spark-2.1.0-bin-hadoop2.7.tgz
    tar -zxvf spark-2.1.0-bin-hadoop2.7.tgz
fi 

if [ ! -d spark-2.1.0-bin-hadoop2.7 ]; then
    tar -zxvf spark-2.1.0-bin-hadoop2.7.tgz
fi 


#python ./get-pip.py
#mkdir ~/.pip
echo -e "[global]\\nindex-url = http://mirrors.aliyun.com/pypi/simple/\\n\\n[install]\\ntrusted-host=mirrors.aliyun.com\\n"  > ~/.pip/pip.conf
sudo -EH pip install numpy==1.12.0 six keras==1.2.2 tensorflow==1.0.0 h5py jupyter pandas==0.22.0  matplotlib seaborn
