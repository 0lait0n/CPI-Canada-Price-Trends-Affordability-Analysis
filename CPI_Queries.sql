-- create a database (CPI)
create database CPI;
-- import the tables into the created dataset

-- objectives
-- 1. Check the cheapest products by month
SELECT Product, Month_Cheapest, avg_value_Cheapest
FROM cpi_seasonality
ORDER BY avg_value_Cheapest ASC
LIMIT 1;

-- 2. Trap index insights
SELECT Product, Dip_Month, Rebound_Month, Dip_Pct, Rebound_Pct
FROM cpi_trap_index
ORDER BY Rebound_Pct DESC;

-- 3 Average affordability
SELECT Product, AVG(hours_needed) AS avg_hours
FROM cpi_paycheck_pain
GROUP BY Product
ORDER BY avg_hours DESC
LIMIT 5;
