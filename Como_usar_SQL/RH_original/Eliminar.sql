DECLARE
/*
Siempre es importante de utilizar where, porque sin ella
se borrará todos los datos de la tabla. Mucho ojo.
*/
    primeraColumna TEST.COL1%TYPE;
BEGIN
    primeraColumna := 11;
    DELETE FROM TEST WHERE COL1 = primeraColumna;
    COMMIT;
END;