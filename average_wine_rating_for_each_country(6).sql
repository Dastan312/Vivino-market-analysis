--We would to give create a country leaderboard, 
--give us a visual that shows the average wine rating for each country. 


SELECT  wines.name as  wine_name, countries.name  as  country_name,  wines.ratings_average 
From wines
join regions on wines.region_id = regions.id
JOIN countries on regions.country_code = countries.code
GROUP BY country_name, ratings_average
ORDER BY ratings_average DESC

--Do the same for the vintages.

SELECT  vintages.name as  vintage_wine_name, countries.name  as  country_name,  vintages.ratings_average  as vintages_ratings_average 
From vintages
JOIN wines on vintages.wine_id = wines.id
join regions on wines.region_id = regions.id
JOIN countries on regions.country_code = countries.code
GROUP BY country_name, vintages_ratings_average 
ORDER BY vintages_ratings_average DESC