set serveroutput on;

declare
  cursor votantes is
    select votantes.nombrecompleto as nombre
      , count(consultas.idconsulta) as votos
      from votantes
        , consultas
      where consultas.votante = votantes.dni
      group by votantes.nombrecompleto
      order by count(consultas.idconsulta) desc;
begin
  for votante in votantes loop
    if votante.votos >= 4 
      then dbms_output.put_line(votante.nombre||' tiene '||votante.votos||' votos'); 
    end if;
  end loop;
end;


