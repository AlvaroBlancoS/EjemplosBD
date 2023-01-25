DECLARE
    num  NUMBER(11) NOT NULL:=1;
    num2 num%TYPE:=2;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE(num2||'x'||num||'= '||num2*num);
        num:= num+1;
        EXIT WHEN num>10;
    END LOOP;
END;



