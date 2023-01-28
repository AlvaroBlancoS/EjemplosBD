DECLARE
    salario_maximo employees.salary%TYPE;
    nombreDep  departments.department_name%TYPE;
BEGIN
    SELECT MAX(employees.salary), departments.department_name INTO salario_maximo, nombreDep
    FROM  employees
    INNER JOIN departments on employees.department_id=departments.department_id 
    WHERE employees.department_id = 100
    GROUP BY  departments.department_name;
   dbms_output.put_line('El departamento es '||nombreDep||' y el salario máximo es '||salario_maximo);
END;
