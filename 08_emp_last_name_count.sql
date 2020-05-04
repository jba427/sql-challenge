SELECT last_name, COUNT(last_name) AS last_name_count
FROM "Employees"
GROUP BY last_name
ORDER BY last_name_count DESC

