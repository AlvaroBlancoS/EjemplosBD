DECLARE
    salario_maximo employees.salary%TYPE;
BEGIN
    SELECT MAX(employees.salary) INTO salario_maximo
    FROM 
        employees
    WHERE department_id = 100; 
   dbms_output.put_line(salario_maximo);
END;
