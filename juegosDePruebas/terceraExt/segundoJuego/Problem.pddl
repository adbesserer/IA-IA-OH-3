(define (problem menus)
	(:domain catering)
	(:objects Lentejas Garbanzos Paella Sopa_de_bambu Entremeses - primero
			Fricando Cordero_con_patatas Canelones Pollo_ast Pastel_de_patata - segundo
			Lunes Martes Miercoles Jueves Viernes - dia
			Pescado Carne Verdura Pasta Otro - tipo
)
	(:init
	(primero Lentejas)(primero Garbanzos)(primero Paella)(primero Sopa_de_bambu)
	(primero Entremeses)
	
	(Segundo Fricando)(Segundo Cordero_con_patatas)(Segundo Canelones)(Segundo Pollo_ast)
	(Segundo Pastel_de_patata)

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

	(tipoP Lentejas Otro)
	(tipoP Garbanzos Otro)
	(tipoP Paella Pescado)
	(tipoP Sopa_de_bambu Verdura)
	(tipoP Entremeses Carne)
	
	(tipoS Fricando Carne)
	(tipoS Cordero_con_patatas Carne) 
	(tipoS Canelones Pescado)
	(tipoS Pollo_ast Carne)
	(tipoS Pastel_de_patata Pescado)
	
	(mustUse Viernes Lentejas)
	(RestrictedPrimero Viernes)
	(mustUse Viernes Pollo_ast)
	(RestrictedSegundo Viernes)
		
		(diaAnterior Lunes Martes)
		(diaAnterior Martes Miercoles)
		(diaAnterior Miercoles Jueves)
		(diaAnterior Jueves Viernes)
		
		(firstDay Lunes)

	)
	
	(:goal (forall (?d - dia) (hayMenu ?d))
	)
)
