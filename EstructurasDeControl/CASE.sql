DECLARE
    TIPO_PRODUCTO CHAR(1);
BEGIN
    TIPO_PRODUCTO:= UPPER('p');
    CASE TIPO_PRODUCTO
        WHEN  'A' THEN DBMS_OUTPUT.PUT_LINE('Electr�nica');
        WHEN  'B' THEN DBMS_OUTPUT.PUT_LINE('Inform�tica');
        WHEN  'C' THEN DBMS_OUTPUT.PUT_LINE('Ropa');
        WHEN  'D' THEN DBMS_OUTPUT.PUT_LINE('M�sica');
        WHEN  'E' THEN DBMS_OUTPUT.PUT_LINE('Libros');
        ELSE
           DBMS_OUTPUT.PUT_LINE('El c�digo es incorrecto');
    END CASE;    
END;
