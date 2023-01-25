DECLARE
/*
Puede aparecer dos bucles. El segundo bucle 
está dentro del primer bucle o que es 
dependiente del primer bucle. En otras 
palabras, son bucles anidadas. Este 
ejemplo está utilizando etiquetas que son 
parent(padre) y child (hijo) para comparar.
*/
    i  INTEGER := 0;
    j  INTEGER;
BEGIN
  <<parent>>--Iniciamos el padre
  LOOP
    i := i + 1; --Incrementa
    j := 100;-- Almacenamos un numero para el bucle  hijo
    DBMS_OUTPUT.PUT_LINE('Bucle padre:'||i);--Imprimimos el padre
    <<child>>--Inciamos el hijo
    LOOP
      DBMS_OUTPUT.PUT_LINE('Bucle hijo:'||j);--Imprimimos el hijo
      j:=j+1;
      EXIT parent WHEN (i> 3); --Se finaliza si la i es mayor que 3
      EXIT child WHEN (j > 105);--Se finaliza si la j es mayor que 105
    END LOOP child;
  END LOOP parent;
  DBMS_OUTPUT.PUT_LINE('Ha sido finalizado');
END;
