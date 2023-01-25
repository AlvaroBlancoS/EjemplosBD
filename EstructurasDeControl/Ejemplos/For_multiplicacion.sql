DECLARE
    num  NUMBER(11) NOT NULL:=1;
    num2 num%TYPE:=2;
BEGIN
    FOR num IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(num2||'x'||num||'= '||num2*num);
    END LOOP;
END;



