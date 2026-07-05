# Write your MySQL query statement below
SELECT Manager.employee_id, Manager.name, COUNT(Employee.employee_id) AS reports_count, ROUND(AVG(Employee.age)) AS average_age
FROM Employees Manager
JOIN Employees Employee
ON Manager.employee_id = Employee.reports_to
GROUP BY Manager.employee_id, Manager.name
ORDER BY Manager.employee_id;