DECLARE
 SALES NUMBER := 39000;
 BONUS  SALES%TYPE :=0;
 BEGIN
    IF SALES > 50000 THEN
        BONUS :=1500;
    ELSIF SALES > 35000 THEN
        BONUS := 500;
    ELSIF SALES > 20000 THEN
        BONUS := 150;
    ELSE 
        BONUS := 100;
    END IF;
     DBMS_OUTPUT.PUT_LINE('Ventas '||SALES||' y bonos '|| BONUS);
END;
