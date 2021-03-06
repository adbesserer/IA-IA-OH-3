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

            (NoCompatible Calamares_a_la_romana Arroz_con_bogavantes)
            (NoCompatible Sopa_de_fideos Pechuga_de_pollo)
            (NoCompatible Cuscus Macarrones_a_la_carbonara)
            (NoCompatible Cazon Arroz_con_setas)
            (NoCompatible Macarrones_a_la_bolognesa Ravioli_a_la_genovesa)
            (NoCompatible Galtas_de_cerdo Arroz_con_setas)
            (NoCompatible Spaghetti_a_la_carbonara Pulpo_a_la_feira)
            (NoCompatible Lubina_al_limon Costillitas_de_cordero)
            (NoCompatible Spaghetti_a_la_carbonara Pechuga_de_pollo)
            (NoCompatible Rabo_de_toro Paella)
            (NoCompatible Fetuccini_a_la_putanesca Tallarines_con_verduras)
            (NoCompatible Macarrones_a_la_bolognesa Arroz_con_setas)
            (NoCompatible Cuscus Bacalao_con_tomate)
            (NoCompatible Lasanya Spaghetti_al_pesto)
            (NoCompatible Pato_a_la_naranja Fideos_con_verduras)
            (NoCompatible Cazon Solomillo_de_cerdo)
            (NoCompatible Cuscus Arroz_con_setas)
            (NoCompatible Arroz_tres_delicias Fideos_con_verduras)
            (NoCompatible Entrecot_al_roquefort Paella)
            (NoCompatible Cazon Bacalao_con_tomate)
            (NoCompatible Fetuccini_a_la_putanesca Arroz_frito_con_salsa_de_cebolla)
            (NoCompatible Hamburguesa_de_pollo Ensalada_de_arroz)
            (NoCompatible Lubina_al_limon Macarrones_a_la_carbonara)
            (NoCompatible Pez_espada_y_cosas_pijas Solomillo_de_cerdo)
            (NoCompatible Arroz_salteado_con_verduras Solomillo_de_cerdo)
            (NoCompatible Lubina_al_limon Tallarines_con_verduras)
            (NoCompatible Arroz_a_la_cubana Spaghetti_al_pesto)
            (NoCompatible Spaghetti_a_la_carbonara Fideos_con_verduras)
            (NoCompatible Rabo_de_toro Ravioli_a_la_genovesa)
            (NoCompatible Galtas_de_cerdo Macarrones_a_la_carbonara)
            (NoCompatible Pez_espada_y_cosas_pijas Ramen)
            (NoCompatible Pato_a_la_naranja Ramen)
            (NoCompatible Galtas_de_cerdo Pollo_a_la_brasa)
            (NoCompatible Arroz_a_la_cubana Pollo_a_la_brasa)
            (NoCompatible Arroz_salteado_con_verduras Pulpo_a_la_feira)
            (NoCompatible Conejo_asado Ensalada_de_arroz)
            (NoCompatible Galtas_de_cerdo Paella)
            (NoCompatible Spaghetti_a_la_carbonara Arroz_con_bogavantes)
            (NoCompatible Atun_al_horno Ravioli_a_la_genovesa)
            (NoCompatible Entrecot_al_roquefort Fideos_con_verduras)
            (NoCompatible Arroz_con_curry Paella)
            (NoCompatible Entrecot_al_roquefort Solomillo_de_cerdo)
            (NoCompatible Fetuccini_a_la_putanesca Boquerones_al_vinagre)
            (NoCompatible Spaghetti_a_la_bolognesa Costillitas_de_cordero)
            (NoCompatible Conejo_asado Botifarra_del_pages)
            (NoCompatible Pez_espada_y_cosas_pijas Arroz_frito_con_salsa_de_cebolla)
            (NoCompatible Lubina_al_limon Bacalao_con_tomate)
            (NoCompatible Arroz_con_curry Bacalao_en_salsa_verde)

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

            (mustUse Lunes Cuscus)
            (RestrictedPrimero Lunes)

            (mustUse Martes Arroz_con_setas)
            (RestrictedSegundo Martes)

            (diaAnterior Lunes Martes)
            (diaAnterior Martes Miercoles)
            (diaAnterior Miercoles Jueves)
            (diaAnterior Jueves Viernes)

            (firstDay Lunes)

            (= (Pcals Atun_al_horno) 581)
            (= (Pcals Lubina_al_limon) 563)
            (= (Pcals Calamares_a_la_romana) 650)
            (= (Pcals Cazon) 690)
            (= (Pcals Anchoas) 749)
            (= (Pcals Pez_espada_y_cosas_pijas) 694)
            (= (Pcals Conejo_asado) 536)
            (= (Pcals Pato_a_la_naranja) 640)
            (= (Pcals Rabo_de_toro) 783)
            (= (Pcals Entrecot_al_roquefort) 500)
            (= (Pcals Galtas_de_cerdo) 748)
            (= (Pcals Hamburguesa_de_pollo) 739)
            (= (Pcals Arroz_a_la_cubana) 751)
            (= (Pcals Cuscus) 777)
            (= (Pcals Arroz_con_curry) 640)
            (= (Pcals Arroz_tres_delicias) 527)
            (= (Pcals Arroz_salteado_con_verduras) 608)
            (= (Pcals Arroz_blanco) 800)
            (= (Pcals Macarrones_a_la_bolognesa) 691)
            (= (Pcals Spaghetti_a_la_bolognesa) 689)
            (= (Pcals Spaghetti_a_la_carbonara) 553)
            (= (Pcals Sopa_de_fideos) 645)
            (= (Pcals Fetuccini_a_la_putanesca) 524)
            (= (Pcals Lasanya) 726)

            (= (Scals Bacalao_en_salsa_verde) 540)
            (= (Scals Bacalao_con_tomate) 622)
            (= (Scals Rabas_y_chocos) 522)
            (= (Scals Boquerones_al_vinagre) 794)
            (= (Scals Pulpo_a_la_feira) 632)
            (= (Scals Langosta_a_la_salsa) 597)
            (= (Scals Solomillo_de_cerdo) 691)
            (= (Scals Pollo_a_la_brasa) 686)
            (= (Scals Botifarra_del_pages) 765)
            (= (Scals Costillitas_de_cordero) 569)
            (= (Scals Callos) 581)
            (= (Scals Pechuga_de_pollo) 698)
            (= (Scals Ensalada_de_arroz) 735)
            (= (Scals Paella) 647)
            (= (Scals Arroz_con_setas) 670)
            (= (Scals Arroz_frito_con_salsa_de_cebolla) 587)
            (= (Scals Arroz_con_bogavantes) 632)
            (= (Scals Risotto_con_gambas) 621)
            (= (Scals Macarrones_a_la_carbonara) 513)
            (= (Scals Spaghetti_al_pesto) 592)
            (= (Scals Ramen) 527)
            (= (Scals Fideos_con_verduras) 623)
            (= (Scals Ravioli_a_la_genovesa) 694)
            (= (Scals Tallarines_con_verduras) 672)

            (= (Pprice Atun_al_horno) 11)
            (= (Pprice Lubina_al_limon) 6)
            (= (Pprice Calamares_a_la_romana) 14)
            (= (Pprice Cazon) 11)
            (= (Pprice Anchoas) 14)
            (= (Pprice Pez_espada_y_cosas_pijas) 13)
            (= (Pprice Conejo_asado) 5)
            (= (Pprice Pato_a_la_naranja) 15)
            (= (Pprice Rabo_de_toro) 11)
            (= (Pprice Entrecot_al_roquefort) 9)
            (= (Pprice Galtas_de_cerdo) 14)
            (= (Pprice Hamburguesa_de_pollo) 12)
            (= (Pprice Arroz_a_la_cubana) 12)
            (= (Pprice Cuscus) 10)
            (= (Pprice Arroz_con_curry) 14)
            (= (Pprice Arroz_tres_delicias) 10)
            (= (Pprice Arroz_salteado_con_verduras) 14)
            (= (Pprice Arroz_blanco) 14)
            (= (Pprice Macarrones_a_la_bolognesa) 11)
            (= (Pprice Spaghetti_a_la_bolognesa) 9)
            (= (Pprice Spaghetti_a_la_carbonara) 14)
            (= (Pprice Sopa_de_fideos) 6)
            (= (Pprice Fetuccini_a_la_putanesca) 6)
            (= (Pprice Lasanya) 9)

            (= (Sprice Bacalao_en_salsa_verde) 13)
            (= (Sprice Bacalao_con_tomate) 14)
            (= (Sprice Rabas_y_chocos) 5)
            (= (Sprice Boquerones_al_vinagre) 6)
            (= (Sprice Pulpo_a_la_feira) 10)
            (= (Sprice Langosta_a_la_salsa) 11)
            (= (Sprice Solomillo_de_cerdo) 7)
            (= (Sprice Pollo_a_la_brasa) 11)
            (= (Sprice Botifarra_del_pages) 14)
            (= (Sprice Costillitas_de_cordero) 9)
            (= (Sprice Callos) 14)
            (= (Sprice Pechuga_de_pollo) 10)
            (= (Sprice Ensalada_de_arroz) 9)
            (= (Sprice Paella) 7)
            (= (Sprice Arroz_con_setas) 8)
            (= (Sprice Arroz_frito_con_salsa_de_cebolla) 9)
            (= (Sprice Arroz_con_bogavantes) 11)
            (= (Sprice Risotto_con_gambas) 6)
            (= (Sprice Macarrones_a_la_carbonara) 13)
            (= (Sprice Spaghetti_al_pesto) 12)
            (= (Sprice Ramen) 9)
            (= (Sprice Fideos_con_verduras) 6)
            (= (Sprice Ravioli_a_la_genovesa) 11)
            (= (Sprice Tallarines_con_verduras) 15)

            (= (coste-total) 0)

      )
    (:goal (forall (?d - dia) (hayMenu ?d)))
    (:metric minimize (coste-total))
)