--check data
SELECT COUNT(*) FROM PortfolioProject..['-covid-data$'];

--check null data
SELECT COUNT(*) FROM PortfolioProject..['-covid-data$'] WHERE new_cases IS NULL OR total_deaths IS NULL;


SELECT location, date, new_cases, total_deaths
FROM PortfolioProject..['-covid-data$']
WHERE new_cases IS NOT NULL AND total_deaths IS NOT NULL
ORDER BY date;




--Get the total number of tests conducted for each location, sorted in descending order
SELECT location, total_tests
FROM PortfolioProject..['-covid-data$']


--Get the continent with the highest total deaths
SELECT continent, MAX(total_deaths) AS highest_total_deaths
FROM PortfolioProject..['-covid-data$'] 
GROUP BY continent
ORDER BY highest_total_deaths ;

--Find the date with the highest number of new cases
SELECT t1.continent, t1.date AS highest_new_cases_date, t1.new_cases AS highest_new_cases
FROM PortfolioProject..['-covid-data$'] AS t1
JOIN (
  SELECT MAX(new_cases) AS max_new_cases
  FROM PortfolioProject..['-covid-data$']
) AS t2
ON t1.new_cases = t2.max_new_cases;

--Calculate the percentage of new deaths over total deaths for each location
SELECT
  location,
  (new_deaths * 100.0) / COALESCE(NULLIF(total_deaths, 0), 1) AS percentage_new_deaths
FROM PortfolioProject..['-covid-data$'];

--Retrieve the total number of cases for each location
SELECT location, SUM(new_cases) AS total_cases
FROM PortfolioProject..['-covid-data$']
GROUP BY location;






