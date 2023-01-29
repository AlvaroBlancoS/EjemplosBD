DECLARE
    cursor ver_todo IS SELECT * FROM countries;
    pais countries.country_name%TYPE;
    comprobar boolean;
BEGIN
    comprobar := true;
    pais:= 'wakanda';
    FOR cada_pais in ver_todo LOOP
        IF cada_pais.country_name LIKE pais THEN
            comprobar:= TRUE;
            EXIT WHEN cada_pais.country_name LIKE pais;
        ELSE
           comprobar:= FALSE;
        END IF;
    END LOOP;
    IF comprobar = TRUE THEN
        dbms_output.put_line('Existe un país');
    ELSE
        dbms_output.put_line('No existe un país');
    END IF; 
END;