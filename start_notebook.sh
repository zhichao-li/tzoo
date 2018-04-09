#!/bin/bash

# Set environment variables
export PATH=/root/miniconda2/bin:$PATH
source activate py2bigdl
export BIGDL_HOME=/opt/bigdl/dist-spark-2.1.1-scala-2.11.8-all-0.5.0-dist
export SPARK_HOME=/opt/bmr/spark2

#setup pathes
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --notebook-dir=./ --ip=* --no-browser --NotebookApp.token='' --allow-root"
export BIGDL_JAR_NAME=`ls ${BIGDL_HOME}/lib/ | grep jar-with-dependencies.jar`
export BIGDL_JAR="${BIGDL_HOME}/lib/$BIGDL_JAR_NAME"
export BIGDL_PY_ZIP_NAME=`ls ${BIGDL_HOME}/lib/ | grep python-api.zip`
export BIGDL_PY_ZIP="${BIGDL_HOME}/lib/$BIGDL_PY_ZIP_NAME"
export PYTHONPATH=$PYTHONPATH:${BIGDL_PY_ZIP}
export BIGDL_CONF=${BIGDL_HOME}/conf/spark-bigdl.conf

# Check files
if [ ! -f ${BIGDL_CONF} ]; then
    echo "Cannot find ${BIGDL_CONF}"
    exit 1
fi

if [ ! -f ${BIGDL_PY_ZIP} ]; then
    echo ${BIGDL_PY_ZIP}
    echo "Cannot find ${BIGDL_PY_ZIP}"
    exit 1
fi

if [ ! -f $BIGDL_JAR ]; then
    echo "Cannot find $BIGDL_JAR"
    exit 1
fi

${SPARK_HOME}/bin/pyspark \
  --master yarn-client \
  --driver-memory 4g \
  --executor-memory 4g \
  --executor-cores 4 \
  --num-executors 2 \
  --properties-file ${BIGDL_CONF} \
  --py-files ${BIGDL_PY_ZIP} \
  --jars ${BIGDL_JAR} \
  --conf spark.driver.extraClassPath=${BIGDL_JAR}:/opt/bmr/hadoop/lib/hadoop-lzo-0.6.0.jar \
  --conf spark.executor.extraClassPath=${BIGDL_JAR} \
  --conf spark.sql.catalogImplementation='in-memory'
