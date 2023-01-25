/*
En java suele utilizar una condición
numero entero %2==0. Pero desgraciadamente 
en PL SQL hace de otra forma para hacer el
resto. Existe un método o función que es MOD().
*/
DECLARE
    VALOR NUMBER;
    RESULT VALOR%TYPE;
BEGIN
    VALOR := 6;
    RESULT:= MOD(VALOR,2);
    IF RESULT = 0 THEN
          DBMS_OUTPUT.PUT_LINE(VALOR||' es un número par');
    ELSE
          DBMS_OUTPUT.PUT_LINE(VALOR ||' es un número impar');
    END IF;
END;
