BEGIN
/*
Siempre es importante que funcione BEGIN y END; para evitar el error. Más o menos es
parecido el método main en java.
BDMS_OUTPUT.PUT_LINE esto es imprimir por pantalla como System.out.print en java
|| es concatenar como el operador + en java
chr(10) es saltar la línea como \n en java 
*/
DBMS_OUTPUT.put_line('Este es un mensaje'||chr(10)||'Estoy haciendo una prueba');
END;


