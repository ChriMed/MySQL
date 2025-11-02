SELECT Parks_and_Recreation.employee_demographics.first_name, Parks_and_Recreation.employee_salary.occupation, Parks_and_Recreation.employee_salary.salary, Parks_and_Recreation.employee_demographics.employee_id
FROM Parks_and_Recreation.employee_salary  
INNER JOIN Parks_and_Recreation.employee_demographics 
ON Parks_and_Recreation.employee_salary.employee_id =  Parks_and_Recreation.employee_demographics.employee_id;

SELECT * 
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;

SELECT * 
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;

SELECT * 
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
WHERE sal.occupation != "Office Manager" AND sal.salary < 60000;

SELECT * 
FROM employee_demographics as dem
LEFT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id  ;

SELECT par.department_name as Departments
FROM parks_departments as par
LEFT JOIN employee_salary as sal
	ON par.department_id = sal.dept_id;
    

SELECT sal.first_name,sal.last_name,sal.occupation, par.department_name, sal.salary
FROM employee_salary as sal
LEFT JOIN parks_departments as par
	ON sal.dept_id = par.department_id;

SELECT sal.first_name as first,sal.last_name as last ,sal.occupation as job, par.department_name as department, sal.salary as income
FROM employee_salary as sal
RIGHT JOIN parks_departments as par
	ON sal.dept_id = par.department_id;

SELECT emp1.employee_id as emp_santa,
emp1.first_name as Fname_santa,emp1.last_name as Lname_santa,
emp2.employee_id as emp_id,
emp2.first_name as Fname_emp,emp2.last_name as Lname_emp
FROM employee_salary  as emp1
JOIN employee_salary as emp2
	ON emp1.employee_id + 1 = emp2.employee_id;
    

SELECT * 
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
ON sal.dept_id = pd.department_id;


SELECT *,
CASE
WHEN occupation LIKE "%Manager%"AND salary > 60000 OR occupation LIKE "%Director%" AND salary > 70000
THEN "Wealthy"
ELSE  "Poor" 
END AS Life
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
ON sal.dept_id = pd.department_id;


SELECT *,
CASE
WHEN occupation LIKE "%Manager%"AND salary > 60000 OR occupation LIKE "%Director%" AND salary > 70000
THEN "Wealthy"
ELSE  "Poor" 
END AS Life
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
ON sal.dept_id = pd.department_id;


SELECT*
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
ON dem.employee_id = sal.employee_id
RIGHT JOIN parks_departments pd
ON sal.dept_id = pd.department_id

