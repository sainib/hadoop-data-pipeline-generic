
create database railinc_mysql;

use railinc_mysql;

create table ip_count(
ip VARCHAR(255),
count BIGINT
) ;

create user 'demouser'@'localhost' identified by 'demopwd';

GRANT ALL PRIVILEGES ON railinc_mysql.* TO 'demouser'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;


