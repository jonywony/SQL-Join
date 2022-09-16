-- What kind of role does the marketing Department consists of?
-- Selecting the role and departments name 
SELECT 
  DISTINCT employees.role AS Role,
  departments.name AS Departmen
-- Get the value from employees table within employee_data dataset
FROM employee_data.employees
-- Using right join to departments table within employee_data dataset to get the result, with key matching value is department_id from both table
RIGHT JOIN 
  employee_data.departments 
  ON employees.department_id = departments.department_id
-- Using WHERE to filter the data to return only Marketing department data
WHERE departments.name = 'Marketing'
