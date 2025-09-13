Weather Data Analysis Hadoop Project

Overview:
Analyze historical & real-time weather data using Hadoop ecosystem.

Setup Instructions:
1. Sqoop: Import weather data from MySQL to HDFS.
2. Flume: Stream sensor data into HDFS.
3. Hive: Query and analyze weather data.
4. Pig: ETL and aggregations on weather data.

Run Sqoop:
bash sqoop_import.sh

Run Flume:
flume-ng agent --conf ./conf --conf-file flume.conf --name agent

Use Hive CLI for hive_queries.sql

Use Pig CLI for weather_etl.pig

Sample dataset included.

Contact: your-email@example.com
