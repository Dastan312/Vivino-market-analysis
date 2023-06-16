--We has detected that a big cluster of customers like a specific combination of tastes. 
--We have identified few primary keywords that matches this and we would like you to find all the wines
-- that have those keywords. To ensure accuracy of our selection, ensure that more than 10 users confirmed those keywords. Also,
-- identify the flavor_groups related to those keywords.
--Coffee
--Toast
--Green apple
--cream
--citrus



SELECT keywords.name AS tastes, wines.name AS WINE_NAME, wines.ratings_count, keywords_wine.group_name, keywords_wine.count, wine_id
FROM keywords
JOIN keywords_wine ON keywords_wine.keyword_id = keywords.id
JOIN wines ON wines.id = keywords_wine.wine_id
WHERE keywords.name in  ('coffee', 'toast', 'green apple', 'cream', 'citrus') and keywords_wine.count >10
GROUP BY wines.id
HAVING COUNT(DISTINCT keywords.name) >=5;


