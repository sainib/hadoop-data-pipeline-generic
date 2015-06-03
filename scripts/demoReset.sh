#!/bin/bash

project_root="/app/hadoop-data-pipeline-generic"

un=`whoami`
if [ $un == 'root' ]; then

echo "Cleaning up data directory"
su - ambari-qa -c "hdfs dfs -rm -r /user/ambari-qa/falcon_demo/data/process/*"
su - ambari-qa -c "hdfs dfs -rm -r /user/ambari-qa/falcon_demo/data/backup/*"
su - ambari-qa -c "hdfs dfs -rm -r /user/ambari-qa/falcon_demo/data/input/*"
echo "Cleaned up data directory"

echo "Cleaning up hive table - start"
su - ambari-qa -c "hdfs dfs -rm -r /user/ambari-qa/falcon_demo/hivedb/omniture/*"
su - ambari-qa -c "hdfs dfs -rm -r /user/ambari-qa/falcon_demo/hivedb/ip_count/*"
echo "Cleaning up hive table - done"

echo "Cleaning up mysql table - start"
mysql < ${project_root}/sql/truncatetbl.sql
echo "Cleaning up mysql table - done"

echo "Cleaning up Flume directory - Start"
rm -f /root/falcon_demo/input/*
echo "Cleaning up Flume directory - Done"

else

echo "Unable to switch user to ambari-qa. Run as root."

fi


