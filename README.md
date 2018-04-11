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
mkdir -p /opt/bigdl
cd /opt/bigdl
git clone https://github.com/zhichao-li/act.git
cd act
sh prepare_env.sh
```

### Start Notebook
* Run ```sh start_notebook.sh```

### How to start tensorboard
``` bash
tensorboard --logdir /tmp/bigdl_summaries
```

### SwitchyOmega for Chrome
http://tutorial.bj.bcebos.com/SwitchyOmega.crx
