DECLARE
/*
 Una ventaja para PL SQL no tiene que porque
 repetir el tipo de la variable si ya existe.
 Por lo cu�l, la segunda variable ha utilizado
 TYPE para declarar que tambi�n es un VARCHAR.
*/
    NOMBRE VARCHAR2(45):='Alvarito';
    APELLIDOS NOMBRE%TYPE:='Blanco Sangines';
BEGIN
  DBMS_OUTPUT.PUT_LINE(NOMBRE||' '||APELLIDOS);
END;





