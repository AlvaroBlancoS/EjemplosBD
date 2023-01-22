DECLARE
/*
Tal como puedes observar, en la primera
variable es constante. En vez de utilizar
final como java, utiliza CONSTANT. Una variable
que no se puede modificar. En la segunda variable 
tiene un NOT NULL para indicar que el valor no 
puede dejar vac�o. Es evidente que est� pensado 
para sql
*/
    X CONSTANT NUMBER:=10;
    Z NUMBER NOT NULL:=20;
BEGIN
    DBMS_OUTPUT.put_line(X||CHR(10)||Z);
END;




