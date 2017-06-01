(define (problem menus)
	(:domain catering)
	(:objects Sopa_de_Pescado Ensalada Tortilla_de_Patatas Gazpacho Ensaladilla_Rusa Spaghetti_Pesto Lentejas - primero
			Bacalao_con_Samfaina Solomillo_con_Patatas Pollo_Brasa Hamburguesa_Vegetariana Callos Calamares_Rellenos Lomo_Horno - segundo
			Lunes Martes Miercoles Jueves Viernes Sabado Domingo - dia
)
	(:init
		(primero Sopa_de_Pescado)(primero Ensalada)(primero Tortilla_de_Patatas)(primero Gazpacho)
		(primero Ensaladilla_Rusa)(primero Spaghetti_Pesto)(primero Lentejas)
		
		(Segundo Bacalao_con_Samfaina)(Segundo Solomillo_con_Patatas)(Segundo Pollo_Brasa)(Segundo Hamburguesa_Vegetariana)
		(Segundo Callos)(Segundo Calamares_Rellenos)(Segundo Lomo_Horno)

		(NoCompatible Sopa_de_Pescado Callos)
		(NoCompatible Sopa_de_Pescado Hamburguesa_Vegetariana)
		(NoCompatible Tortilla_de_Patatas Hamburguesa_Vegetariana)
		(NoCompatible Gazpacho Callos)
		(NoCompatible Gazpacho Calamares_Rellenos)
		(NoCompatible Ensaladilla_Rusa Bacalao_con_Samfaina)
		(NoCompatible Ensaladilla_Rusa Callos)
		(NoCompatible Ensaladilla_Rusa Calamares_Rellenos)
		(NoCompatible Spaghetti_Pesto Callos)
		(NoCompatible Lentejas Callos)
		(NoCompatible Lentejas Bacalao_con_Samfaina)
		(NoCompatible Lentejas Hamburguesa_Vegetariana)
		(NoCompatible Lentejas Calamares_Rellenos)

		(Pescado Sopa_de_Pescado)
		(Pescado Bacalao_con_Samfaina)
		(Pescado Calamares_Rellenos)

		(Carne Solomillo_con_Patatas)
		(Carne Lentejas)
		(Carne Pollo_Brasa)
		(Carne Callos)
		(Carne Lomo_Horno)

	)
	
	(:goal (forall (?d - dia) (hayMenu ?d))
	)
)