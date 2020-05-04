SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM "Departments" as d
JOIN "Dept_Manager" as dm ON d.dept_no = dm.dept_no
JOIN "Employees" as e ON e.emp_no = dm.emp_no