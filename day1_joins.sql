--Sql foundation
--=======================================================================
--SQL Foundations -Weeek 1
--Topic: JOINs
--Author: Akshatha K A
--Date: June 2026
--=======================================================================

--Day 1: Inner join
--Inner join returns only the matching records from both tables
--lets take example of table employees and departments

SELECT e.name,d.departmentName
FROM employees e
INNER JOIN departments d
ON e.departmentID = d.departmentID;

--Day 1: Left Join
--Left join returns all the records from left 
--and only matched records from the right right table

SELECT e.name,d.deparmentName
FROM employees e
LEFT JOIN departments d
ON e.departmentID = d.departmentID;
