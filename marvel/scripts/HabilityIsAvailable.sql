create trigger HabilityIsAvailable1
	instead of insert on MovAtack
begin
	if (Habilidad in
		select ph.Habilidad
			from Personaje-Hablilidad as ph
			where ph.Personaje = Personaje
	
	) then 
	insert into MovAtack
		values (Hora, Fecha, Personaje, Habilidad);
end;
	
	
create trigger HabilityIsAvailable2
	instead of insert on MovDef
begin
	if (Habilidad in
		select ph.Habilidad
			from Personaje-Hablilidad as ph
			where ph.Personaje = Personaje
	
	) then 
	insert into MovDef
		values (Hora, Fecha, Personaje, Habilidad);
end;