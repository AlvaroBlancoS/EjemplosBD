DECLARE
/*
Tambi�n existe CONTINUE como java.
Bas�camente durante la ejecuci�n del bucle, 
aparece un sentencia que si la x es menor que
tres entonces el bucle deja de recorrer en un
instante hasta que deja de cumplir
*/
    x NUMBER:=0;
BEGIN
    LOOP
     --   DBMS_OUTPUT.PUT_LINE('Loop: x ='|| TO_CHAR(x));
        x:= x+1;
        IF x<3 THEN
            CONTINUE;
        END IF;
            --   DBMS_OUTPUT.PUT_LINE('Despu�s de CONTINUE: x ='|| TO_CHAR(x));
        EXIT WHEN x = 5;
          DBMS_OUTPUT.PUT_LINE('Loop: x ='|| TO_CHAR(x));
    END LOOP;
  --  DBMS_OUTPUT.PUT_LINE('Despu�s del loop: x ='|| TO_CHAR(x));
END;
