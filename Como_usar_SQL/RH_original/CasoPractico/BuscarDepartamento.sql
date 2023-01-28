DECLARE 
    dep_id departments.department_id%TYPE :=10;
    nombre_dep departments.department_name%TYPE;
BEGIN
    SELECT departments.department_name INTO nombre_dep
    FROM departments
    WHERE department_id = dep_id;
    dbms_output.put_line(nombre_dep);
END;