DECLARE 
    /* En vez de crear un tipo, la podemos utilizar 
    el tipo que ya existe en la base de datos para
    ahorrar el tiempo. Cada uno tiene su decisión, 
    no es obligatorio
    */
 salario employees.salary%TYPE ;
 nombre employees.first_name%TYPE;
BEGIN
    /*
    Es importante que SELECT se trata de seleccionar filas de 
    la base de datos. INTO es cuando queremos introducir las variables
    que acabamos de crear.
    */
    SELECT employees.salary, employees.first_name INTO salario, nombre
    FROM
        employees
    WHERE
        employee_id = 100;
        dbms_output.put_line('Se llama '|| nombre ||' y su salario es '||salario);
END;