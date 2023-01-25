DECLARE
    texto VARCHAR2(100):='Esto es un ejemplo';
    limite NUMBER;
    fraseReves VARCHAR2(100);
BEGIN
    limite:= LENGTH(texto);
    WHILE limite>0 LOOP
        fraseReves:=fraseReves||SUBSTR(texto,limite,1);
        limite:=limite-1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(fraseReves);
END;



