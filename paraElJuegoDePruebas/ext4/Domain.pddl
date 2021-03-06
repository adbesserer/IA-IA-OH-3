(define (domain catering)
	(:requirements :strips :typing :adl :equality :fluents)
	(:types  primero segundo dia tipo)
	(:predicates
		(primero ?p)
		(segundo ?p)
		(NoCompatible ?p1 - primero ?p2 - segundo)
		(firstDay ?d - dia)
		
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

		(primeroServido ?dia - dia)
		(RestrictedPrimero ?dia - dia)
		(RestrictedSegundo ?dia - dia)
	)
	
	(:action servir_lunes 
		:parameters (?d - dia ?pp - primero ?sp - segundo ?tp - tipo ?ts - tipo)
		:precondition (and
						(and
							(<= (+ (PCals ?pp)(Scals ?sp)) 1500)
							(>= (+ (PCals ?pp)(Scals ?sp)) 1000)
						)
						(firstDay ?d)
						(not (Used ?sp))
						(not (Used ?pp))
						(not (primeroServido ?d))
						(not (NoCompatible ?pp ?sp))
						(not (hayMenu ?d))
						(tipoP ?pp ?tp)
						(tipoS ?sp ?ts)
						(or   							;; Esta or sirve para fijar un plato en un dia
							(not (RestrictedPrimero ?d))
							(mustUse ?d ?pp)
						)
						(or   							;; Esta or sirve para fijar un plato en un dia
							(not (RestrictedSegundo ?d))
							(mustUse ?d ?sp)
						)
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
						(not (firstDay ?d))
						(not (hayMenu ?d))
						(diaAnterior ?dAnt ?d)
						(not (Used ?pp))
						(not (primeroServido ?d))
						(PDiaUsado ?ppAnt ?dAnt)
						(tipoP ?pp ?t)
						(tipop ?ppAnt ?tAnt)
						(or 
							(= Otro ?t)		;los platos de tipo 'Otro' pueden repetirse 
							(not (= ?t ?tAnt))
						)
						(or   							;; Esta or sirve para fijar un plato en un dia
							(not (RestrictedPrimero ?d))
							(mustUse ?d ?pp)
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
						(and
							(<= (+ (PCals ?pp)(Scals ?sp)) 1500)
							(>= (+ (PCals ?pp)(Scals ?sp)) 1000)
						)
						(not (firstDay ?d))
						(diaAnterior ?dAnt ?d)
						(primeroServido ?d)
						(PDiaUsado ?pp ?d)
						(SDiaUsado ?spAnt ?dAnt)
						(not (Used ?sp))
						(not (hayMenu ?d))
						(not (NoCompatible ?pp ?sp))
						(tipoS ?sp ?t)
						(tipoS ?spAnt ?tAnt)
						(or 
							(= Otro ?t)		;los platos de tipo 'Otro' pueden repetirse 
							(not (= ?t ?tAnt))
						)
						(or
							(not (RestrictedSegundo ?d))
							(mustUse ?d ?sp)
						)
					  )
		:effect (and
				(Used ?sp)
				(hayMenu ?d)
				(SDiaUsado ?sp ?d)
				)
	)

	(:functions
		(Pcals ?p - primero)
		(Scals ?p - segundo)
		;(coste-total)
	)

)
