/* Write your T-SQL query statement below */
WITH distinct_activities as (
    SELECT DISTINCT * FROM Activities
)
SELECT
    sell_date, 
    COUNT(product) as num_sold, 
    STRING_AGG(product, ',') WITHIN GROUP (ORDER BY product) as products
FROM
    distinct_activities
GROUP BY
    sell_date
ORDER BY sell_date

/* you can't use ORDER BY in subqueries or CTEs 
you can't use distinct inside string_agg
there is an option to sort the values when aggregating a string */