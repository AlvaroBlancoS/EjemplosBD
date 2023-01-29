DECLARE
    cursor ver_todo IS SELECT * FROM countries;
BEGIN
    FOR cada_pais in ver_todo LOOP
        dbms_output.put_line(cada_pais.country_name);
    END LOOP;
END;