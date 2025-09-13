weather = LOAD '/user/hadoop/weather/raw' USING PigStorage(',') 
          AS (station:chararray, date:chararray, tmax:int, tmin:int, humidity:float, rainfall:float);

valid_data = FILTER weather BY tmax > -9999 AND tmin > -9999;

weather_year = FOREACH valid_data GENERATE station, SUBSTRING(date, 0, 4) AS year, tmax, tmin;

grouped = GROUP weather_year BY (station, year);

avg_temp = FOREACH grouped GENERATE 
           group.station, 
           group.year, 
           AVG(weather_year.tmax) AS avg_tmax, 
           AVG(weather_year.tmin) AS avg_tmin;

DUMP avg_temp;
