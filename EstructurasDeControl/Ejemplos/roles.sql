/*
En PL SQL te ayuda identificar
si eres un usuario concrecto o
eres administrador
*/
DECLARE
   USUARIO VARCHAR(45);
BEGIN
    USUARIO := USER;
    CASE USUARIO
    WHEN 'SYS' THEN DBMS_OUTPUT.PUT_LINE('Eres superadministrador');
    WHEN 'SYSTEM' THEN DBMS_OUTPUT.PUT_LINE('Eres un administrador normal');
    WHEN 'HR' THEN DBMS_OUTPUT.PUT_LINE('Eres un usuario de recursos humanos');
    ELSE DBMS_OUTPUT.PUT_LINE('Usuario no autorizado');
    END CASE;
END;



