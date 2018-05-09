#!/bin/bash

python ./get-pip.py
mkdir ~/.pip
echo -e "[global]\\nindex-url = http://mirrors.aliyun.com/pypi/simple/\\n\\n[install]\\ntrusted-host=mirrors.aliyun.com\\n"  > ~/.pip/pip.conf

pip install keras==1.2.2
pip install tensorflow==1.0.0
pip install h5py
#pip install --no-dependencies BigDL==0.5.0
pip install  jupyter
pip install  pandas
pip install  matplotlib
pip install seaborn
