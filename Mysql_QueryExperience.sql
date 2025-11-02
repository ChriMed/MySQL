SELECT * FROM Parks_and_Recreation.employee_demographics;

SELECT * FROM Parks_and_Recreation.employee_salary;

SELECT * FROM Parks_and_Recreation.parks_departments;

SELECT first_name,last_name,occupation FROM Parks_and_Recreation.employee_salary;
SELECT * FROM Parks_and_Recreation.employee_salary WHERE occupation = 'nurse';
SELECT * FROM Parks_and_Recreation.parks_departments WHERE department_id >= 3;
SELECT * FROM Parks_and_Recreation.employee_demographics WHERE gender = 'female' and age <40;
SELECT * FROM Parks_and_Recreation.employee_demographics WHERE gender = 'male' OR gender = 'female';
SELECT * FROM Parks_and_Recreation.employee_salary WHERE occupation IN ('Office Manager','City Manager');
SELECT * FROM Parks_and_Recreation.employee_demographics WHERE gender NOT IN ('female');
SELECT DISTINCT first_name,last_name FROM Parks_and_Recreation.employee_demographics WHERE gender NOT IN ('male');
SELECT employee_id,first_name,last_name,salary FROM Parks_and_Recreation.employee_salary ORDER BY salary ASC;
SELECT employee_id,first_name,last_name,salary FROM Parks_and_Recreation.employee_salary ORDER BY salary DESC LIMIT 1;
SELECT MAX(salary) FROM Parks_and_Recreation.employee_salary;
SELECT MIN(salary) FROM Parks_and_Recreation.employee_salary;
SELECT count(*) from Parks_and_Recreation.parks_departments;
SELECT count(*) from Parks_and_Recreation.employee_salary WHERE occupation = 'Office Manager';
SELECT SUM(salary) FROM Parks_and_Recreation.employee_salary; 
SELECT AVG(salary) FROM Parks_and_Recreation.employee_salary;
SELECT MAX(salary), occupation FROM Parks_and_Recreation.employee_salary GROUP BY occupation;
SELECT * FROM Parks_and_Recreation.employee_salary WHERE salary >= ( SELECT MIN(salary) FROM Parks_and_Recreation.employee_salary);
select * from Parks_and_Recreation.employee_salary where dept_id is null;
select * from Parks_and_Recreation.employee_demographics where birth_date > '1980-01-01';



SELECT * 
FROM employee_salary AS sal
WHERE occupation LIKE "%Manager%" OR occupation LIKE "%Director%";









