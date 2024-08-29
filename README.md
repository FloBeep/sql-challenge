# sql-challenge

Background

It’s been two weeks since I was hired as a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I designed the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, I performed data modeling, data engineering, and data analysis, respectively.

Data Modeling

Please find below the Entity Relationship Diagram for table schemas provided for all tables.


Data Engineering

It was required to do follow the steps below:
- All required columns are defined for each table.
- Columns are set to the correct data type.
- Primary Keys set for each table.
- Correctly references related tables.
- Tables are correctly related using Foreign Keys.
- Correctly uses NOT NULL condition on necessary columns.
- Accurately defines value length for columns.

The resulting code of the data Engineering is below:

<img alt="ENG" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Files/Engineering%20Code.png">

Data Analysis

Find below the questions and answers (including code):

Q1 - List the employee number, last name, first name, sex, and salary of each employee.

<img alt="q1 - chllenge9" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Images/Q1.png">

Q2 - List the first name, last name, and hire date for the employees who were hired in 1986.

<img alt="q2 - challenge9" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Images/Q2.png">

Q3 - List the manager of each department along with their department number, department name, employee number, last name, and first name.

<img alt="q3 - challenge9" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Images/Q3.png">

Q4 - List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

<img alt="q4 - challenge9" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Images/Q4.png">

Q5 - List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

<img alt="q5 - challenge9" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Images/Q5.png">

Q6 - List each employee in the Sales department, including their employee number, last name, and first name.

<img alt="q6 - challenge9" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Images/Q6.png">

Q7 - List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

<img alt="q7- challenge9" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Images/Q7.png">

Q8 - List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

<img alt="q8 - challenge9" src="https://raw.githubusercontent.com/FloBeep/sql-challenge/main/ReadMe%20Images/Q8.png">