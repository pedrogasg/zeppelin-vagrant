export SPARK_CONF_DIR=/opt/spark/spark-2.0.0-bin-hadoop2.7/conf
export SPARK_MASTER_HOST=192.168.56.50
export SPARK_MASTER_IP=192.168.56.50
export SPARK_LOCAL_IP={{ hostvars[inventory_hostname]["ansible_all_ipv4_addresses"][1] }}
