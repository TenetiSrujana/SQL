# Write your MySQL query statement below
SELECT
Department.name AS Department,
Employee.name AS Employee,
Employee.salary AS Salary
FROM Employee
JOIN Department
ON Employee.departmentId = Department.id
WHERE 3 >(
    SELECT COUNT(DISTINCT salary)
    FROM Employee e
    WHERE e.departmentId = Employee.departmentId
    AND e.salary > Employee.salary);