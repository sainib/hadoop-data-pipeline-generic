
create database demomysql;

use demomysql;

create table ip_count(
ip VARCHAR(255),
count BIGINT,
) ;

create user 'demouser'@'localhost' identified by 'demopwd';

GRANT ALL PRIVILEGES ON demomysql.* TO 'demouser'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;


