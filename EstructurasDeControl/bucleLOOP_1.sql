/*
Es muy similar el bucle for.
La primera opci�n es que tiene
una sentencia que si la x es igual
que 11, entonces el bucle se para
*/
DECLARE
    X NUMBER :=1;
BEGIN
    LOOP
    DBMS_OUTPUT.PUT_LINE(X);
    X:=X+1;
    IF X = 11
        THEN EXIT;
    END IF;   
    END LOOP;
END;
