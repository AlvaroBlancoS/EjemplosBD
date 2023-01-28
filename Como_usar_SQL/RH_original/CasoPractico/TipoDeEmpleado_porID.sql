DECLARE 
    tipo_empleado employees.job_id%TYPE;
BEGIN
    SELECT employees.job_id INTO tipo_empleado
    FROM employees
    WHERE employees.employee_id=100;
    dbms_output.put_line('El tipo de empleado es '||tipo_empleado);
END;