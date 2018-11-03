check(
  ordenVuelta > 
  (
    select max(planetasVuelta.ordenVuelta)
      from planetasVuelta
  )
  
  and 
  (
        (
                IDe=
                (
                  select planetas.sistema
                    from planetas
                    where planetas.IDp=
                    (
                      select planetasVuelta.planeta
                        from planetasVuelta
                        where planetasVuelta.ordenVuelta=
                        (
                          select min(planetasVuelta.ordenVuelta)
                            from planetasVuelta
                        )
                    )
                )
                and
                planeta.distancia > 
                (
                  select planetas.distancia
                    from planetas
                    where planetas.IDp=
                    (
                      select planetasVuelta.planeta
                        from planetasVuelta
                        where planetasVuelta=
                        (
                          select min(planetasVuelta.orden)
                            from planetasVuelta
                        )
                    )
                )
        )
        or
        IDe <>
        (
          select planetas.sistema
            from planetas
            where planetas.IDp=
            (
              select planetasVuelta.planeta
                from planetasVuelta
                where planetasVuelta.ordenVuelta=
                (
                  select min(planetasVuelta.ordenVuelta)
                    from planetasVuelta
                )
            )
        )
  )
)