 -- Which countries have the highest customer concentration?
SELECT Country, COUNT(*) AS Country_Count
FROM Customer
GROUP BY Country
ORDER BY Country_Count DESC
LIMIT 5;

-- Who are the top 10 customers by lifetime spend?
SELECT FirstName, LastName, c.CustomerId, SUM(i.Total) AS TOTAL_SPENT
FROM Customer c 
JOIN Invoice i 
ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId 
ORDER BY TOTAL_SPENT DESC
LIMIT 10;

-- What is the average order value by country?
SELECT c.Country, ROUND(AVG(I.Total), 2) AS AVG_TOTAL_VALUE
FROM Invoice i 
JOIN Customer c 
ON c.CustomerId = i.CustomerId 
GROUP BY c.Country 
ORDER BY AVG_TOTAL_VALUE DESC;