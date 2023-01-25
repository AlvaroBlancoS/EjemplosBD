/*
En java suele utilizar una condici�n
numero entero %2==0. Pero desgraciadamente 
en PL SQL hace de otra forma para hacer el
resto. Existe un m�todo o funci�n que es MOD().
*/
DECLARE
    VALOR NUMBER;
    RESULT VALOR%TYPE;
BEGIN
    VALOR := 6;
    RESULT:= MOD(VALOR,2);
    IF RESULT = 0 THEN
          DBMS_OUTPUT.PUT_LINE(VALOR||' es un n�mero par');
    ELSE
          DBMS_OUTPUT.PUT_LINE(VALOR ||' es un n�mero impar');
    END IF;
END;
