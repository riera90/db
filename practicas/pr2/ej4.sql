select votantes.nombrecompleto "persona", localidades.nombre"localidad" 
from votantes, localidades
where localidades.numerohabitantes >= 300000
and votantes.localidad=localidades.idlocalidad;