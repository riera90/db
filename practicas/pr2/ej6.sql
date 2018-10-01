select partidos.idpartido "id partido", count(consultas_datos.idrecogida) "conteo"
from partidos, consultas_datos
where partidos.idpartido=consultas_datos.partido
group by partidos.idpartido;