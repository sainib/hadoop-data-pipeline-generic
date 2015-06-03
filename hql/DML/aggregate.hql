USE ${hivevar:hive_db};
--set hive.execution.engine=tez;
add jar hdfs://${hivevar:workflow_root_dir}/jars/hive-hcatalog-core.jar;

--********** QUERY NUMBER 1 : Move data from XML table to JSON table ************---

insert overwrite table ${hivevar:json_raw_table}
select convertJArr2Obj(convertX2J(row)) from ${hivevar:xml_raw_table};

