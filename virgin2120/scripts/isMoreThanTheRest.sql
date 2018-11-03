check(
  ordenIda > 
  (
    select max(planetasIda.ordenIda)
      from planetasIda
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
                      select planetasIda.planeta
                        from planetasIda
                        where planetasIda.ordenIda=
                        (
                          select max(planetasIda.ordenIda)
                            from planetasIda
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
                      select planetasIda.planeta
                        from planetasIda
                        where planetasIda=
                        (
                          select max(planetasIda.orden)
                            from planetasIda
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
              select planetasIda.planeta
                from planetasIda
                where planetasIda.ordenIda=
                (
                  select max(planetasIda.ordenIda)
                    from planetasIda
                )
            )
        )
  )
)