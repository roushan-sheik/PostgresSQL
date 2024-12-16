

CREATE Procedure remove_emp ()
LANGUAGE plpgsql
AS
$$
    BEGIN 
        DELETE FROM employees WHERE employee_id = 53;
    END
$$

call remove_emp()



SELECT * FROM employees