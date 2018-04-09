# BigDL Tutorials for Strata AI Conference

### Environment required
+ Python 2.7
+ JDK 8
+ Apache Spark 2.1.0
+ Jupyter Notebook 4.4
+ BigDL 0.5.0

### Prepare Env on Baidu BMR
```
yum update -y nss curl libcurl
git clone https://github.com/zhichao-li/act.git
cd act
sh prepare_env.sh
```

### Start Notebook
* Run ```sh start_notebook.sh```

### How to start tensorboard
``` bash
export PATH=/root/miniconda2/bin:$PATH
source activate py2bigdl 
tensorboard --logdir /tmp/bigdl_summaries
```
