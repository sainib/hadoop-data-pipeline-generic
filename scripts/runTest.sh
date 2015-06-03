#!/bin/bash


#su - hdfs -c "hdfs dfs -chmod 777 /user/ambari-qa/data_pipeline_demo/data"

su - ambari-qa -c "mkdir /user/ambari-qa/falcon_landing_zon"e

su - ambari-qa -c "cp /tmp/Omniture.0.tsv /user/ambari-qa/falcon_landing_zone/Omniture.$$.tsv"
