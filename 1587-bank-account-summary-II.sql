/* Write your T-SQL query statement below */
SELECT
    name,
    SUM(amount) as balance
FROM
    Users u
INNER JOIN
    Transactions t
ON
    u.account = t.account
GROUP BY
    t.account, 
    name
HAVING
    SUM(amount) > 10000
