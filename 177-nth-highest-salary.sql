CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT 
            TOP 1 salary
        FROM
        (
            SELECT
                salary,
                DENSE_RANK() OVER(ORDER BY salary DESC) as salary_order
            FROM
                Employee
        ) A
        WHERE
            salary_order = @N
    );
    
END;


/* In SQL SERVER functions, the last statement before END should always be RETURN statement as the flow of IF/ELSE statement is not checked during compilation and compiler doesn't have know if there is a return statement inside the conditional blocks 

Also there is a way to remember the difference between different rankings of SQL

ROW_NUMBER() - just gives numbering in sequence order irrespective of same values
RANK() - gives the same numbering to the same values and leaves gaps like 1, 2, 2, 4 for 'car', 'plane', 'plane', 'tractor'
DENSE_RANK() - gives the same numbering to the same values and doesn't leaves gaps like 1, 2, 2, 3 for 'car', 'plane', 'plane', 'tractor'
*/