-- Which departments does not exists in the employees table?
-- Selecting the name of the departments
SELECT 
  name AS Departmens
-- Get the value from departments table within employee_data dataset
FROM employee_data.departments
-- Add a subquery that returns the departments exists in employee table then using WHERE clause and NOT IN function to filter the data to return departments name that does not contain in employees table 
WHERE departments.name NOT IN(
-- Selecting departments name from employees table
  SELECT 
    departments.name
  FROM 
    employee_data.employees
-- Perform inner join to merge the data with departments table on department_id
  INNER JOIN 
    employee_data.departments 
  ON employees.department_id = departments.department_id
)
