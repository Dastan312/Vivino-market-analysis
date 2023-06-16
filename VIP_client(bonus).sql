--One of our VIP client like Cabernet Sauvignon, he would like a top 5 recommandation, which wines would you recommend to him?

SELECT name, ratings_average, ratings_count
from wines
WHERE name LIKE  "%Cabernet Sauvignon%"
GROUP BY ratings_count
ORDER By ratings_count DESC
LIMIT 5;
