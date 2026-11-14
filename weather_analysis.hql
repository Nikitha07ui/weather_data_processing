-- WEATHER DATA PROCESSING USING HIVE
-- Project: Weather Data Processing Using Hive

CREATE DATABASE IF NOT EXISTS weather_db;
USE weather_db;

DROP TABLE IF EXISTS weather;

CREATE TABLE weather (
    date STRING,
    city STRING,
    temperature DOUBLE,
    humidity INT,
    rainfall DOUBLE,
    wind_speed DOUBLE,
    weather_condition STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH 'weather.csv'
OVERWRITE INTO TABLE weather;

-- 1. Display all weather records
SELECT * FROM weather;

-- 2. Find average temperature for each city
SELECT city, ROUND(AVG(temperature),2) AS avg_temperature
FROM weather
GROUP BY city;

-- 3. Find maximum and minimum temperature for each city
SELECT city,
       MAX(temperature) AS max_temperature,
       MIN(temperature) AS min_temperature
FROM weather
GROUP BY city;

-- 4. Find total rainfall for each city
SELECT city, ROUND(SUM(rainfall),2) AS total_rainfall
FROM weather
GROUP BY city;

-- 5. Find average humidity for each city
SELECT city, ROUND(AVG(humidity),2) AS avg_humidity
FROM weather
GROUP BY city;

-- 6. Find days with rainfall greater than 5 mm
SELECT date, city, rainfall
FROM weather
WHERE rainfall > 5;

-- 7. Find the hottest weather record
SELECT * FROM weather
WHERE temperature = (SELECT MAX(temperature) FROM weather);

-- 8. Count weather conditions
SELECT weather_condition, COUNT(*) AS number_of_records
FROM weather
GROUP BY weather_condition;

-- 9. Find average temperature by weather condition
SELECT weather_condition, ROUND(AVG(temperature),2) AS avg_temperature
FROM weather
GROUP BY weather_condition;

-- 10. Find cities with average temperature above 25 degrees
SELECT city, ROUND(AVG(temperature),2) AS avg_temperature
FROM weather
GROUP BY city
HAVING AVG(temperature) > 25;

-- 11. Sort cities by total rainfall
SELECT city, ROUND(SUM(rainfall),2) AS total_rainfall
FROM weather
GROUP BY city
ORDER BY total_rainfall DESC;

-- 12. Store city-wise summary
DROP TABLE IF EXISTS city_weather_summary;
CREATE TABLE city_weather_summary AS
SELECT city,
       ROUND(AVG(temperature),2) AS avg_temperature,
       ROUND(AVG(humidity),2) AS avg_humidity,
       ROUND(SUM(rainfall),2) AS total_rainfall,
       ROUND(AVG(wind_speed),2) AS avg_wind_speed
FROM weather
GROUP BY city;

SELECT * FROM city_weather_summary;
