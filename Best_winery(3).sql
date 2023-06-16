  --We would like to give a price to the best winery, which one should we choose and why?
  

SELECT wineries.name, wines.ratings_average, wines.ratings_count
FROM wineries
JOIN wines ON wines.winery_id = wineries.id
WHERE wines.ratings_count = (SELECT max(ratings_count) FROM wines);
 