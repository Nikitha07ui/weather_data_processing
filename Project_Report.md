# WEATHER DATA PROCESSING USING HIVE

## 1. Title
Weather Data Processing Using Hive

## 2. Aim
To analyze weather data using Apache Hive and perform useful weather-related calculations using HiveQL.

## 3. Problem Statement
Weather datasets contain information such as temperature, humidity, rainfall, wind speed, city, and weather condition. Manually analyzing large weather datasets is difficult. This project uses Hive to store and process the data and generate useful summaries.

## 4. Objectives
- Store weather data in a Hive table.
- Load CSV data into Hive.
- Find average temperature city-wise.
- Find maximum and minimum temperature.
- Calculate total rainfall.
- Analyze humidity and wind speed.
- Count different weather conditions.
- Generate a city-wise summary.

## 5. Software Requirements
- Hadoop
- Apache Hive
- Java
- Linux/Ubuntu or a Hadoop-compatible environment

## 6. Dataset
The dataset contains 15 weather records from Bangalore, Chennai, and Hyderabad.

## 7. Procedure
1. Start Hadoop services.
2. Open Hive.
3. Create the weather database.
4. Create the weather table.
5. Load the CSV file.
6. Execute HiveQL queries.
7. Observe the results.
8. Create the city-wise summary table.

## 8. Key HiveQL Concepts Used
CREATE DATABASE, CREATE TABLE, LOAD DATA, SELECT, WHERE, GROUP BY, HAVING, ORDER BY, AVG, MAX, MIN, SUM, COUNT, and CREATE TABLE AS SELECT.

## 9. Expected Results
The queries produce:
- City-wise average temperature
- City-wise maximum and minimum temperature
- City-wise total rainfall
- City-wise average humidity
- High-rainfall days
- Hottest weather record
- Number of Sunny, Cloudy, and Rainy records
- City-wise summary table

## 10. Conclusion
The Weather Data Processing Using Hive project shows how Hive can be used to process and analyze structured weather data. HiveQL makes it easy to perform aggregation, filtering, grouping, and sorting operations on large datasets. This approach can be extended to real-time and large-scale weather datasets.
