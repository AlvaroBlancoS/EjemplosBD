DECLARE
    TIPO_PRODUCTO CHAR(1);
BEGIN
    TIPO_PRODUCTO:= UPPER('p');
    CASE TIPO_PRODUCTO
        WHEN  'A' THEN DBMS_OUTPUT.PUT_LINE('Electrónica');
        WHEN  'B' THEN DBMS_OUTPUT.PUT_LINE('Informática');
        WHEN  'C' THEN DBMS_OUTPUT.PUT_LINE('Ropa');
        WHEN  'D' THEN DBMS_OUTPUT.PUT_LINE('Música');
        WHEN  'E' THEN DBMS_OUTPUT.PUT_LINE('Libros');
        ELSE
           DBMS_OUTPUT.PUT_LINE('El código es incorrecto');
    END CASE;    
END;
