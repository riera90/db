select partidos.siglas
from partidos
	, eventos_resultados
where partidos.idpartido = eventos_resultados.partido
having count(eventos_resultados.evento) =
(
	select max(count(eventos_resultados.evento))
	from eventos_resultados
	group by eventos_resultados.partido
)
group by partidos.siglas;
