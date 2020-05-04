SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" as e
JOIN "Dept_Emp" as de ON de.emp_no = e.emp_no
JOIN "Departments" as d ON d.dept_no = de.dept_no

