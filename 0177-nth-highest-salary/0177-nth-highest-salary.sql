CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    SET N = N - 1;
    RETURN (
        select Distinct salary from Employee order by salary desc
        Limit 1 OFFSET N
    );
END