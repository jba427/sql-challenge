--Employee Salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" as e
JOIN "Salaries" as s on e.emp_no = s.emp_no

--Employees hired in 1986
SELECT e.last_name, e.first_name, e.hire_date
FROM "Employees" as e
WHERE e.hire_date >= '1/1/1986'
AND e.hire_date < '1/1/1987'

--Department managers
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM "Departments" as d
JOIN "Dept_Manager" as dm ON d.dept_no = dm.dept_no
JOIN "Employees" as e ON e.emp_no = dm.emp_no

--Employees w/ departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" as e
JOIN "Dept_Emp" as de ON de.emp_no = e.emp_no
JOIN "Departments" as d ON d.dept_no = de.dept_no

--Employees named Hercules B*
SELECT e.first_name, e.last_name, e.sex
FROM "Employees" as e
WHERE e.first_name = 'Hercules'
AND e.last_name like 'B%'

--Employees in Sales Dept
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" as e
JOIN "Dept_Emp" as de ON e.emp_no = de.emp_no
JOIN "Departments" as d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

--Employees in Sales and Development Departments
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Employees" as e
JOIN "Dept_Emp" as de ON e.emp_no = de.emp_no
JOIN "Departments" as d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development')
ORDER BY d.dept_name

--count of employees by last name
SELECT last_name, COUNT(last_name) AS last_name_count
FROM "Employees"
GROUP BY last_name
ORDER BY last_name_count DESC

