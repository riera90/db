select consultas.votante
	, count(consultas.idconsulta)
from consultas
where consultas.votante not in
(
	select votantes.dni
	from votantes
	where votantes.fechanacimiento = 
	(
		select min(votantes.fechanacimiento)
		from votantes
		where votantes.fechanacimiento > (
			select min(votantes.fechanacimiento)
			from votantes
		)
	)
)
group by consultas.votante
order by count(consultas.idconsulta) desc;