import math

"""1. problema imprimir_saludo (in nombre: String) {
requiere: { T rue }
asegura: {imprime “Hola < nombre >"por pantalla}
}f"""

def imprimir_saludo(nombre: str) -> None:
    print("Hola", nombre)

imprimir_saludo("Carlos")

"""
2. raiz_cuadrada_de(numero): que devuelva 
la raíz cuadrada del número.
"""

def raiz_cuadrada_de(numero: int) -> float:
    return math.sqrt(numero)

print(raiz_cuadrada_de(16))

"""
3. fahrenheit_a_celsius(temp_far): 
que convierta una temperatura 
en grados Fahrenheit a grados Celcius.
problema fahrenheit_a_celsius (in t: R) : R {
requiere: { T rue }
asegura: {res = ((t - 32) x 5)/9}
}

"""

def fahreheit_a_celsius(temp_far: int) -> int:
    return ((temp_far - 32) * 5) / 9

print(fahreheit_a_celsius(100)) 

"""
4. imprimir_dos_veces(estribillo): 
que imprima dos veces el estribillo de una canción. Nota: 
Analizar el comportamiento del operador (*) con strings.
"""

def imprimir_dos_veces(estribillo: str) -> None:
    print(estribillo * 2)
    
imprimir_dos_veces("nashe")

"""
5. problema es_multiplo_de (in n: Z, in m:Z) : Bool {
requiere: {m ̸= 0}
asegura: {(res = true) ↔ (existe un k ∈ Z tal que n = m x k)}
}

"""

def es_multiplo_de(n: int, m:int) -> bool:
    return n % m == 0

print(es_multiplo_de(11,5))

"""
6. es_par(numero): 
que indique si numero es par 
(usar la función es_multiplo_de()).

"""

def es_par(numero: int) -> bool:
    return es_multiplo_de(numero, 2)

print(es_par(11))

"""
7. cantidad_de_pizzas(comensales, min_cant_de_porciones) 
que devuelva la cantidad de pizzas que necesitamos
para que cada comensal coma como mínimo 
min_cant_de_porciones porciones de pizza. 
Considere que cada pizza
tiene 8 porciones y que se prefiere que sobren porciones.
"""

def cantidad_de_pizzas(comensales: int, min_cant_de_porciones: int) -> int:
    porciones = 8 
    