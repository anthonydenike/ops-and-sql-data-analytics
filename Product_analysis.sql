--Which genres generate the most revenue?
SELECT g.Name, SUM(IL.UnitPrice*IL.Quantity) AS Total_Revenue
FROM Track t
JOIN InvoiceLine il
ON t.TrackId = il.TrackId
JOIN Genre g
ON g.GenreId = t.GenreId
GROUP BY g.Name
ORDER BY Total_Revenue DESC;

-- Which artists have the most tracks purchased?
SELECT a.Name, SUM(il.Quantity) AS Track_Count
FROM Artist a 
JOIN Album a2 
ON a.ArtistId = a2.ArtistId
JOIN Track t 
ON a2.AlbumId = t.AlbumId 
JOIN InvoiceLine il 
ON il.TrackId = t.TrackId 
GROUP BY a.Name 
ORDER BY Track_Count DESC
LIMIT 10

-- What is the average track price by media type?
SELECT mt.Name, ROUND(AVG(t.UnitPrice), 2) AS Track_Price_AVG
FROM MediaType mt 
JOIN Track t 
ON mt.MediaTypeId = t.MediaTypeId 
GROUP BY mt.Name 

-- Which tracks have never been purchased?
SELECT t.Name, il.Quantity 
FROM Track t 
LEFT JOIN InvoiceLine il 
ON t.TrackId = il.TrackId
WHERE Quantity IS NULL