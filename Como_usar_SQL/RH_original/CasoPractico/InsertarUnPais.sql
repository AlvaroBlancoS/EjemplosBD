DECLARE
    agregar_id_pais countries.country_id%TYPE;
    agregar_pais countries.country_name%TYPE;
    agregar_id_region countries.region_id%TYPE;
BEGIN   
    agregar_id_pais:='ES';
    agregar_pais:='España';
    agregar_id_region:= 1;--Ojo es una clave foránea y no se puede inventar el id de la región.
    INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) VALUES ( agregar_id_pais, agregar_pais, agregar_id_region);
    commit;--Permite confirmar los cambios de la base de datos
END;