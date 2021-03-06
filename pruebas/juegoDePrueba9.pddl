(define (problem menus)
    (:domain catering)
    (:objects Atun_al_horno Lubina_al_limon Calamares_a_la_romana Cazon Anchoas Pez_espada_y_cosas_pijas Conejo_asado Pato_a_la_naranja Rabo_de_toro Entrecot_al_roquefort Galtas_de_cerdo Hamburguesa_de_pollo Arroz_a_la_cubana Cuscus Arroz_con_curry Arroz_tres_delicias Arroz_salteado_con_verduras Arroz_blanco Macarrones_a_la_bolognesa Spaghetti_a_la_bolognesa Spaghetti_a_la_carbonara Sopa_de_fideos Fetuccini_a_la_putanesca Lasanya - primero
            Bacalao_en_salsa_verde Bacalao_con_tomate Rabas_y_chocos Boquerones_al_vinagre Pulpo_a_la_feira Langosta_a_la_salsa Solomillo_de_cerdo Pollo_a_la_brasa Botifarra_del_pages Costillitas_de_cordero Callos Pechuga_de_pollo Ensalada_de_arroz Paella Arroz_con_setas Arroz_frito_con_salsa_de_cebolla Arroz_con_bogavantes Risotto_con_gambas Macarrones_a_la_carbonara Spaghetti_al_pesto Ramen Fideos_con_verduras Ravioli_a_la_genovesa Tallarines_con_verduras - segundo
            Lunes Martes Miercoles Jueves Viernes - dia
            Pescado Carne Otro Pasta - tipo
)
    (:init
        (primero Atun_al_horno)(primero Lubina_al_limon)(primero Calamares_a_la_romana)(primero Cazon)(primero Anchoas)(primero Pez_espada_y_cosas_pijas)(primero Conejo_asado)(primero Pato_a_la_naranja)(primero Rabo_de_toro)(primero Entrecot_al_roquefort)(primero Galtas_de_cerdo)(primero Hamburguesa_de_pollo)(primero Arroz_a_la_cubana)(primero Cuscus)(primero Arroz_con_curry)(primero Arroz_tres_delicias)(primero Arroz_salteado_con_verduras)(primero Arroz_blanco)(primero Macarrones_a_la_bolognesa)(primero Spaghetti_a_la_bolognesa)(primero Spaghetti_a_la_carbonara)(primero Sopa_de_fideos)(primero Fetuccini_a_la_putanesca)(primero Lasanya)

        (segundo Bacalao_en_salsa_verde)(segundo Bacalao_con_tomate)(segundo Rabas_y_chocos)(segundo Boquerones_al_vinagre)(segundo Pulpo_a_la_feira)(segundo Langosta_a_la_salsa)(segundo Solomillo_de_cerdo)(segundo Pollo_a_la_brasa)(segundo Botifarra_del_pages)(segundo Costillitas_de_cordero)(segundo Callos)(segundo Pechuga_de_pollo)(segundo Ensalada_de_arroz)(segundo Paella)(segundo Arroz_con_setas)(segundo Arroz_frito_con_salsa_de_cebolla)(segundo Arroz_con_bogavantes)(segundo Risotto_con_gambas)(segundo Macarrones_a_la_carbonara)(segundo Spaghetti_al_pesto)(segundo Ramen)(segundo Fideos_con_verduras)(segundo Ravioli_a_la_genovesa)(segundo Tallarines_con_verduras)

            (NoCompatible Conejo_asado Boquerones_al_vinagre)
            (NoCompatible Arroz_blanco Callos)
            (NoCompatible Conejo_asado Arroz_con_bogavantes)
            (NoCompatible Spaghetti_a_la_bolognesa Solomillo_de_cerdo)
            (NoCompatible Macarrones_a_la_bolognesa Arroz_con_bogavantes)
            (NoCompatible Entrecot_al_roquefort Costillitas_de_cordero)
            (NoCompatible Arroz_salteado_con_verduras Ensalada_de_arroz)
            (NoCompatible Lubina_al_limon Arroz_con_bogavantes)
            (NoCompatible Arroz_tres_delicias Pechuga_de_pollo)
            (NoCompatible Rabo_de_toro Langosta_a_la_salsa)
            (NoCompatible Galtas_de_cerdo Risotto_con_gambas)
            (NoCompatible Entrecot_al_roquefort Macarrones_a_la_carbonara)
            (NoCompatible Cazon Fideos_con_verduras)
            (NoCompatible Fetuccini_a_la_putanesca Solomillo_de_cerdo)
            (NoCompatible Hamburguesa_de_pollo Pechuga_de_pollo)
            (NoCompatible Fetuccini_a_la_putanesca Boquerones_al_vinagre)
            (NoCompatible Spaghetti_a_la_carbonara Tallarines_con_verduras)
            (NoCompatible Arroz_tres_delicias Arroz_con_bogavantes)
            (NoCompatible Fetuccini_a_la_putanesca Ensalada_de_arroz)
            (NoCompatible Arroz_tres_delicias Ensalada_de_arroz)
            (NoCompatible Pez_espada_y_cosas_pijas Boquerones_al_vinagre)
            (NoCompatible Arroz_salteado_con_verduras Bacalao_con_tomate)
            (NoCompatible Sopa_de_fideos Boquerones_al_vinagre)
            (NoCompatible Pato_a_la_naranja Solomillo_de_cerdo)
            (NoCompatible Macarrones_a_la_bolognesa Risotto_con_gambas)
            (NoCompatible Macarrones_a_la_bolognesa Solomillo_de_cerdo)
            (NoCompatible Conejo_asado Ravioli_a_la_genovesa)
            (NoCompatible Entrecot_al_roquefort Arroz_con_bogavantes)
            (NoCompatible Entrecot_al_roquefort Callos)
            (NoCompatible Pato_a_la_naranja Boquerones_al_vinagre)
            (NoCompatible Arroz_salteado_con_verduras Pulpo_a_la_feira)
            (NoCompatible Sopa_de_fideos Arroz_frito_con_salsa_de_cebolla)
            (NoCompatible Arroz_salteado_con_verduras Arroz_con_bogavantes)
            (NoCompatible Arroz_salteado_con_verduras Arroz_frito_con_salsa_de_cebolla)
            (NoCompatible Entrecot_al_roquefort Risotto_con_gambas)
            (NoCompatible Calamares_a_la_romana Ramen)
            (NoCompatible Lubina_al_limon Langosta_a_la_salsa)
            (NoCompatible Arroz_blanco Pulpo_a_la_feira)
            (NoCompatible Spaghetti_a_la_carbonara Solomillo_de_cerdo)
            (NoCompatible Atun_al_horno Ravioli_a_la_genovesa)
            (NoCompatible Arroz_blanco Costillitas_de_cordero)
            (NoCompatible Arroz_a_la_cubana Paella)
            (NoCompatible Pez_espada_y_cosas_pijas Costillitas_de_cordero)
            (NoCompatible Macarrones_a_la_bolognesa Langosta_a_la_salsa)
            (NoCompatible Cazon Ensalada_de_arroz)
            (NoCompatible Hamburguesa_de_pollo Fideos_con_verduras)
            (NoCompatible Arroz_salteado_con_verduras Langosta_a_la_salsa)
            (NoCompatible Lasanya Boquerones_al_vinagre)

            (tipoP Atun_al_horno Pescado)
            (tipoS Bacalao_en_salsa_verde Pescado)
            (tipoP Lubina_al_limon Pescado)
            (tipoS Bacalao_con_tomate Pescado)
            (tipoP Calamares_a_la_romana Pescado)
            (tipoS Rabas_y_chocos Pescado)
            (tipoP Cazon Pescado)
            (tipoS Boquerones_al_vinagre Pescado)
            (tipoP Anchoas Pescado)
            (tipoS Pulpo_a_la_feira Pescado)
            (tipoP Pez_espada_y_cosas_pijas Pescado)
            (tipoS Langosta_a_la_salsa Pescado)

            (tipoP Conejo_asado Carne)
            (tipoS Solomillo_de_cerdo Carne)
            (tipoP Pato_a_la_naranja Carne)
            (tipoS Pollo_a_la_brasa Carne)
            (tipoP Rabo_de_toro Carne)
            (tipoS Botifarra_del_pages Carne)
            (tipoP Entrecot_al_roquefort Carne)
            (tipoS Costillitas_de_cordero Carne)
            (tipoP Galtas_de_cerdo Carne)
            (tipoS Callos Carne)
            (tipoP Hamburguesa_de_pollo Carne)
            (tipoS Pechuga_de_pollo Carne)

            (tipoP Arroz_a_la_cubana Otro)
            (tipoS Ensalada_de_arroz Otro)
            (tipoP Cuscus Otro)
            (tipoS Paella Otro)
            (tipoP Arroz_con_curry Otro)
            (tipoS Arroz_con_setas Otro)
            (tipoP Arroz_tres_delicias Otro)
            (tipoS Arroz_frito_con_salsa_de_cebolla Otro)
            (tipoP Arroz_salteado_con_verduras Otro)
            (tipoS Arroz_con_bogavantes Otro)
            (tipoP Arroz_blanco Otro)
            (tipoS Risotto_con_gambas Otro)

            (tipoP Macarrones_a_la_bolognesa Pasta)
            (tipoS Macarrones_a_la_carbonara Pasta)
            (tipoP Spaghetti_a_la_bolognesa Pasta)
            (tipoS Spaghetti_al_pesto Pasta)
            (tipoP Spaghetti_a_la_carbonara Pasta)
            (tipoS Ramen Pasta)
            (tipoP Sopa_de_fideos Pasta)
            (tipoS Fideos_con_verduras Pasta)
            (tipoP Fetuccini_a_la_putanesca Pasta)
            (tipoS Ravioli_a_la_genovesa Pasta)
            (tipoP Lasanya Pasta)
            (tipoS Tallarines_con_verduras Pasta)

            (mustUse Miercoles Arroz_salteado_con_verduras)
            (RestrictedPrimero Miercoles)

            (mustUse Martes Ravioli_a_la_genovesa)
            (RestrictedSegundo Martes)
            (mustUse Jueves Pechuga_de_pollo)
            (RestrictedSegundo Jueves)

            (diaAnterior Lunes Martes)
            (diaAnterior Martes Miercoles)
            (diaAnterior Miercoles Jueves)
            (diaAnterior Jueves Viernes)

            (firstDay Lunes)

            (= (Pcals Atun_al_horno) 664)
            (= (Pcals Lubina_al_limon) 554)
            (= (Pcals Calamares_a_la_romana) 562)
            (= (Pcals Cazon) 558)
            (= (Pcals Anchoas) 777)
            (= (Pcals Pez_espada_y_cosas_pijas) 638)
            (= (Pcals Conejo_asado) 785)
            (= (Pcals Pato_a_la_naranja) 786)
            (= (Pcals Rabo_de_toro) 690)
            (= (Pcals Entrecot_al_roquefort) 640)
            (= (Pcals Galtas_de_cerdo) 697)
            (= (Pcals Hamburguesa_de_pollo) 545)
            (= (Pcals Arroz_a_la_cubana) 722)
            (= (Pcals Cuscus) 658)
            (= (Pcals Arroz_con_curry) 667)
            (= (Pcals Arroz_tres_delicias) 642)
            (= (Pcals Arroz_salteado_con_verduras) 549)
            (= (Pcals Arroz_blanco) 742)
            (= (Pcals Macarrones_a_la_bolognesa) 510)
            (= (Pcals Spaghetti_a_la_bolognesa) 767)
            (= (Pcals Spaghetti_a_la_carbonara) 594)
            (= (Pcals Sopa_de_fideos) 718)
            (= (Pcals Fetuccini_a_la_putanesca) 703)
            (= (Pcals Lasanya) 643)

            (= (Scals Bacalao_en_salsa_verde) 519)
            (= (Scals Bacalao_con_tomate) 629)
            (= (Scals Rabas_y_chocos) 581)
            (= (Scals Boquerones_al_vinagre) 700)
            (= (Scals Pulpo_a_la_feira) 544)
            (= (Scals Langosta_a_la_salsa) 795)
            (= (Scals Solomillo_de_cerdo) 550)
            (= (Scals Pollo_a_la_brasa) 649)
            (= (Scals Botifarra_del_pages) 581)
            (= (Scals Costillitas_de_cordero) 646)
            (= (Scals Callos) 622)
            (= (Scals Pechuga_de_pollo) 511)
            (= (Scals Ensalada_de_arroz) 648)
            (= (Scals Paella) 628)
            (= (Scals Arroz_con_setas) 715)
            (= (Scals Arroz_frito_con_salsa_de_cebolla) 503)
            (= (Scals Arroz_con_bogavantes) 793)
            (= (Scals Risotto_con_gambas) 753)
            (= (Scals Macarrones_a_la_carbonara) 532)
            (= (Scals Spaghetti_al_pesto) 778)
            (= (Scals Ramen) 540)
            (= (Scals Fideos_con_verduras) 750)
            (= (Scals Ravioli_a_la_genovesa) 539)
            (= (Scals Tallarines_con_verduras) 518)

            (= (Pprice Atun_al_horno) 15)
            (= (Pprice Lubina_al_limon) 9)
            (= (Pprice Calamares_a_la_romana) 5)
            (= (Pprice Cazon) 8)
            (= (Pprice Anchoas) 6)
            (= (Pprice Pez_espada_y_cosas_pijas) 7)
            (= (Pprice Conejo_asado) 15)
            (= (Pprice Pato_a_la_naranja) 6)
            (= (Pprice Rabo_de_toro) 9)
            (= (Pprice Entrecot_al_roquefort) 12)
            (= (Pprice Galtas_de_cerdo) 12)
            (= (Pprice Hamburguesa_de_pollo) 5)
            (= (Pprice Arroz_a_la_cubana) 12)
            (= (Pprice Cuscus) 15)
            (= (Pprice Arroz_con_curry) 8)
            (= (Pprice Arroz_tres_delicias) 10)
            (= (Pprice Arroz_salteado_con_verduras) 5)
            (= (Pprice Arroz_blanco) 15)
            (= (Pprice Macarrones_a_la_bolognesa) 9)
            (= (Pprice Spaghetti_a_la_bolognesa) 9)
            (= (Pprice Spaghetti_a_la_carbonara) 6)
            (= (Pprice Sopa_de_fideos) 7)
            (= (Pprice Fetuccini_a_la_putanesca) 13)
            (= (Pprice Lasanya) 7)

            (= (Sprice Bacalao_en_salsa_verde) 8)
            (= (Sprice Bacalao_con_tomate) 11)
            (= (Sprice Rabas_y_chocos) 15)
            (= (Sprice Boquerones_al_vinagre) 13)
            (= (Sprice Pulpo_a_la_feira) 10)
            (= (Sprice Langosta_a_la_salsa) 14)
            (= (Sprice Solomillo_de_cerdo) 6)
            (= (Sprice Pollo_a_la_brasa) 12)
            (= (Sprice Botifarra_del_pages) 13)
            (= (Sprice Costillitas_de_cordero) 6)
            (= (Sprice Callos) 6)
            (= (Sprice Pechuga_de_pollo) 10)
            (= (Sprice Ensalada_de_arroz) 6)
            (= (Sprice Paella) 5)
            (= (Sprice Arroz_con_setas) 9)
            (= (Sprice Arroz_frito_con_salsa_de_cebolla) 13)
            (= (Sprice Arroz_con_bogavantes) 13)
            (= (Sprice Risotto_con_gambas) 5)
            (= (Sprice Macarrones_a_la_carbonara) 14)
            (= (Sprice Spaghetti_al_pesto) 7)
            (= (Sprice Ramen) 12)
            (= (Sprice Fideos_con_verduras) 15)
            (= (Sprice Ravioli_a_la_genovesa) 7)
            (= (Sprice Tallarines_con_verduras) 5)

            (= (coste-total) 0)

      )
    (:goal (forall (?d - dia) (hayMenu ?d)))
    (:metric minimize (coste-total))
)