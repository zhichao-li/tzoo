#!/bin/bash

BIGDL_HOME=/opt/bigdl/bigdl-0.5.0-spark1.6.3
export PYTHONPATH=$PYTHONPATH:$BIGDL_HOME/lib/bigdl-0.5.0-python-api.zip
export BIGDL_CLASSPATH=$BIGDL_HOME/lib/bigdl-SPARK_1.6-0.5.0-jar-with-dependencies.jar
export SPARK_HOME=/opt/bigdl/spark-1.6.3-bin-hadoop2.6

export SPARK_DRIVER_MEMORY=2g
jupyter notebook --notebook-dir=/opt/bigdl/  --ip=* --no-browser  --NotebookApp.token='' --allow-root


