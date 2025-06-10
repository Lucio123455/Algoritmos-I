"""
2. Escribir una función que imprima los números pares entre el 10 y el 40
"""

def num_pares_10_40():
    i = 10
    while i <= 40:
        print(i)
        i += 2
    
#num_pares_10_40()

"""
4. Escribir una función de cuenta regresiva para lanzar un cohete. D
icha función irá imprimiendo desde el número que me
pasan por parámetro (que será positivo) hasta el 1, y por último “Despegue”.

"""

def despegue(numero):
    i = 0
    while i < numero:
        print(numero - i)
        i += 1
    print("despegue")
        
#despegue(10)

"""
5. Hacer una función que monitoree un viaje en el tiempo. 
Dicha función recibe dos parámetros, “el año de partida” y
“algún año de llegada”, siendo este último
parámetro siempre más chico que el primero. El viaje se realizará de a saltos
de un año y la función debe mostrar el texto:
“Viajó un año al pasado, estamos en el año: <año>” cada vez que se
realice un salto de año.
"""

def vieje_en_el_tiempo(partida, llegada):
    i = partida - 1 
    while i != llegada - 1:
        print( f"estamos en el anio {i}")
        i -= 1
    
#vieje_en_el_tiempo(2000,1990)
"""
6. Implementar de nuevo la función de monitoreo de viaje en el tiempo, 
pero desde el año de partida hasta lo más cercano
al 384 a.C., donde conoceremos a Aristóteles. Y para que sea más rápido el viaje
, ¡vamos a viajar de a 20 años en cada
salto!

"""