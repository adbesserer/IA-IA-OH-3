import random

##########################################################################
##																		##
##							F U N C T I O N S 							##
##																		##
##########################################################################

def takePlatos(l, n):
	return random.sample(l, n)

def takeFst(l):
	i = 0
	ll = []
	for x in l:
		if not i%2:
			ll+=[x]
		i+=1
	return ll

def takeSnd(l):
	i = 0
	ll = []
	for x in l:
		if i%2:
			ll+=[x]
		i+=1
	return ll

def exists(t, l):
	for x in l:
		if x == t:
			return True
	return False

def incompatibles(l1, l2):
	inc = []
	while len(inc) != len(l1+l2):
		t = (random.choice(l1), random.choice(l2))
		if not exists(t, inc):
			inc += [t]
	return inc

def takeMust(l):
	ret = []
	n = random.randint(1, 2)
	dias 	= random.sample(['Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes'], n)
	platos 	= random.sample(l, n)
	i = 0
	while i != n:
		ret+=[(dias[i], platos[i])]
		i+=1
	return ret

def esPrimero(p, l):
	for elem in l:
		if p == elem:
			return True
	return False

def creatingTests(nFiles, platosPescado, platosCarne, platosArroz, platosPasta):
	total = 1
	while total-1 != nFiles:

		platosPrimero	= takeFst(platosPescado+platosCarne+platosArroz+platosPasta)
		platosSegundo	= takeSnd(platosPescado+platosCarne+platosArroz+platosPasta)

		platosIncompatibles	= incompatibles(platosPrimero, platosSegundo)

		mustUsePrimero	= takeMust(platosPrimero)
		mustUseSegundo	= takeMust(platosSegundo)

		####################################################################
		####################################################################

		file = open('juegoDePrueba'+str(total)+'.pddl', 'w')
		file.write('(define (problem menus)\n    (:domain catering)\n    (:objects ')

		for pp in platosPrimero:
			file.write(pp+' ')
		file.write('- primero\n            ')
		for sp in platosSegundo:
			file.write(sp+' ')
		file.write('- segundo\n')
		file.write('            Lunes Martes Miercoles Jueves Viernes - dia\n')
		file.write('            Pescado Carne Arroz Pasta - tipo\n)\n')

		file.write('    (:init\n        ')
		for pp in platosPrimero:
			file.write('(primero '+pp+')')
		file.write('\n\n        ')
		for sp in platosSegundo:
			file.write('(Segundo '+sp+')')
		file.write('\n\n')
		for ip in platosIncompatibles:
			file.write('            (NoCompatible '+ip[0]+' '+ip[1]+')\n')
		file.write('\n')

		### P E S C A D O ###
		for pesc in platosPescado:
			if esPrimero(pesc, platosPrimero):
				file.write('            (tipoP '+pesc+' Pescado)\n')
			else:
				file.write('            (tipoS '+pesc+' Pescado)\n')
		file.write('\n')

		### C A R N E ###
		for carn in platosCarne:
			if esPrimero(carn, platosPrimero):
				file.write('            (tipoP '+carn+' Pescado)\n')
			else:
				file.write('            (tipoS '+carn+' Pescado)\n')
		file.write('\n')
		
		### A R R O Z ###
		for arr in platosArroz:
			if esPrimero(arr, platosPrimero):
				file.write('            (tipoP '+arr+' Pescado)\n')
			else:
				file.write('            (tipoS '+arr+' Pescado)\n')
		file.write('\n')
		
		### P A S T A ###
		for past in platosPasta:
			if esPrimero(past, platosPrimero):
				file.write('            (tipoP '+past+' Pescado)\n')
			else:
				file.write('            (tipoS '+past+' Pescado)\n')
		file.write('\n')
		
		### M U S T   U S E   P R I M E R O ###
		for mup in mustUsePrimero:
			file.write('            (mustUse '+mup[0]+' '+mup[1]+')\n')
			file.write('            (RestrictedPrimero '+mup[0]+')\n')
		file.write('\n')

		### M U S T   U S E   S E G U N D O ###
		for mus in mustUseSegundo:
			file.write('            (mustUse '+mus[0]+' '+mus[1]+')\n')
			file.write('            (RestrictedSegundo '+mus[0]+')\n')
		file.write('\n')
		
		### F I R S T   D A Y   &   D I A    A N T E R I O R ###
		file.write('            (diaAnterior Lunes Martes)\n            (diaAnterior Martes Miercoles)'
			+'\n            (diaAnterior Miercoles Jueves)\n            (diaAnterior Jueves Viernes)\n\n            (firstDay Lunes)\n\n')

		### C A L O R I A S ###
		for pp in platosPrimero:
			file.write('            (= (Pcals '+pp+') '+str(random.randint(500, 800))+')\n')
		file.write('\n')

		for sp in platosSegundo:
			file.write('            (= (Scals '+sp+') '+str(random.randint(500, 800))+')\n')
		file.write('\n')

		### P R E C I O ###
		for pp in platosPrimero:
			file.write('            (= (Pprice '+pp+') '+str(random.randint(5, 15))+')\n')
		file.write('\n')

		for sp in platosSegundo:
			file.write('            (= (Sprice '+sp+') '+str(random.randint(5, 15))+')\n')
		file.write('\n')

		file.write('            (= (coste-total) 0)\n\n      )\n')

		### G O A L    &    M E T R I C ###

		file.write('    (:goal (forall (?d - dia) (hayMenu ?d)))\n    (:metric minimize (coste-total))\n)')

		####################################################################
		####################################################################

		total += 1


platosPescado	= ['Atún_al_horno', 'Bacalao_en_salsa_verde', 'Lubina_al_limon', 'Bacalao_con_tomate', 'Calamares_a_la_romana', 'Rabas_y_chocos', 'Cazón', 'Boquerones_al_vinagre', 'Anchoas', 'Pulpo_a_la_feira', 'Pez_espada_y_cosas_pijas', 'Langosta_a_la_salsa']
platosCarne 	= ['Conejo_asado', 'Solomillo_de_cerdo', 'Pato_a_la_naranja', 'Pollo_a_la_brasa', 'Rabo_de_toro', 'Botifarra_del_pages', 'Entrecot_al_roquefort', 'Costillitas_de_cordero', 'Galtas_de_cerdo', 'Callos', 'Hamburguesa_de_pollo', 'Pechuga_de_pollo']
platosArroz 	= ['Arroz_a_la_cubana', 'Ensalada_de_arroz', 'Cuscús', 'Paella', 'Arroz_con_curry', 'Arroz_con_setas', 'Arroz_tres_delicias', 'Arroz_frito_con_salsa_de_cebolla', 'Arroz_salteado_con_verduras', 'Arroz_con_bogavantes', 'Arroz', 'Risotto_con_gambas']
platosPasta 	= ['Macarrones_a_la_bolognesa', 'Macarrones_a_la_carbonara', 'Spaghetti_a_la_bolognesa', 'Spaghetti_al_pesto', 'Spaghetti_a_la_carbonara', 'Ramen', 'Sopa_de_fideos', 'Fideos_con_verduras', 'Fetuccini_a_la_putanesca', 'Ravioli_a_la_genovesa', 'Lasaña', 'Tallarines_con_verduras']


nFiles = 10

creatingTests(nFiles, platosPescado, platosCarne, platosArroz, platosPasta)