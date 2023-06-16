--We have a marketing budget for this year, which country should we prioritise and why?

SELECT name
FROM countries
WHERE  wineries_count = (SELECT min(wineries_count) FROM countries)
  AND wines_count = (SELECT min(wines_count) FROM countries)
  AND users_count = (SELECT min(users_count) FROM countries);
