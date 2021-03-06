(define (problem menus)
	(:domain catering)
	(:objects Lentejas Garbanzos Paella Sopa_de_bambu Entremeses Sopa Pure Ensalada Ensaladilla Calabacines_rellenos - primero
			Fricando Cordero_con_patatas Canelones Pollo_ast Pastel_de_patata Pizza Pollo Merluza Espagueti Callos - segundo
			Lunes Martes Miercoles Jueves Viernes - dia
			Pescado Carne Verdura Pasta Otro - tipo
)
	(:init
	(primero Lentejas)(primero Garbanzos)(primero Paella)(primero Sopa_de_bambu)
	(primero Entremeses)
	(primero Sopa)(primero Pure)(primero Ensalada)(primero Ensaladilla)
	(primero Calabacines_rellenos)
	
	(Segundo Fricando)(Segundo Cordero_con_patatas)(Segundo Canelones)(Segundo Pollo_ast)
	(Segundo Pastel_de_patata)
	(Segundo Pizza)(Segundo Pollo)(Segundo Merluza)(Segundo Espagueti)
	(Segundo Callos)
	
	(NoCompatible Lentejas Fricando)
	(NoCompatible Lentejas Cordero_con_patatas)
	(NoCompatible Lentejas Canelones)
	(NoCompatible Lentejas Pastel_de_patata)
	(NoCompatible Garbanzos Cordero_con_patatas)
	(NoCompatible Garbanzos Canelones)
	(NoCompatible Garbanzos Pastel_de_patata)
	(NoCompatible Garbanzos Pollo_ast)
	(NoCompatible Paella Fricando)
	(NoCompatible Paella Canelones)
	(NoCompatible Paella Pastel_de_patata)
	(NoCompatible Paella Pollo_ast)
	(NoCompatible Sopa_de_bambu Fricando)
	(NoCompatible Sopa_de_bambu Cordero_con_patatas)
	(NoCompatible Sopa_de_bambu Canelones)
	(NoCompatible Sopa_de_bambu Pollo_ast)
	(NoCompatible Entremeses Fricando)
	(NoCompatible Entremeses Cordero_con_patatas)
	(NoCompatible Entremeses Pastel_de_patata) 
	(NoCompatible Entremeses Pollo_ast)
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
	(NoCompatible Lentejas Pizza)
	(NoCompatible Lentejas Espagueti)
	(NoCompatible Garbanzos Pizza)
	(NoCompatible Garbanzos Espagueti)
	(NoCompatible Paella Pizza)
	(NoCompatible Paella Pollo)
	(NoCompatible Paella Espagueti)
	(NoCompatible Paella Callos)
	(NoCompatible Sopa_de_bambu Pizza)
	(NoCompatible Sopa_de_bambu Espagueti)
	(NoCompatible Sopa_de_bambu Callos)
	(NoCompatible Entremeses Merluza)
	(NoCompatible Sopa Pastel_de_patata)
	(NoCompatible Pure Canelones)
	(NoCompatible Pure Pastel_de_patata)
    (NoCompatible Ensalada Pastel_de_patata)
	(NoCompatible Ensaladilla Pastel_de_patata)
	(NoCompatible Calabacines_rellenos Canelones)
	(NoCompatible Calabacines_rellenos Pastel_de_patata)
	
	
	(tipoP Lentejas Otro)
	(tipoP Garbanzos Otro)
	(tipoP Paella Pescado)
	(tipoP Sopa_de_bambu Verdura)
	(tipoP Entremeses Carne)
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
	(tipoS Fricando Carne)
	(tipoS Cordero_con_patatas Carne) 
	(tipoS Canelones Pescado)
	(tipoS Pollo_ast Carne)
	(tipoS Pastel_de_patata Pescado)
		
		(diaAnterior Lunes Martes)
		(diaAnterior Martes Miercoles)
		(diaAnterior Miercoles Jueves)
		(diaAnterior Jueves Viernes)
		
		(firstDay Lunes)
		
		(= (Pcals Lentejas) 500)
		(= (Pcals Garbanzos) 400)
		(= (Pcals Paella) 500)
		(= (Pcals Sopa_de_bambu) 300)
		(= (Pcals Entremeses) 450)
		(= (Pcals Sopa) 400)
		(= (Pcals Pure) 300)
		(= (Pcals Ensalada) 320)
		(= (Pcals Ensaladilla) 350)
		(= (Pcals Calabacines_rellenos) 400)
		
		(= (Scals Fricando) 600)
		(= (Scals Cordero_con_patatas) 700)
		(= (Scals Canelones) 700)
		(= (Scals Pollo_ast) 550)
		(= (Scals Pastel_de_patata) 630)
		(= (Scals Pizza) 650)
		(= (Scals Pollo) 550)
		(= (Scals Merluza) 430)
		(= (Scals Espagueti) 700)
		(= (Scals Callos) 750)
		
		(= (Pprice Lentejas) 6.5)
		(= (Pprice Garbanzos) 5.0)
		(= (Pprice Paella) 13.5)
		(= (Pprice Sopa_de_bambu) 5)
		(= (Pprice Entremeses) 7.5)
		(= (Pprice Sopa) 5.5)
		(= (Pprice Pure) 6)
		(= (Pprice Ensalada) 6)
		(= (Pprice Ensaladilla) 6.5)
		(= (Pprice Calabacines_rellenos) 5.5)
		
		(= (Sprice Fricando) 8.5)
		(= (Sprice Cordero_con_patatas) 12)
		(= (Sprice Canelones) 8)
		(= (Sprice Pollo_ast) 8)
		(= (Sprice Pastel_de_patata) 7)
		(= (Sprice Pizza) 8)
		(= (Sprice Pollo) 7)
		(= (Sprice Merluza) 10)
		(= (Sprice Espagueti) 7.5)
		(= (Sprice Callos) 9)
	)
	;(:metric minimize (coste-total))
	(:goal (forall (?d - dia) (hayMenu ?d))
	)
)
