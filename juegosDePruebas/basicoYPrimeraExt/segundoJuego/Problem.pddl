(define (problem menus)
	(:domain catering)
	(:objects Lentejas Garbanzos Paella Sopa_de_bambu Entremeses - primero
			Fricando Cordero_con_patatas Canelones Pollo_ast Pastel_de_patata - segundo
			Lunes Martes Miercoles Jueves Viernes - dia
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
	
	(Pescado Paella)
	(Pescado Pastel_de_patata)
	
	(Carne Entremeses)
	(Carne Fricando)
	(Carne Cordero_con_patatas)
	(Carne Pollo_ast)
	(Carne Canelones)

	)
	
	(:goal (forall (?d - dia) (hayMenu ?d))
	)
)