select consultas.votante
	, count(consultas.evento)
from consultas
having count(consultas.evento) >
(
	select avg(count(consultas.evento))
	from consultas
	group by consultas.votante
)
group by consultas.votante
order by count(consultas.evento) desc;
