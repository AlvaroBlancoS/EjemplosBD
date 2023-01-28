DECLARE 
/*
 Esta consulta es lo mismo que el anterior. Pero
 la ventaja es que en vez de utilizar dos variables,
 se puede utilizar una variable que es el empleado
 utilizando ROWTYPE. Así puede ahorrar más líneas.
*/
    empleado EMPLOYEES%ROWTYPE;
BEGIN
    SELECT * INTO empleado
    FROM
        employees
    WHERE
        employee_id = 100;
        dbms_output.put_line('Se llama '|| empleado.first_name||' y su salario es '||empleado.salary);
END;