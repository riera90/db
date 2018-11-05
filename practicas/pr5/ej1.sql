set serveroutput on;
declare
  cursor votantes_ok is 
    select votantes.nombrecompleto
      from votantes, localidades
      where
        (
          votantes.localidad=localidades.idlocalidad
          and votantes.dni like concat('%',localidades.idlocalidad + 1)
        )
        or
        (
          votantes.localidad=localidades.idlocalidad
          and votantes.localidad = 3
        );
      
  votante votantes%rowtype;
  counter number := 0;

begin  
  for votante in votantes_ok loop
    dbms_output.put_line(votante.nombrecompleto);
    counter := counter + 1 ;
    end loop;
    dbms_output.put_line('Hay un total de '||counter||' votantes');
end;