-- How many customers does each sales rep support?
SELECT E.LastName, E.FirstName, COUNT(c.SupportRepId) AS Count_Customers
FROM Employee e 
JOIN Customer c 
ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId 
ORDER BY Count_Customers DESC

-- Which employee supports the highest-revenue customers?
SELECT E.LastName, E.FirstName, SUM(i.Total) AS Customers_Spending
FROM Employee e 
JOIN Customer c 
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i 
ON c.CustomerId = i.CustomerId 
GROUP BY e.EmployeeId  
ORDER BY Customers_Spending DESC

-- Build an org chart query using a self JOIN on Employee
SELECT
    e.FirstName || ' ' ||e.LastName AS Employee, e.Title,
	e2.FirstName || ' ' || e2.LastName AS Manager
FROM Employee e
LEFT JOIN Employee e2 ON e.ReportsTo = e2.EmployeeId 
ORDER BY Manager;