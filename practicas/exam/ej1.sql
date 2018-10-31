select localidades.nombre
	, localidades.numerohabitantes
from votantes
	, localidades
where votantes.fechanacimiento = 
(
	select max(votantes.fechanacimiento)
	from votantes
)
and votantes.localidad = localidades.idlocalidad