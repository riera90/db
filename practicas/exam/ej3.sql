select localidades.nombre "localidad"
	, provincias.nombre "provincia"
from localidades
	, provincias
where provincias.idprovincia = localidades.provincia
and localidades.numerohabitantes >
(
	select localidades.numerohabitantes
	from localidades
	where localidades.idlocalidad in 
	(
		select votantes.localidad
		from votantes
		where votantes.fechanacimiento in 
		(
			select min(votantes.fechanacimiento)
			from votantes
			where votantes.fechanacimiento >
			(
				select min(votantes.fechanacimiento)
				from votantes
			)
		)
	) 
)