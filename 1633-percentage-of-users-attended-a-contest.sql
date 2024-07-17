/* Write your T-SQL query statement below 

*/


SELECT
    contest_id,
    ROUND((COUNT(user_id) * 1.0 / (SELECT COUNT(user_id) FROM USERS) ) * 100, 2)  AS
    percentage
FROM
    Register 
GROUP BY
    contest_id
ORDER BY
    percentage DESC,
    contest_id ASC


/* You can write sub query inside a function */


/* The order of execution of the above query would be as follows:
1. subquery
2. grouping by contest_id
3. selecting/calculating columns/values provided in main select query
4. ordering by given columns, we can use percentage to sort even though it is not a predefined column of the table because ordering is done on the obtained resultset from executing the select query 
*/
