DECLARE
    VALOR NUMBER;
    ISPAR BOOLEAN;
BEGIN
    VALOR := 2;
    ISPAR := MOD(VALOR,2)=0;
    IF ISPAR THEN
          DBMS_OUTPUT.PUT_LINE(VALOR||' es un n�mero par');
    ELSE
          DBMS_OUTPUT.PUT_LINE(VALOR ||' es un n�mero impar');
    END IF;
END;

