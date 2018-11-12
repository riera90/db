set serveroutput on;

declare
  cursor l1 is
    select votantes.dni
      from votantes
      order by votantes.dni desc;
  cursor l2 is
    select votantes.dni
      from votantes
      where votantes.dni <> 
      (
        select max(votantes.dni) 
          from votantes
      )
      order by votantes.dni desc;
      
  i1 votantes.dni%type;
  i2 votantes.dni%type;
  
begin
  open l1;
  open l2;
  loop
    fetch l1 into i1;
    fetch l2 into i2;
    dbms_output.put_line(i1||'va antes de '||i2);
    exit when l2%notfound;
  end loop;
  fetch l1 into i1;
  dbms_output.put_line(i2||' es el menor');

  
  
end;