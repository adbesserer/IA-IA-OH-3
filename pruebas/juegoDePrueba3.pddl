(define (problem menus)
    (:domain catering)
    (:objects Atún_al_horno Lubina_al_limon Calamares_a_la_romana Cazón Anchoas Pez_espada_y_cosas_pijas Conejo_asado Pato_a_la_naranja Rabo_de_toro Entrecot_al_roquefort Galtas_de_cerdo Hamburguesa_de_pollo Arroz_a_la_cubana Cuscús Arroz_con_curry Arroz_tres_delicias Arroz_salteado_con_verduras Arroz Macarrones_a_la_bolognesa Spaghetti_a_la_bolognesa Spaghetti_a_la_carbonara Sopa_de_fideos Fetuccini_a_la_putanesca Lasaña - primero
            Bacalao_en_salsa_verde Bacalao_con_tomate Rabas_y_chocos Boquerones_al_vinagre Pulpo_a_la_feira Langosta_a_la_salsa Solomillo_de_cerdo Pollo_a_la_brasa Botifarra_del_pages Costillitas_de_cordero Callos Pechuga_de_pollo Ensalada_de_arroz Paella Arroz_con_setas Arroz_frito_con_salsa_de_cebolla Arroz_con_bogavantes Risotto_con_gambas Macarrones_a_la_carbonara Spaghetti_al_pesto Ramen Fideos_con_verduras Ravioli_a_la_genovesa Tallarines_con_verduras - segundo
            Lunes Martes Miercoles Jueves Viernes - dia
            Pescado Carne Arroz Pasta - tipo
)
    (:init
        (primero Atún_al_horno)(primero Lubina_al_limon)(primero Calamares_a_la_romana)(primero Cazón)(primero Anchoas)(primero Pez_espada_y_cosas_pijas)(primero Conejo_asado)(primero Pato_a_la_naranja)(primero Rabo_de_toro)(primero Entrecot_al_roquefort)(primero Galtas_de_cerdo)(primero Hamburguesa_de_pollo)(primero Arroz_a_la_cubana)(primero Cuscús)(primero Arroz_con_curry)(primero Arroz_tres_delicias)(primero Arroz_salteado_con_verduras)(primero Arroz)(primero Macarrones_a_la_bolognesa)(primero Spaghetti_a_la_bolognesa)(primero Spaghetti_a_la_carbonara)(primero Sopa_de_fideos)(primero Fetuccini_a_la_putanesca)(primero Lasaña)

        (Segundo Bacalao_en_salsa_verde)(Segundo Bacalao_con_tomate)(Segundo Rabas_y_chocos)(Segundo Boquerones_al_vinagre)(Segundo Pulpo_a_la_feira)(Segundo Langosta_a_la_salsa)(Segundo Solomillo_de_cerdo)(Segundo Pollo_a_la_brasa)(Segundo Botifarra_del_pages)(Segundo Costillitas_de_cordero)(Segundo Callos)(Segundo Pechuga_de_pollo)(Segundo Ensalada_de_arroz)(Segundo Paella)(Segundo Arroz_con_setas)(Segundo Arroz_frito_con_salsa_de_cebolla)(Segundo Arroz_con_bogavantes)(Segundo Risotto_con_gambas)(Segundo Macarrones_a_la_carbonara)(Segundo Spaghetti_al_pesto)(Segundo Ramen)(Segundo Fideos_con_verduras)(Segundo Ravioli_a_la_genovesa)(Segundo Tallarines_con_verduras)

            (NoCompatible Galtas_de_cerdo Ramen)
            (NoCompatible Conejo_asado Risotto_con_gambas)
            (NoCompatible Arroz_salteado_con_verduras Pechuga_de_pollo)
            (NoCompatible Atún_al_horno Ramen)
            (NoCompatible Spaghetti_a_la_carbonara Arroz_con_setas)
            (NoCompatible Calamares_a_la_romana Bacalao_en_salsa_verde)
            (NoCompatible Lasaña Langosta_a_la_salsa)
            (NoCompatible Lubina_al_limon Solomillo_de_cerdo)
            (NoCompatible Pez_espada_y_cosas_pijas Bacalao_con_tomate)
            (NoCompatible Rabo_de_toro Fideos_con_verduras)
            (NoCompatible Lubina_al_limon Fideos_con_verduras)
            (NoCompatible Arroz_tres_delicias Paella)
            (NoCompatible Cazón Ensalada_de_arroz)
            (NoCompatible Anchoas Pulpo_a_la_feira)
            (NoCompatible Anchoas Arroz_con_bogavantes)
            (NoCompatible Rabo_de_toro Solomillo_de_cerdo)
            (NoCompatible Cuscús Bacalao_en_salsa_verde)
            (NoCompatible Lasaña Arroz_con_bogavantes)
            (NoCompatible Fetuccini_a_la_putanesca Pollo_a_la_brasa)
            (NoCompatible Cazón Arroz_frito_con_salsa_de_cebolla)
            (NoCompatible Sopa_de_fideos Risotto_con_gambas)
            (NoCompatible Atún_al_horno Rabas_y_chocos)
            (NoCompatible Arroz_salteado_con_verduras Pulpo_a_la_feira)
            (NoCompatible Spaghetti_a_la_carbonara Ravioli_a_la_genovesa)
            (NoCompatible Spaghetti_a_la_carbonara Pechuga_de_pollo)
            (NoCompatible Spaghetti_a_la_bolognesa Callos)
            (NoCompatible Sopa_de_fideos Boquerones_al_vinagre)
            (NoCompatible Sopa_de_fideos Solomillo_de_cerdo)
            (NoCompatible Fetuccini_a_la_putanesca Arroz_con_bogavantes)
            (NoCompatible Macarrones_a_la_bolognesa Langosta_a_la_salsa)
            (NoCompatible Conejo_asado Ravioli_a_la_genovesa)
            (NoCompatible Calamares_a_la_romana Arroz_frito_con_salsa_de_cebolla)
            (NoCompatible Arroz_con_curry Rabas_y_chocos)
            (NoCompatible Arroz_a_la_cubana Callos)
            (NoCompatible Arroz_salteado_con_verduras Langosta_a_la_salsa)
            (NoCompatible Arroz_con_curry Pechuga_de_pollo)
            (NoCompatible Sopa_de_fideos Langosta_a_la_salsa)
            (NoCompatible Arroz_con_curry Arroz_frito_con_salsa_de_cebolla)
            (NoCompatible Arroz Arroz_frito_con_salsa_de_cebolla)
            (NoCompatible Atún_al_horno Bacalao_con_tomate)
            (NoCompatible Galtas_de_cerdo Ravioli_a_la_genovesa)
            (NoCompatible Pato_a_la_naranja Botifarra_del_pages)
            (NoCompatible Arroz_tres_delicias Pechuga_de_pollo)
            (NoCompatible Cuscús Pechuga_de_pollo)
            (NoCompatible Cuscús Tallarines_con_verduras)
            (NoCompatible Lasaña Solomillo_de_cerdo)
            (NoCompatible Calamares_a_la_romana Macarrones_a_la_carbonara)
            (NoCompatible Fetuccini_a_la_putanesca Pulpo_a_la_feira)

            (tipoP Atún_al_horno Pescado)
            (tipoS Bacalao_en_salsa_verde Pescado)
            (tipoP Lubina_al_limon Pescado)
            (tipoS Bacalao_con_tomate Pescado)
            (tipoP Calamares_a_la_romana Pescado)
            (tipoS Rabas_y_chocos Pescado)
            (tipoP Cazón Pescado)
            (tipoS Boquerones_al_vinagre Pescado)
            (tipoP Anchoas Pescado)
            (tipoS Pulpo_a_la_feira Pescado)
            (tipoP Pez_espada_y_cosas_pijas Pescado)
            (tipoS Langosta_a_la_salsa Pescado)

            (tipoP Conejo_asado Pescado)
            (tipoS Solomillo_de_cerdo Pescado)
            (tipoP Pato_a_la_naranja Pescado)
            (tipoS Pollo_a_la_brasa Pescado)
            (tipoP Rabo_de_toro Pescado)
            (tipoS Botifarra_del_pages Pescado)
            (tipoP Entrecot_al_roquefort Pescado)
            (tipoS Costillitas_de_cordero Pescado)
            (tipoP Galtas_de_cerdo Pescado)
            (tipoS Callos Pescado)
            (tipoP Hamburguesa_de_pollo Pescado)
            (tipoS Pechuga_de_pollo Pescado)

            (tipoP Arroz_a_la_cubana Pescado)
            (tipoS Ensalada_de_arroz Pescado)
            (tipoP Cuscús Pescado)
            (tipoS Paella Pescado)
            (tipoP Arroz_con_curry Pescado)
            (tipoS Arroz_con_setas Pescado)
            (tipoP Arroz_tres_delicias Pescado)
            (tipoS Arroz_frito_con_salsa_de_cebolla Pescado)
            (tipoP Arroz_salteado_con_verduras Pescado)
            (tipoS Arroz_con_bogavantes Pescado)
            (tipoP Arroz Pescado)
            (tipoS Risotto_con_gambas Pescado)

            (tipoP Macarrones_a_la_bolognesa Pescado)
            (tipoS Macarrones_a_la_carbonara Pescado)
            (tipoP Spaghetti_a_la_bolognesa Pescado)
            (tipoS Spaghetti_al_pesto Pescado)
            (tipoP Spaghetti_a_la_carbonara Pescado)
            (tipoS Ramen Pescado)
            (tipoP Sopa_de_fideos Pescado)
            (tipoS Fideos_con_verduras Pescado)
            (tipoP Fetuccini_a_la_putanesca Pescado)
            (tipoS Ravioli_a_la_genovesa Pescado)
            (tipoP Lasaña Pescado)
            (tipoS Tallarines_con_verduras Pescado)

            (mustUse Jueves Arroz)
            (RestrictedPrimero Jueves)
            (mustUse Lunes Calamares_a_la_romana)
            (RestrictedPrimero Lunes)

            (mustUse Jueves Arroz_con_bogavantes)
            (RestrictedSegundo Jueves)

            (diaAnterior Lunes Martes)
            (diaAnterior Martes Miercoles)
            (diaAnterior Miercoles Jueves)
            (diaAnterior Jueves Viernes)

            (firstDay Lunes)

            (= (Pcals Atún_al_horno) 653)
            (= (Pcals Lubina_al_limon) 672)
            (= (Pcals Calamares_a_la_romana) 713)
            (= (Pcals Cazón) 524)
            (= (Pcals Anchoas) 661)
            (= (Pcals Pez_espada_y_cosas_pijas) 798)
            (= (Pcals Conejo_asado) 508)
            (= (Pcals Pato_a_la_naranja) 590)
            (= (Pcals Rabo_de_toro) 519)
            (= (Pcals Entrecot_al_roquefort) 788)
            (= (Pcals Galtas_de_cerdo) 629)
            (= (Pcals Hamburguesa_de_pollo) 551)
            (= (Pcals Arroz_a_la_cubana) 505)
            (= (Pcals Cuscús) 738)
            (= (Pcals Arroz_con_curry) 720)
            (= (Pcals Arroz_tres_delicias) 713)
            (= (Pcals Arroz_salteado_con_verduras) 779)
            (= (Pcals Arroz) 595)
            (= (Pcals Macarrones_a_la_bolognesa) 560)
            (= (Pcals Spaghetti_a_la_bolognesa) 542)
            (= (Pcals Spaghetti_a_la_carbonara) 738)
            (= (Pcals Sopa_de_fideos) 765)
            (= (Pcals Fetuccini_a_la_putanesca) 640)
            (= (Pcals Lasaña) 638)

            (= (Scals Bacalao_en_salsa_verde) 601)
            (= (Scals Bacalao_con_tomate) 794)
            (= (Scals Rabas_y_chocos) 621)
            (= (Scals Boquerones_al_vinagre) 510)
            (= (Scals Pulpo_a_la_feira) 580)
            (= (Scals Langosta_a_la_salsa) 604)
            (= (Scals Solomillo_de_cerdo) 657)
            (= (Scals Pollo_a_la_brasa) 517)
            (= (Scals Botifarra_del_pages) 683)
            (= (Scals Costillitas_de_cordero) 639)
            (= (Scals Callos) 775)
            (= (Scals Pechuga_de_pollo) 705)
            (= (Scals Ensalada_de_arroz) 620)
            (= (Scals Paella) 669)
            (= (Scals Arroz_con_setas) 517)
            (= (Scals Arroz_frito_con_salsa_de_cebolla) 609)
            (= (Scals Arroz_con_bogavantes) 791)
            (= (Scals Risotto_con_gambas) 726)
            (= (Scals Macarrones_a_la_carbonara) 556)
            (= (Scals Spaghetti_al_pesto) 734)
            (= (Scals Ramen) 577)
            (= (Scals Fideos_con_verduras) 605)
            (= (Scals Ravioli_a_la_genovesa) 680)
            (= (Scals Tallarines_con_verduras) 747)

            (= (Pprice Atún_al_horno) 7)
            (= (Pprice Lubina_al_limon) 12)
            (= (Pprice Calamares_a_la_romana) 8)
            (= (Pprice Cazón) 5)
            (= (Pprice Anchoas) 15)
            (= (Pprice Pez_espada_y_cosas_pijas) 5)
            (= (Pprice Conejo_asado) 12)
            (= (Pprice Pato_a_la_naranja) 15)
            (= (Pprice Rabo_de_toro) 12)
            (= (Pprice Entrecot_al_roquefort) 6)
            (= (Pprice Galtas_de_cerdo) 12)
            (= (Pprice Hamburguesa_de_pollo) 10)
            (= (Pprice Arroz_a_la_cubana) 6)
            (= (Pprice Cuscús) 8)
            (= (Pprice Arroz_con_curry) 15)
            (= (Pprice Arroz_tres_delicias) 15)
            (= (Pprice Arroz_salteado_con_verduras) 11)
            (= (Pprice Arroz) 13)
            (= (Pprice Macarrones_a_la_bolognesa) 10)
            (= (Pprice Spaghetti_a_la_bolognesa) 13)
            (= (Pprice Spaghetti_a_la_carbonara) 12)
            (= (Pprice Sopa_de_fideos) 15)
            (= (Pprice Fetuccini_a_la_putanesca) 15)
            (= (Pprice Lasaña) 12)

            (= (Sprice Bacalao_en_salsa_verde) 7)
            (= (Sprice Bacalao_con_tomate) 10)
            (= (Sprice Rabas_y_chocos) 5)
            (= (Sprice Boquerones_al_vinagre) 10)
            (= (Sprice Pulpo_a_la_feira) 8)
            (= (Sprice Langosta_a_la_salsa) 5)
            (= (Sprice Solomillo_de_cerdo) 8)
            (= (Sprice Pollo_a_la_brasa) 12)
            (= (Sprice Botifarra_del_pages) 5)
            (= (Sprice Costillitas_de_cordero) 6)
            (= (Sprice Callos) 13)
            (= (Sprice Pechuga_de_pollo) 15)
            (= (Sprice Ensalada_de_arroz) 12)
            (= (Sprice Paella) 14)
            (= (Sprice Arroz_con_setas) 6)
            (= (Sprice Arroz_frito_con_salsa_de_cebolla) 12)
            (= (Sprice Arroz_con_bogavantes) 13)
            (= (Sprice Risotto_con_gambas) 6)
            (= (Sprice Macarrones_a_la_carbonara) 11)
            (= (Sprice Spaghetti_al_pesto) 14)
            (= (Sprice Ramen) 15)
            (= (Sprice Fideos_con_verduras) 9)
            (= (Sprice Ravioli_a_la_genovesa) 6)
            (= (Sprice Tallarines_con_verduras) 5)

            (= (coste-total) 0)

      )
    (:goal (forall (?d - dia) (hayMenu ?d)))
    (:metric minimize (coste-total))
)