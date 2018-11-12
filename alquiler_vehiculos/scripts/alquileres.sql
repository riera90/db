constraint(
  check(
    Matricula in
      select Flota.matricula 
        from Flota
        where Flota.Oficina=Oficina
  )
)