set serveroutput on;
declare
	nombre votantes.nombrecompleto%type;
	email votantes.email%type;
begin
	select substr(votantes.nombrecompleto, 1, instr(votantes.nombrecompleto,' '))
		, votantes.email
	into nombre
		, email
	from votantes
	where votantes.dni = 30983712;
	dbms_output.put_line(npombre||' con correo: '||email);
end;