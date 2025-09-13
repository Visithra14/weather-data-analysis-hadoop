#!/bin/bash
sqoop import \
--connect jdbc:mysql://localhost:3306/weatherdb \
--username yourusername --password yourpassword \
--table weather_data \
--target-dir /user/hadoop/weather/raw \
--fields-terminated-by ',' \
--split-by id \
--num-mappers 4
