
DECLARE
/*
El ejemplo anterior de bucle LOOP 1
hab�amos observado que est� utilizando 
la sentencia IF. Pero este bucle solamente
est� utilizando EXIT WHEN en una sola 
l�nea. Parece m�s corto y limpio.
*/
    X NUMBER :=1;
BEGIN
    LOOP
    DBMS_OUTPUT.PUT_LINE(X);
    X:=X+1;
    EXIT WHEN X=11;   
    END LOOP;
END;
