select votantes.nombrecompleto "nombre completo"
from votantes, localidades
where votantes.localidad=localidades.idlocalidad
	and votantes.dni like concat('%',localidades.idlocalidad+1);