select votantes.nombrecompleto "persona", provincias.comunidad"provincia" 
from votantes, localidades, provincias
where localidades.numerohabitantes >= 300000
and votantes.localidad=localidades.idlocalidad
and provincias.idprovincia=localidades.provincia;