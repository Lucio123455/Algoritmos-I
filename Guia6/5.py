"""
1. devolver_el_doble_si_es_par(numero) 
; que devuelve el doble del número en caso de ser par 
y el mismo número en
caso contrario.
"""

def devolver_el_doble_si_es_par(numero: int) -> int:
    if numero % 2 == 0:
        numero * 2

    return numero

"""
2. devolver_valor_si_es_par_si_no_el_que_sigue(numero): 
devuelve el mismo número si es par, y si no, el siguiente.
Analizar distintas formas de implementación 
(usando un if-then-else y dos if). ¿Todas funcionan?
"""

def devolver_valor_si_es_par_si_no_el_que_sigue(numero: int) -> int:
    return numero if numero % 2 == 0 else numero + 1

"""
3. devolver_el_doble_si_es_multiplo3
_el_triple_si_es_multiplo9(numero): 
en otro caso, devolver el número original. 
Analizar distintas formas de implementación 
(usando un if-then-else, dos if, o alguna opción de operación
lógica). ¿Todas funcionan? 
¿Cuál es el resultado si la entrada es 18?

"""

def devolver_el_doble(numero: int) -> bool:
    return numero * 2 if numero % 3 == 0 else numero * 3 if numero % 9 == 0 else numero

"""
4. lindo_nombre(nombre) que dado un nombre, 
si la longitud es igual o mayor a 5 devolver 
una frase que diga “Tu
nombre tiene muchas letras!” 
y si no, “Tu nombre tiene menos de 5 caracteres”.
"""

def lindo_nombre(nombre: str) -> str:
    if len(nombre) >= 5:
        print("muchas")
    else:
        print("pocas")
        
"""
5. elRango(numero) que imprime por pantalla 
“Menor a 5” si el número es menor a 5, 
“Entre 10 y 20” si el número está
en ese rango y “Mayor a 20” si el número es mayor a 20.
"""


"""
6. En Argentina una persona del
sexo femenino se jubila a los 60 años,
mientras que aquellas del sexo masculino se jubilan
a los 65 años. Quienes son menores 
de 18 años se deben ir de vacaciones 
junto al grupo que se jubila. Al resto de
las personas se les ordena ir a trabajar. 
Implemente una función que, dados los parámetros 
de sexo (F o M) y edad,
imprima la frase que corresponda según el caso: 
“Andá de vacaciones” o “Te toca trabajar”.

"""

def jub_vacaciones(sexo: str, edad:int) -> str:
    if edad < 18 or edad >= 65 or (sexo == 'F' and edad >= 60):
        print("anda de vacaciones")
    else: 
        print("anda a trabajar") 