DECLARE
    cursor ver_todo IS SELECT * FROM countries;
    Cursor ver_regiones IS SELECT * FROM regions;
    agregar_pais countries.country_name%TYPE;
    agregar_id_pais countries.country_id%TYPE;
    agregar_id_region countries.region_id%TYPE;
    bandera BOOLEAN := FALSE;
    idPais bandera%TYPE:= FALSE;
    idRegion bandera%TYPE:=FALSE;
    type region is varray(4) of varchar2(10);
    continentes CONSTANT region := region('Europa', 'Américas','Asía','África');
    continente varchar2(10);
BEGIN
    agregar_pais:='Russias';
    agregar_id_pais:=UPPER('RU'); 
    continente :=continentes(1);    
    FOR cada_pais in ver_todo LOOP
        IF cada_pais.country_name LIKE agregar_pais THEN
            bandera:=true;
        END IF;
    END LOOP;
    
    FOR cada_id_pais in ver_todo LOOP
        IF cada_id_pais.country_id LIKE agregar_id_pais THEN
            idPais:=true;
        END IF;
    END LOOP;
    
        CASE continente 
            WHEN continentes(1) THEN  
                agregar_id_region:=1;
                idRegion:=true;
            WHEN continentes(2) THEN  
                agregar_id_region:=2;
                idRegion:=true;
            WHEN continentes(3) THEN  
                agregar_id_region:=3;
                idRegion:=true;
            WHEN continentes(4) THEN  
                agregar_id_region:=4;
                idRegion:=true;
        ELSE
            idRegion:=false;
            dbms_output.put_line('El continente '||continente||' no existe'||chr(10)||' Los continentes que existen son: '); 
            dbms_output.put_line(chr(10)||'ID Region '|| 'Continente'||chr(10)); 
            FOR ver_continentes in ver_regiones LOOP
                dbms_output.put_line('          '||ver_continentes.region_id||' '||ver_continentes.region_name); 
            END LOOP;
    END CASE;
      
    IF BANDERA THEN
      dbms_output.put_line(agregar_pais||' existe');
    ELSIF idPais THEN 
        SELECT country_name INTO agregar_pais
        FROM countries
        WHERE country_id LIKE agregar_id_pais;
        dbms_output.put_line(agregar_id_pais||' existe el ID pais y es '||agregar_pais);
    ELSIF idRegion THEN
        INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID) VALUES ( agregar_id_pais, agregar_pais, agregar_id_region);
        commit;--Permite confirmar los cambios de la base de datos
        dbms_output.put_line('Ha sido registrado correctamente');
    END IF;
END;