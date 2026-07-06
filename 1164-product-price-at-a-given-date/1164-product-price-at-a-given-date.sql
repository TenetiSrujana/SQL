# Write your MySQL query statement below
SELECT product_id, 10 AS price
FROM Products
GROUP BY product_id
HAVING MIN(change_date) > '2019-08-16'

UNION

SELECT Products.product_id, new_price AS price
FROM Products
JOIN (
    SELECT product_id, MAX(change_date) AS change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
) LastPrice
ON Products.product_id = LastPrice.product_id
AND Products.change_date = LastPrice.change_date;