DECLARE
    x NUMBER:=0;
BEGIN  
    WHILE x <=10 LOOP
        DBMS_OUTPUT.PUT_LINE(x);
        x:=x+1; 
    END LOOP;    
END;
