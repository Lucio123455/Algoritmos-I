"""1. problema imprimir_hola_mundo () {
requiere: { T rue }
asegura: { imprime “¡Hola mundo!"por consola}
}"""

def imprimir_hola_mundo():
    print("Hola mundo")
    
imprimir_hola_mundo()

"""2. imprimir_un_verso(): que imprima un verso 
de una canción que vos elijas, respetando los saltos de línea mediante
el caracter \n."""

def imprimir_un_verso():
    print("Hola mundo \nHola mundo")
    
imprimir_un_verso()

import math

def raizDe2():
    return round(math.sqrt(2), 4)

print(raizDe2())  # 👉 1.4142

"""4. factorial_de_dos()
problema factorial_2 () : Z {
requiere: { T rue }
asegura: {res = 2!}
}
"""

def factorial_de_dos():
    return 2 * 1

print(factorial_de_dos())

"""
5. perimetro: que devuelva el perímetro 
de la circunferencia de radio 1.
Utilizar la biblioteca math mediante el comando
import math y la constante math.pi
problema perimetro () : R {
requiere: { T rue }
asegura: {res = 2 × π }
}
"""
import math as m

def perimetro():
    return 2 * m.pi

print(perimetro())