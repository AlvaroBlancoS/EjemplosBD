DECLARE
/*
Como hacer la consulta con inner join. Ademas es un buen ejemplo
de utilizar una columna de una base de datos que tiene el mismo
nombre de otra columna de otra base de datos simplemente utilizando
el esquema (schema) y además utilizando el objeto que es e que pertenece
employees y el objeto d que pertenece departments.
*/
    CURSOR ver_todo IS SELECT e.*, d.manager_id AS dep_manager_id, d.department_name AS dep_departament_id
    FROM employees e
    INNER JOIN departments d
    ON d.manager_id = e.manager_id;
BEGIN
     FOR ver IN ver_todo LOOP
       IF ver.dep_manager_id = 114 THEN
           dbms_output.put_line(ver.FIRST_NAME||' '||ver.LAST_NAME||' trabaja en departamento '||ver.dep_departament_id);
        END IF;
     END LOOP;
END;