(define (problem menus)
	(:domain catering)
	(:objects Sopa Pure Ensalada Ensaladilla Calabacines_rellenos - primero
			Pizza Pollo Merluza Espagueti Callos - segundo
			Lunes Martes Miercoles Jueves Viernes - dia
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
	
	(Pescado Merluza)
		
	(Carne Sopa)
	(Carne Calabacines_rellenos)
	(Carne Pollo)
	(Carne Callos)
		

	)
	
	(:goal (forall (?d - dia) (hayMenu ?d))
	)
)