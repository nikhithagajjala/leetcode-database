/* Write your T-SQL query statement below */
SELECT 
    p.product_name, 
    sum(o.unit) as unit
FROM
    Products p
INNER JOIN
    Orders o
ON 
    p.product_id = o.product_id
WHERE
    MONTH(o.order_date) = 2 
AND 
    YEAR(o.order_date) = 2020
GROUP BY 
    p.product_id, p.product_name
HAVING
    sum(o.unit) >= 100