DECLARE
   A NUMBER(11):=10;
   B NUMBER (11):=10;
   TOTAL NUMBER(11);
BEGIN
    TOTAL := A+B;
    DBMS_OUTPUT.put_line('La suma es: '||TOTAL);
END;
