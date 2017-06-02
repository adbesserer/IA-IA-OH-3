(define (domain catering)
	(:requirements :strips :typing :adl :equality :fluents)
	(:types  primero segundo dia tipo)
	(:predicates
		(primero ?p)			;true si un plato es primero
		(segundo ?p)			; true si un plato es un segundo
		(NoCompatible ?p1 - primero ?p2 - segundo) ; true si no son compatibles
		(firstDay ?d - dia)		; true si el dia es el primero
		
		(hayMenu ?dia - dia) 	; true si el dia ya tiene menu fijado
		(mustUse ?dia - dia ?p)	; true si en el dia 'dia' hay que usar el plato p
		(Used ?p) 				; true si un plato ya ha sido usado 
		(diaAnterior ?d1 ?d2)	; true si d1 es el dia anterior a d2
		
		(tipoP ?p - primero ?t - tipo) 	;true si p es de tipo t
		(tipoS ?p - segundo ?t - tipo) ; true si p es de tipo t

		(PDiaUsado ?p - primero ?d - dia) ;true si el primer plato p ha sido usado en dia
		(SDiaUsado ?s - segundo ?d - dia) ;true si el segundo plato p ha sido usado en dia 
		(tipoPrimeroDia ?t - tipo ?p - primero ?d - dia) ; true si en un dia se ha usado un primero de un tipo p
		(tipoSegundoDia ?t - tipo ?p - segundo ?d - dia) ; true si en un dia se hha usado un segundo de tipo p

		(primeroServido ?dia - dia)			;true si en el dia 'dia' se ha fijado ya el primero
		(RestrictedPrimero ?dia - dia)		;true si existen restricciones de primeros platos en dia
		(RestrictedSegundo ?dia - dia)		;true si existen restricciones de segundos platos en dia
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
				(increase (coste-total) (Pprice ?pp))
				(increase (coste-total) (Sprice ?sp))
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
				(increase (coste-total) (Pprice ?pp))
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
				(increase (coste-total) (Sprice ?sp))
				)
	)

	(:functions
		(Pcals ?p - primero) ;calorias de un primero
		(Scals ?p - segundo) ;calorias de un segundo

		(Pprice ?p - primero) ;precio de un primero
		(Sprice ?p - segundo) ;precio de un segundo

		(coste-total)		;coste total de toda la semana
	)

)
