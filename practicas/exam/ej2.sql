select votantes.nombrecompleto
	, votantes.fechanacimiento
from votantes
where votantes.fechanacimiento < 
(
	select partidos.fechacreacion
	from partidos
	where partidos.nombrecompleto = 'Partido Popular'
)
and votantes.localidad in 
(
	select localidades.idlocalidad
	from localidades
	where localidades.provincia in
	(
		select provincias.idprovincia
		from provincias
		where provincias.comunidad = 'Andalucia'
	)
)