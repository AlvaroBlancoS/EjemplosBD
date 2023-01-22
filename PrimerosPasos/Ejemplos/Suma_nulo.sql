DECLARE
/*
En PL SQL se puede
devolver un nulo en cualquier
número entero y el resultado
por salida no muestra 
absultamente nada
*/
   A NUMBER(11):=NULL;
   B NUMBER (11):=10;
   TOTAL NUMBER(11);
BEGIN
    TOTAL := A+B;
    DBMS_OUTPUT.PUT_LINE('La suma es: '||TOTAL);
END;
