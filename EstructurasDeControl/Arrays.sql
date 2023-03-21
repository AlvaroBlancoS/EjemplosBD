declare
    /*Creamos un varray*/
   type nombre is varray(3) of varchar2(10);
   /*Y a partir de entonces utilizamos como si fuera un array.*/
   nombres nombre := nombre('Alvarito', 'Violeta', 'Rodrigo');
   /*Creo una variable constante que será el número de la posición*/
   pos CONSTANT number:=2;
begin
        dbms_output.put_line('Esto es un bucle que aparecen los nombres');
   for i in 1..nombres.count loop
        dbms_output.put_line(nombres(i));
   end loop;
        dbms_output.put_line('Esto aparece el resultado al agregar la posición '||pos||CHR(9)||CHR(10)||nombres(pos));
end;