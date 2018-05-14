#!/bin/bash

ZOO_HOME=/tmp/zoo
export BIGDL_CLASSPATH=$ZOO_HOME/analytics-zoo-0.1.0-SNAPSHOT-jar-with-dependencies.jar
export SPARK_HOME=$ZOO_HOME/spark-2.1.0-bin-hadoop2.7

export PYTHONPATH=$PYTHONPATH:$ZOO_HOME/analytics-zoo-0.1.0-SNAPSHOT-python-api.zip:$SPARK_HOME/python/lib/pyspark.zip:$SPARK_HOME/python/lib/py4j-0.10.4-src.zip
export PYSPARK_PYTHON=`which python`
export PYSPARK_DRIVER_PYTHON=`which python`

#unset SPARK_HOME
export SPARK_DRIVER_MEMORY=2g
python -m jupyter notebook --notebook-dir=./  --ip=* --no-browser  --NotebookApp.token='' --allow-root


