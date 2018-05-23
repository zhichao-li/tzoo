#!/bin/bash

export PYSPARK_PYTHON=`which python`
export PYSPARK_DRIVER_PYTHON=`which python`

unset SPARK_HOME
export SPARK_DRIVER_MEMORY=2g
python -m jupyter notebook --notebook-dir=./  --ip=* --no-browser  --NotebookApp.token='' --allow-root


