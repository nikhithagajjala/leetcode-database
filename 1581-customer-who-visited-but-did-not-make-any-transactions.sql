/* Write your T-SQL query statement below */

SELECT
    customer_id, 
    count(v.visit_id) as count_no_trans
FROM
    Visits v
LEFT OUTER JOIN
    Transactions t
ON
    v.visit_id = t.visit_id
WHERE 
    t.visit_id IS NULL
GROUP BY
    customer_id 
ORDER BY
    customer_id
