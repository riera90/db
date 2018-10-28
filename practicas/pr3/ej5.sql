select consultas.votante
	, count(consultas.evento)
from consultas
group by consultas.votante
order by count(consultas.evento) desc;
