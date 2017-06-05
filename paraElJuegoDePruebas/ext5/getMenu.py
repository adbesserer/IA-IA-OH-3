#PASAR LA SALIDA DE FAST FORWARD CON PIPE A ESTE PROGRAMA PARA VER EL MENU RESULTADO

import sys

a = set()

for line in sys.stdin:
    if 'SERVIR_SEGUNDO' in line or 'SERVIR_LUNES' in line:
        if 'SERVIR_LUNES' in line:
            a.add(line[5:])
        else:
            a.add(line)


print  ('********************************************************\n'+
        '*              P L A N I F I C A C I O N               *\n'+
        '*                    S E M A N A L                     *\n'+
        '*                   D E   M E N U S                    *\n'+
        '********************************************************'+'\n\n')

s=set()
for x in a:
    words = x.split()
    #print(words)
    if words[0] == '0:':
        print(words[2]+': \n\t' + words[3] + ' y '+ words[4])
    else:
        print(words[5]+': \n\t' + words[6] + ' y '+ words[7])

