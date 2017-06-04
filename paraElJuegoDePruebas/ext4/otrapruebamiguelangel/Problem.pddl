(define (problem menus)
	(:domain catering)
	(:objects Sopa_de_Pescado Ensalada Tortilla_de_Patatas Gazpacho Ensaladilla_Rusa Spaghetti_Pesto Lentejas - primero
			Bacalao_con_Samfaina Solomillo_con_Patatas Pollo_Brasa Hamburguesa_Vegetariana Callos Calamares_Rellenos Lomo_Horno Paella Pizza_Atun - segundo
			Lunes Martes Miercoles Jueves Viernes - dia
			Pescado Carne Verdura Pasta Otro - tipo
)
	(:init
		(primero Sopa_de_Pescado)(primero Ensalada)(primero Tortilla_de_Patatas)(primero Gazpacho)
		(primero Ensaladilla_Rusa)(primero Spaghetti_Pesto)(primero Lentejas)

		(Segundo Bacalao_con_Samfaina)(Segundo Solomillo_con_Patatas)(Segundo Pollo_Brasa)(Segundo Hamburguesa_Vegetariana)
		(Segundo Callos)(Segundo Calamares_Rellenos)(Segundo Lomo_Horno)(Segundo Paella)(Segundo Pizza_Atun)

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
		(NoCompatible Ensalada Paella)
		(NoCompatible Ensaladilla_Rusa Paella)
		(NoCompatible Spaghetti_Pesto Paella)
		(NoCompatible Spaghetti_Pesto Paella)

		(tipoP Sopa_de_Pescado Pescado)
		(tipoS Paella Pescado)
		(tipoS Bacalao_con_Samfaina Pescado)
		(tipoS Calamares_Rellenos Pescado)
		(tipoS Pizza_Atun Pescado)

		(tipoS Solomillo_con_Patatas Carne)
		(tipoP Lentejas Carne)
		(tipoS Pollo_Brasa Carne)
		(tipoS Callos Carne)
		(tipoS Lomo_Horno Carne)
		
		(tipoP Ensalada Verdura)
		(tipoP Ensaladilla_Rusa Verdura)
		(tipoP Gazpacho Verdura)
		
		(tipoP Tortilla_de_Patatas Otro)
		
		(tipoP Spaghetti_Pesto Pasta)
		

		(mustUse Jueves Paella)
		(RestrictedSegundo Jueves)

		(mustUse Lunes Ensaladilla_Rusa)
		(RestrictedPrimero Lunes)

		(diaAnterior Lunes Martes)
		(diaAnterior Martes Miercoles)
		(diaAnterior Miercoles Jueves)
		(diaAnterior Jueves Viernes)
		
		(firstDay Lunes)

		(= (Pcals Sopa_de_Pescado) 		400)
		(= (Pcals Ensalada) 			300)
		(= (Pcals Tortilla_de_Patatas) 	600)
		(= (Pcals Gazpacho) 			550)
		(= (Pcals Ensaladilla_Rusa) 	700)
		(= (Pcals Spaghetti_Pesto) 		650)
		(= (Pcals Lentejas) 			750)
		
		(= (Scals Bacalao_con_Samfaina) 	800)
		(= (Scals Solomillo_con_Patatas) 	900)
		(= (Scals Pollo_Brasa) 				700)
		(= (Scals Hamburguesa_Vegetariana) 	600)
		(= (Scals Callos) 					1100)
		(= (Scals Calamares_Rellenos) 		850)
		(= (Scals Lomo_Horno) 				750)
		(= (Scals Paella) 					950)
		(= (Scals Pizza_Atun) 				900)			

	)
	;(:metric minimize (coste-total))

	(:goal (forall (?d - dia) (hayMenu ?d))
	)
)
