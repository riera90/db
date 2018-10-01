select partidos.idpartido "partido", count(consultas_datos.idrecogida) "count(patido)"
from partidos, consultas_datos
where partidos.idpartido=consultas_datos.partido
group by partidos.idpartido;