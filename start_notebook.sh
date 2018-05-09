#!/bin/bash

ZOO_HOME=/home/lizhichao/bin/god/zoo/dist
export PYTHONPATH=$PYTHONPATH:$ZOO_HOME/lib/zoo-0.1.0-SNAPSHOT-python-api.zip
export BIGDL_CLASSPATH=$ZOO_HOME/lib/zoo-0.1.0-SNAPSHOT-jar-with-dependencies.jar
export SPARK_HOME=/home/lizhichao/bin/spark-2.1.0-bin-hadoop2.7

export PYSPARK_PYTHON=`which python`
export PYSPARK_DRIVER_PYTHON=`which python`

#unset SPARK_HOME
export SPARK_DRIVER_MEMORY=2g
jupyter notebook --notebook-dir=./  --ip=* --no-browser  --NotebookApp.token='' --allow-root


