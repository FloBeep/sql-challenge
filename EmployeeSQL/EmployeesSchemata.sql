departments
-
dept_no varchar FK -< dept_emp.dept_no
dept_name varchar

dept_emp
-
dept_no varchar PK
emp_no varchar FK >- employees.emp_no

dept_manager
-
dept_no varchar FK >- departments.dept_no
emp_no varchar FK - employees.emp_no

employees
-
emp_no varchar PK
emp_title_id varchar FK >- titles.title_id
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date

salaries
-
emp_no varchar FK - employees.emp_no
salary int

titles
-
title_id PK varchar
title varchar
