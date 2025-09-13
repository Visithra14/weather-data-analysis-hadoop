CREATE EXTERNAL TABLE weather_data (
    station STRING,
    date STRING,
    tmax INT,
    tmin INT,
    humidity FLOAT,
    rainfall FLOAT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/hadoop/weather/raw';

SELECT
    station,
    SUBSTR(date,1,4) AS year,
    AVG(tmax) AS avg_max_temp,
    AVG(tmin) AS avg_min_temp
FROM weather_data
WHERE tmax > -9999 AND tmin > -9999
GROUP BY station, SUBSTR(date,1,4);
