#!/bin/bash
docker run --name qmy -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -v ./mysql_init_root.sql:/docker-entrypoint-initdb.d/mysql_init_root.sql  mysql/mysql-server:8.0 --lower_case_table_names=1



