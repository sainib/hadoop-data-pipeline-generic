#!/bin/bash


#su - hdfs -c "hdfs dfs -chmod 777 /user/ambari-qa/data_pipeline_demo/data"

su - ambari-qa -c "mkdir /home/ambari-qa/falcon_landing_zone"

su - ambari-qa -c "cp /tmp/Omniture.0.tsv /home/ambari-qa/falcon_landing_zone/Omniture.$$.tsv"
