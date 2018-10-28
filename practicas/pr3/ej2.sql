select votantes.nombrecompleto "nombre",
	decode(provincias.nombre
		, 'Córdoba' ,'Madrid'
		, localidades.nombre) "provincia"
from votantes
	, provincias
	, localidades
where votantes.localidad=localidades.idlocalidad
	and localidades.provincia=provincias.idprovincia
order by localidades.nombre desc;
