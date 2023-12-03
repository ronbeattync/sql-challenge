-- CREATE DEPARTMENTS TABLE
CREATE TABLE departments (
dept_no VARCHAR(10) PRIMARY KEY,
dept_name VARCHAR(50)
);

-- CREATE TITLES TABLE
CREATE TABLE titles (
title_id VARCHAR(10) PRIMARY KEY,
title VARCHAR(50)
);

-- CREATE EMPLOYEES TABLE
CREATE TABLE employees(
emp_no INT PRIMARY KEY, 
emp_title_id VARCHAR(10),
birth_date DATE,
first_name VARCHAR(50),
last_name VARCHAR(50),
sex CHAR(1),
hire_date DATE
);

-- CREATE DEPT_EMP TABLE
CREATE TABLE dept_emp (
emp_no INT,
dept_no VARCHAR(10),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--CREATE DEPT_MANAGER TABLE
CREATE TABLE dept_manager(
dept_no VARCHAR(10),
emp_no INT,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- CREATE SALARIES TABLE
CREATE TABLE salaries (
emp_no INT,
salary INT,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


