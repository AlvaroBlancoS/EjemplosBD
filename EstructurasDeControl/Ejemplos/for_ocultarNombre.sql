DECLARE
    nombre VARCHAR2(45):='Alf';
    limite NUMBER;
    ocultarNombre nombre%TYPE;
BEGIN
    limite:= LENGTH(nombre);
    FOR i IN 1..limite LOOP
        ocultarNombre:= ocultarNombre||'*';
    END LOOP;
        DBMS_OUTPUT.PUT_LINE(ocultarNombre);
END;



