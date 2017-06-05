(define (problem menus)
	(:domain catering)
	(:objects Sopa Pure Ensalada Ensaladilla Calabacines_rellenos - primero
			Pizza Pollo Merluza Espagueti Callos - segundo
			Lunes Martes Miercoles Jueves Viernes - dia
			Pescado Carne Verdura Pasta Otro - tipo
)
	(:init
	(primero Sopa)(primero Pure)(primero Ensalada)(primero Ensaladilla)
	(primero Calabacines_rellenos)
	
	(Segundo Pizza)(Segundo Pollo)(Segundo Merluza)(Segundo Espagueti)
	(Segundo Callos)

	(NoCompatible Sopa Pizza)
	(NoCompatible Sopa Espagueti)
	(NoCompatible Sopa Callos)
	(NoCompatible Pure Pollo)
	(NoCompatible Pure Merluza)
	(NoCompatible Pure Espagueti)
	(NoCompatible Ensalada Espagueti)
	(NoCompatible Ensaladilla Pizza)
	(NoCompatible Ensaladilla Pollo)
	(NoCompatible Ensaladilla Merluza)
	(NoCompatible Ensaladilla Espagueti)
	(NoCompatible Calabacines_rellenos Pizza)
	(NoCompatible Calabacines_rellenos Pollo)
	(NoCompatible Calabacines_rellenos Merluza)
	(NoCompatible Calabacines_rellenos Callos)

	(tipoP Ensalada Verdura)
	(tipoP Sopa Carne)
	(tipoP Pure Verdura)
	(tipoP Ensaladilla Verdura)
	(tipoP Calabacines_rellenos Otro)
	
	(tipoS Pizza Otro)
	(tipoS Pollo Carne)
	(tipoS Merluza Pescado)
	(tipoS Espagueti Pasta)
	(tipoS Callos Carne)

	
		(diaAnterior Lunes Martes)
		(diaAnterior Martes Miercoles)
		(diaAnterior Miercoles Jueves)
		(diaAnterior Jueves Viernes)
		
		(firstDay Lunes)

	)
	
	(:goal (forall (?d - dia) (hayMenu ?d))
	)
)
