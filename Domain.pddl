(define (domain catering)
	(:requirements :strips :typing :adl :equality)
	(:types  primero segundo dia tipo)
	(:predicates
		(primero ?p)
		(segundo ?p)
		(NoCompatible ?p1 - primero ?p2 - segundo)
		
		(hayMenu ?dia - dia)
		(mustUse ?dia - dia ?p)
		(Used ?p)
		(diaAnterior ?d1 ?d2)
		
		(tipoP ?p - primero ?t - tipo)
		(tipoS ?p - segundo ?t - tipo)

		(PDiaUsado ?p - primero ?d - dia)
		(SDiaUsado ?s - segundo ?d - dia)
		(tipoPrimeroDia ?t - tipo ?p - primero ?d - dia)
		(tipoSegundoDia ?t - tipo ?p - segundo ?d - dia)

		(primeroServido ?dia)
	)
	
	(:action servir_lunes 
		:parameters (?d - dia ?pp - primero ?sp - segundo ?tp - tipo ?ts - tipo)
		:precondition (and
						(= Lunes ?d)
						(not (Used ?sp))
						(not (Used ?pp))
						(not (primeroServido ?d))
						(not (NoCompatible ?pp ?sp))
						(not (hayMenu ?d))
						(tipoP ?pp ?tp)
						(tipoS ?sp ?ts)
					)
		:effect (and
				(hayMenu ?d)
				(Used ?pp)
				(Used ?sp)
				(PDiaUsado ?pp ?d)
				(SDiaUsado ?sp ?d)
				(tipoPrimeroDia ?tp ?pp ?d)
				(tipoSegundoDia ?ts ?sp ?d)
			)
	)

	(:action servir_primero
		:parameters (?dAnt - dia ?ppAnt - primero ?tAnt - tipo ?d - dia ?pp - primero ?t - tipo) ; menu dia anterior y de hoy
		:precondition (and
						(not (= Lunes ?d))
						(diaAnterior ?dAnt ?d)
						(not (Used ?pp))
						(not (hayMenu ?d))
						(not (primeroServido ?d))
						(tipoP ?pp ?t)
						(tipop ?ppAnt ?tAnt)
						(not (= ?t ?tAnt))
						(not (exists (?x - dia)
								(and
									(not(= ?x ?d))
									(mustUse ?x ?pp)
								)
							)
						)
					  )
		:effect (and
				(primeroServido ?d)
				(Used ?pp)
				(PDiaUsado ?pp ?d)
				)
	)
	(:action servir_segundo
		:parameters (?dAnt - dia ?spAnt - segundo ?tAnt - tipo ?d - dia  ?pp - primero ?sp - segundo ?t - tipo ) ; menu dia anterior y de hoy
		:precondition (and
						(not (= Lunes ?d))
						(diaAnterior ?dAnt ?d)
						(primeroServido ?d)
						(PDiaUsado ?pp ?d)
						(not (Used ?sp))
						(not (hayMenu ?d))
						(not (NoCompatible ?pp ?sp))
						(tipoS ?sp ?t)
						(tipoS ?spAnt ?tAnt)
						(not (= ?t ?tAnt))
						(not (exists (?x - dia)
								(and
									(not(= ?x ?d))
									(mustUse ?x ?sp)
								)
							)
						)
					  )
		:effect (and
				(Used ?sp)
				(hayMenu ?d)
				(SDiaUsado ?sp ?d)
				)
	)
;	(:action crear_menu
;		:parameters (?dAnt - dia ?spAnt - primero ?spAnt - segundo ?d - dia ?pp - primero ?sp - segundo) ; menu dia anterior y de hoy
;		:precondition (and
;						(primero ?pp)
;						(segundo ?sp)
;						(not (NoCompatible ?pp ?sp))
;						(not (Used ?pp))
;						(not (Used ?sp))
;						(not (hayMenu ?d))
;						(not (and 
;								(diaAnterior ?dAnt ?d)
;								(or
;									(and
;									(PDiaUsado ?ppAnt ?dAnt)	
;									(tipoP ?pp Pescado)
;									(tipoP ?ppAnt Pescado)
;									)
;									(and
;									(SDiaUsado ?spAnt ?dAnt)	
;									(tipoS ?sp Carne)
;									(tipoS ?spAnt Carne)
;							 		)
;								)
;							)
;						)
;						(not (exists (?x - dia)
;								(and
;									(not(= ?x ?d))
;									(or
;										(mustUse ?x ?pp)
;										(mustUse ?x ?sp)
;									)
;								)
;							)
;						)
;					  )
;		:effect (and
;				(menu ?d ?pp ?sp)
;				(Used ?pp)
;				(Used ?sp)
;				(hayMenu ?d)
;				(PDiaUsado ?pp ?d)
;				(SDiaUsado ?sp ?d)
;				)
;	)

	;(:functions
	;	(funcion1 ?p - primero)
	;	(funcion2 ?p - segundo)
	;	(coste-total)
	;)
)
