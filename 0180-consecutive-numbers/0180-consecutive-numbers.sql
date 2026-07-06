# Write your MySQL query statement below
SELECT DISTINCT Logs1.num AS ConsecutiveNums
FROM Logs Logs1
JOIN Logs Logs2
ON Logs1.id = Logs2.id - 1
JOIN Logs Logs3
ON Logs2.id = Logs3.id - 1
WHERE Logs1.num = Logs2.num
AND Logs2.num = Logs3.num;