SELECT e.last_name, e.first_name, e.hire_date
FROM "Employees" as e
WHERE e.hire_date >= '1/1/1986'
AND e.hire_date < '1/1/1987'