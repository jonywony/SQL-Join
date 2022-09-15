-- LEFT JOIN
-- Selecting employee name with alias employee_name, employee role with alias employee_role, and employee's department
SELECT 
  employees.name AS employee_name,
  employees.role AS employee_role,
  departments.name
-- Get the value from employees table within employee_data dataset
FROM employee_data.employees
-- Using left join to departments table within employee_data dataset to get the result, with key matching value is department_id from both table
LEFT JOIN 
  employee_data.departments 
  ON employees.department_id = departments.department_id
