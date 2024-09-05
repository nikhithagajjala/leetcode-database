/* Write your T-SQL query statement below */

SELECT 
    teacher_id, count(distinct subject_id) as cnt
FROM
    Teacher
GROUP BY
    teacher_id