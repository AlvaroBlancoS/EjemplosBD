DECLARE
    VALOR NUMBER;
    ISPAR BOOLEAN;
BEGIN
    VALOR := 2;
    ISPAR := MOD(VALOR,2)=0;
    IF ISPAR THEN
          DBMS_OUTPUT.PUT_LINE(VALOR||' es un número par');
    ELSE
          DBMS_OUTPUT.PUT_LINE(VALOR ||' es un número impar');
    END IF;
END;

