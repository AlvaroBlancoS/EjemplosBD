DECLARE
    done BOOLEAN := false;
BEGIN  
    WHILE done LOOP
        DBMS_OUTPUT.PUT_LINE('No se imprime');
        done:=true;
    END LOOP;
    WHILE NOT done LOOP
        DBMS_OUTPUT.PUT_LINE('Si se imprime');
        done:=true;
    END LOOP;
END;
