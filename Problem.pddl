(define (problem menus)
	(:domain catering)
	(:objects Sopa_de_Pescado Ensalada Tortilla Gazpacho Ensaladilla_Rusa Spaghetti Lentejas - primero
			Bacalao_con_Samfaina Solomillo_con_Patatas Pollo_Brasa Hamburguesa_Vegetariana Calamares_Rellenos Lomo_Horno - segundo
)
	(:init
		(pred1 obj1T1)
		(pred1 obj2T1)
		(pred1 obj3T1)
		(pred2 obj1T2)
		(pred2 obj2T2)
		(pred2 obj3T2)
	)
	
	(:goal (forall (?V - tipo1) (pred1 ?V))
	)
)