set serveroutput on;
declare
	nombre votantes.nombrecompleto%type;
	apellidos votantes.nombrecompleto%type;
begin
	select 
		decode(substr(votantes.nombrecompleto, 1, instr(votantes.nombrecompleto,' '))
			, 'jose', 'pepe'
			, substr(votantes.nombrecompleto, 1, instr(votantes.nombrecompleto,' '))
		, substr(votantes.nombrecompleto, instr(votantes.nombrecompleto,' '), end)
	into nombre
		, apellidos
	from votantes
	where votantes.dni = 30983712;
	dbms_output.put_line(||nombre||' '||apellidos);
end;