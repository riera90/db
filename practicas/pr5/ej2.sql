set serveroutput on;

declare
  cursor votantes is
    select votantes.nombrecompleto as nombre,
      decode(provincias.nombre
        , 'Córdoba' ,'Madrid'
        , localidades.nombre) as provincia
    from votantes
      , provincias
      , localidades
    where votantes.localidad=localidades.idlocalidad
      and localidades.provincia=provincias.idprovincia
    order by localidades.nombre desc;
    
    counter number := 0;
  
begin
  for votante in votantes loop
    dbms_output.put_line(votante.nombre||' esta en '||votante.provincia);
    if votante.provincia = 'Madrid'
      then counter := counter + 1;
    end if;
  end loop;
    dbms_output.put_line('Hay un total de '||counter||' votantes');
    
end;