select partidos.nombrecompleto "partido", count(consultas_datos.idrecogida) "num_consultas"
from partidos, consultas_datos
where partidos.idpartido=consultas_datos.partido
and consultas_datos.respuesta like 'Si'
and consultas_datos.certidumbre>=0.8
group by partidos.nombrecompleto;