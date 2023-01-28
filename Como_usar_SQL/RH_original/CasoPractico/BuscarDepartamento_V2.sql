DECLARE 
    dep_id departments.department_id%TYPE :=10;
    nombre_dep departments.department_name%TYPE;
    numero_empleados NUMBER;
BEGIN
    --Buscar departamento por id para visualizar el nombre
    SELECT departments.department_name INTO nombre_dep
    FROM departments
    WHERE department_id = dep_id;
    -- Buscar departamento por id y ver el numero total de empleados
    SELECT COUNT(*) INTO numero_empleados
    FROM employees
    WHERE employees.department_id = dep_id;
    dbms_output.put_line('El departamento es '|| nombre_dep || ' y el número total de empleado: '|| numero_empleados);
END;