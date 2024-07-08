/* Write your T-SQL query statement below */

SELECT
    u.name,
    coalesce(sum(distance), 0) as travelled_distance
FROM
    Users u
LEFT OUTER JOIN
    Rides r
ON
    u.id = r.user_id
GROUP BY
    r.user_id, u.name
ORDER BY 
    travelled_distance DESC, 
    name ASC
