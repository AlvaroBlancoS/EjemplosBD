DECLARE
    cursor ver_todo IS SELECT * FROM regions;
BEGIN
    FOR cada_region in ver_todo LOOP
        dbms_output.put_line(cada_region.region_id||' '||cada_region.region_name);
    END LOOP;
END;