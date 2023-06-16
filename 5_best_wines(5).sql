--We would like to do a selection of wines that are easy to find all over the world. 
--Find the top 3 most common grape all over the world and for each grape, give us the the 5 best rated wines.

SELECT wines.name AS wine_name, grapes.name AS grape_name, countries.wines_count ,  ratings_count
FROM wines
JOIN regions ON wines.region_id = regions.id
JOIN countries ON regions.country_code = countries.code
JOIN most_used_grapes_per_country AS m ON m.country_code = countries.code
JOIN grapes ON grapes.id = m.grape_id
GROUP BY countries.wines_count, ratings_count
order by countries.wines_count DESC, ratings_count DESC
LIMIT 3;