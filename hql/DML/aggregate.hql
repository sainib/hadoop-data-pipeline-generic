USE ${hivevar:hive_db};
--set hive.execution.engine=tez;
add jar hdfs://${hivevar:workflow_root_dir}/jars/hive-hcatalog-core.jar;

--********** QUERY NUMBER 1 : Move data from XML table to JSON table ************---

insert overwrite table ${hivevar:ip_count}
select col_8, count(*) from ${hivevar:omniture} group by col_8;

