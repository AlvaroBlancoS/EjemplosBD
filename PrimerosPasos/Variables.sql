DECLARE 
/*
Son variables globales.
Para declarar la variable, es fundamental poner
DECLARE y despu�s BEGIN y END;
En este momento las variables no est�n devueltos.
*/
    NOMBRE VARCHAR(45);
    APELLIDOS VARCHAR(55);
BEGIN
/*
Sin embargo, es una variable local y he 
devuelto el valor que es el nombre de alquien
y los apellidos de algo
Siempre es importante poner comillas simples. No
dobles.
*/
    NOMBRE := 'Patito';
    APELLIDOS :='Feo Solitario';
    DBMS_OUTPUT.put_line('Nombre: '||NOMBRE||CHR(10)||'Apellidos: '||APELLIDOS);
END;



