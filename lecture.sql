SELECT COUNT(type) as num_types
FROM (
SELECT type, SUM(cost) as total_cost
FROM possessions
WHERE SUM(cost) > 200
GROUP BY type
HAVING SUM(cost) > 200
) as expensive_possessions