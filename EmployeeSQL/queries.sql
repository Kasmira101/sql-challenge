
1) SELECT e.emp_no, last_name, first_name, dept_name FROM employees e
JOIN dept_emp dept ON dept.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dept.dept_no

2) SELECT last_name, first_name, hire_date FROM employee
WHERE hire_date BETWEEN '01-01-1996' AND '12/31/1986'


3) SELECT d.dept_name, dept.emp_no, e.last_name, e.first_name FROM dept_manager dept
JOIN departments d ON d.dept_no = dept.dept_no
JOIN employees e ON e.emp_no = dept.emp_no

4) SELECT e.last_name, e.first_name, e.emp_no, d.dep_name FROM employees e
JOIN dep dept_emp ON dep.emp_no = e.emp_no
JOIN d departments ON d.dept_no = dep.dep_no

5) SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

6) SELECT e.emp_no, last_name, first_name, dept_name FROM employees e
JOIN dept_emp dept ON dept.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dept.dept_no
WHERE dept_name ='Sales'

7) SELECT e.emp_no, last_name, first_name, dept_name FROM employees e
JOIN dept_emp dept ON dept.emp_no = e.emp_no
JOIN departments d ON d.dept_no = dept.dept_no
WHERE dept_name = 'Development' OR dept_name = 'Sales'

8) SELECT last_name, COUNT(emp_no) FROM employees
GROUP BY last_name
ORDER BY count desc 

