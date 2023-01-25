
DECLARE
/*
El ejemplo anterior de bucle LOOP 1
habíamos observado que está utilizando 
la sentencia IF. Pero este bucle solamente
está utilizando EXIT WHEN en una sola 
línea. Parece más corto y limpio.
*/
    X NUMBER :=1;
BEGIN
    LOOP
    DBMS_OUTPUT.PUT_LINE(X);
    X:=X+1;
    EXIT WHEN X=11;   
    END LOOP;
END;
