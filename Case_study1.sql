-- In which department does the software engineer belong?
-- Selecting the role and departments name 
SELECT 
  DISTINCT employees.role AS Role,
  departments.name AS Department
-- Get the value from employees table within employee_data dataset
FROM employee_data.employees
-- Using inner join to departments table within employee_data dataset to get the result, with key matching value is department_id from both table
INNER JOIN 
  employee_data.departments 
  ON employees.department_id = departments.department_id
-- Using WHERE to filter the data to return only Software Engineer role data
WHERE employees.role = 'Software Engineer'
