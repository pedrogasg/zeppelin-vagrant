export MASTER=spark://192.168.56.50:7077
export ZEPPELIN_PORT=6060
export ZEPPELIN_SPARK_CONCURRENTSQL
export SPARK_SUBMIT_OPTIONS="--master spark://192.168.56.50:7077   --deploy-mode cluster   --executor-memory 768m   --total-executor-cores 1"
