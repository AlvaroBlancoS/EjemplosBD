DECLARE
    /*
    Hay dos maneras de insertar. La primera es 
    crear una variable de tipo NUMBER
    */
    primeraColumna TEST.COL1%TYPE;
BEGIN
    /*
    y devolver un 10 para poner el primer par�metro que es COL1
    La siguiente manera es que en vez de utilizar la variable, 
    escribimos directamente al par�metro y en puesto "AAAA".
    */
    primeraColumna:=12;
    INSERT INTO TEST (COL1, COL2) VALUES (primeraColumna, 'Prueba');
    /*Siempre es muy importante de poner un commit para almacenar la 
    base de datos definitivamente*/
    COMMIT;

END;