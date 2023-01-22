DECLARE
    NOMBRE VARCHAR2(45):='Pedrito';
    EDAD NUMBER(11):=2;
    CUMPLE DATE := '11-09-2001';
BEGIN
    DBMS_OUTPUT.put_line('Se llama '||nombre||' y tiene '||EDAD||' años y su fecha de nacimiento es '||CUMPLE);
END;

