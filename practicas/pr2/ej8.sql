select partidos.nombrecompleto "nombrepartido+10cpnsultas"
from partidos, consultas_datos
where consultas_datos.partido=partidos.idpartido
having count(consultas_datos.idrecogida)>=10
group by partidos.nombrecompleto;