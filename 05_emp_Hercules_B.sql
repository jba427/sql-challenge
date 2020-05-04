SELECT e.first_name, e.last_name, e.sex
FROM "Employees" as e
WHERE e.first_name = 'Hercules'
AND e.last_name like 'B%'