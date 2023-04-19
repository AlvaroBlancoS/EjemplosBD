DECLARE
    /*
    Es lo mismo que insertar. La diferencia es buscar un valor con where
    para poder actualizar.
    */
    primeraColumna TEST.COL1%TYPE;
BEGIN
    primeraColumna :=10;
    UPDATE TEST SET COL2='EJEMPLO' WHERE COL1 LIKE primeraColumna;
    COMMIT;
END;