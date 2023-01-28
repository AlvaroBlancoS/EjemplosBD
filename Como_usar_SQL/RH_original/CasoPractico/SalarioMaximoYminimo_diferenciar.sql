DECLARE 
    salario_maximo employees.salary%TYPE;
    salario_minimo employees.salary%TYPE;
    diferenciar NUMBER;
BEGIN
    SELECT MAX(employees.salary), MIN(employees.salary) INTO salario_maximo, salario_minimo
    FROM employees;
    diferenciar:= salario_maximo-salario_minimo;
    dbms_output.put_line('El salario máximo es '|| salario_maximo||' y el salario minimo es '|| salario_minimo||chr(10)||'La diferencia es '||diferenciar);
END;