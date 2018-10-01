select partidos.nombrecompleto "nombrepartido+10cpnsultas", count(consultas_datos.idrecogida) "num_consultas"
from partidos, consultas_datos
where consultas_datos.partido=partidos.idpartido
having count(consultas_datos.idrecogida)>=10
group by partidos.nombrecompleto;