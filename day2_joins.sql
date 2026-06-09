--Right Join
--Right Join returns all the rows from the right table 
--and only matching rows form the left join
SELECT e.EmployeeName,
       d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- RIGHT JOIN + IS NULL
-- If a department has no matching employee,
-- the columns from the Employees table become NULL.
-- WHERE e.EmployeeID IS NULL filters only those unmatched rows.
-- This query returns departments that do not have any employees.
SELECT *
FROM Employees e
RIGHT JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL;

-- FULL OUTER JOIN
-- Returns all matching rows.
-- Returns unmatched rows from the left table.
-- Returns unmatched rows from the right table.

SELECT e.EmployeeName,
       d.DepartmentName
FROM Employees e
FULL OUTER JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- FULL OUTER JOIN + IS NULL
-- Used to find unmatched records from both tables.

SELECT *
FROM Employees e
FULL OUTER JOIN Departments d
ON e.DepartmentID = d.DepartmentID
WHERE e.EmployeeID IS NULL
   OR d.DepartmentID IS NULL;
