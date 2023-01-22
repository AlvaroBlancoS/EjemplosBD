/*
Hay posibilidades de crear los blosques.
Este ejemplo solo son dos bloques.
Sin embargo, la variable del primer bloque
es independiente y no funciona para el segundo
bloque. Es como si el primer bloque representan
variables globales y el segundo variables locales.
*/
DECLARE
 X NUMBER := 5;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Primer bloque: '||X);
    DECLARE
        X NUMBER :=10;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Segundo bloque: '||X);
    END;    
END;
