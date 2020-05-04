SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" as e
JOIN "Dept_Emp" as de ON e.emp_no = de.emp_no
JOIN "Departments" as d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'