# Weather Data Processing Using Hive

## Objective
To process weather data using Apache Hive and perform analytical queries such as average temperature, rainfall, humidity, maximum/minimum temperature, and weather-condition counts.

## Technologies
- Apache Hadoop
- Apache Hive
- HDFS
- HiveQL
- CSV dataset

## Dataset columns
date, city, temperature, humidity, rainfall, wind_speed, weather_condition

## Main Hive operations
1. Create database and table
2. Load CSV data
3. Display records
4. Calculate city-wise average temperature
5. Calculate maximum/minimum temperature
6. Calculate total rainfall
7. Calculate average humidity
8. Filter high-rainfall days
9. Count weather conditions
10. Create a city-wise summary table

## How to run
1. Put `weather.csv` and `weather_analysis.hql` in the Hive working directory.
2. Start Hadoop/HDFS and Hive.
3. Run:
   hive -f weather_analysis.hql

If LOCAL loading is not supported in your setup, upload the CSV to HDFS and replace the LOAD DATA command with an HDFS path.

## Expected conclusion
Hive can process large weather datasets efficiently using SQL-like HiveQL. The project demonstrates aggregation, filtering, grouping, sorting, and summary-table creation.
