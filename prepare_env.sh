#!/bin/bash


#python ./get-pip.py
#mkdir ~/.pip
echo -e "[global]\\nindex-url = http://mirrors.aliyun.com/pypi/simple/\\n\\n[install]\\ntrusted-host=mirrors.aliyun.com\\n"  > ~/.pip/pip.conf
sudo -EH pip install analytics-zoo tensorflow==1.1.0 numpy==1.12.0 six  jupyter pandas==0.22.0  matplotlib seaborn
