set serveroutput on;
declare
	nombre votantes.nombrecompleto%type;
begin
	select substr(votantes.nombrecompleto, 1, instr(votantes.nombrecompleto,' '))
	into nombre
	from votantes
	where votantes.dni = 30983712;
	dbms_output.put_line('nombre: '||nombre);
end;