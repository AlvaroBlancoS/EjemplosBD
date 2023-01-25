DECLARE
    X NUMBER :=20;
BEGIN
    IF X=10 THEN
        dbms_output.put_line('Es un diez');
    ELSE
        dbms_output.put_line('No es un diez');
    END IF;
END;
