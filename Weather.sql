--average temperature and humidity for each city for the month of July 2023
SELECT city, AVG(temperature) AS avg_temperature, AVG(humidity) AS avg_humidity
FROM weather_data
WHERE date >= '2023-07-01' AND date <= '2023-07-31'
GROUP BY city;

--maximum temperature and date for each city
SELECT city, MAX(temperature) AS max_temperature, MAX(date) AS date_of_max_temp
FROM weather_data
GROUP BY city;

--find the days with the highest precipitation for each city
SELECT city, date, precipitation
FROM weather_data
WHERE (city, precipitation) IN (
    SELECT city, MAX(precipitation)
    FROM weather_data
    GROUP BY city
);

--calculate the average temperature and precipitation for the entire dataset
SELECT AVG(temperature) AS avg_temperature, AVG(precipitation) AS avg_precipitation
FROM weather_data;


--count the number of days when the temperature was above 25 degrees 
SELECT city, COUNT(*) AS days_above_25
FROM weather_data
WHERE temperature > 25
GROUP BY city;

--average temperature for each month in the dataset
SELECT strftime('%Y-%m', date) AS month,
       AVG(temperature) AS avg_temperature
FROM weather_data
GROUP BY month
ORDER BY month;

--find the dates when the temperature was above the average temperature for each city
SELECT city, date, temperature
FROM weather_data
WHERE temperature > (
    SELECT AVG(temperature)
    FROM weather_data AS wd2
    WHERE wd2.city = weather_data.city
);

--find the top 5 cities with the highest average humidity
SELECT city, AVG(humidity) AS avg_humidity
FROM weather_data
GROUP BY city
ORDER BY avg_humidity DESC
LIMIT 5;

--calculate the average temperature trend for each city over the year
SELECT city,
       strftime('%m', date) AS month,
       AVG(temperature) AS avg_temperature
FROM weather_data
GROUP BY city, month
ORDER BY city, month;

