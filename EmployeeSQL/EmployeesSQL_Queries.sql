-- DATA ENGINEERING
-- create titles table
CREATE TABLE titles (
	title_id varchar(10) PRIMARY KEY,
	title varchar(30)NOT NULL
);

-- create employees table
CREATE TABLE employees (
	emp_no varchar(10) PRIMARY KEY,
	emp_title_id varchar(10) references titles(title_id),
	birth_date date NOT NULL, 
	first_name varchar(45)NOT NULL,
	last_name varchar(45)NOT NULL,
	sex varchar(10)NOT NULL,
	hire_date date NOT NULL
);

-- create salaries table
CREATE TABLE salaries (
	emp_no varchar(10) references employees(emp_no),
	salary int NOT NULL
);

-- create department employees table
CREATE TABLE dept_emp (
	emp_no varchar(10) references employees(emp_no),
	dept_no varchar(10) references departments(dept_no)
);

-- create department managers table
CREATE TABLE dept_manager (
	dept_no varchar(10) references departments(dept_no),
	emp_no varchar(10) NOT NULL
);


-- create departments table
CREATE TABLE departments (
	dept_no varchar(10) PRIMARY KEY,
	dept_name varchar(30) 
);

-- DATA ANALYSIS
-- Employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;

-- First name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'

-- Manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM dept_manager AS dm
JOIN employees AS e
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON dm.dept_no = d.dept_no

-- Department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no

-- First name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- Each employee in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'

-- Each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'

-- Frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, count(emp_no) as employees_same_last_name
FROM employees
GROUP BY last_name
ORDER BY employees_same_last_name DESC;
