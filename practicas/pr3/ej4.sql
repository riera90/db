select votantes.dni
from votantes
where votantes.fechaNacimiento =
(
	select min(votantes.fechaNacimiento)
	from votantes
	where votantes.fechaNacimiento >
	(
		select min(votantes.fechaNacimiento)
		from votantes
	)
);
