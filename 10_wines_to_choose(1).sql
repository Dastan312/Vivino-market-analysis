--We want to highlight 10 wines to increase our sales, which ones should we choose and why?



SELECT name, ratings_average, ratings_count
FROM wines
GROUP BY ratings_count
ORDER BY ratings_count DESC, ratings_average DESC
LIMIT 10;
