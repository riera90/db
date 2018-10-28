select votantes.dni
	, count(consultas.evento)
from consultas
 , votantes
where 
group by consultas.votante
order by count(consultas.evento) desc;


select votantes.fechanacimiento
from votantes
where votantes.fechanacimiento > min(votantes.fechanacimiento)