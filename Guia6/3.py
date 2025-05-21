"""
1. alguno_es_0(numero1, numero2): 
dados dos números racionales, 
decide si alguno de los dos es igual a 0.

"""

def alguno_es_0(num1: int, num2: int) -> bool:
    return num1 == 0 or num2 == 0

print(alguno_es_0(1,5))

"""
2. ambos_son_0(numero1, numero2): 
dados dos números racionales, decide si ambos son iguales a 0.

"""

def ambos_son_0(num1: int, num2: int) -> bool:
    return num1 == 0 and num2 == 0

print(ambos_son_0(1,0))

"""
3. problema es_nombre_largo (in nombre: String) : Bool {
requiere: { True }
asegura: {(res = true) ↔ (3 ≤ |nombre| ≤ 8)}
}

"""

def es_nombre_largo(nombre: str) -> bool:
    return len(nombre) >= 3 and len(nombre) <=8 

print(es_nombre_largo("Maximiliano")) # False (11 letras)

"""
4. es_bisiesto(año): 
que indica si un año tiene 366 días. 
Recordar que un año es bisiesto si es múltiplo de 400, o bien
es múltiplo de 4 pero no de 100.

"""

def es_multiplo_de(n: int, m:int) -> bool:
    return n % m == 0

def es_bisiesto(anio: int) -> bool:
    return es_multiplo_de(anio, 400) or (es_multiplo_de(anio, 4) and (not(es_multiplo_de(anio,100))))

print(es_bisiesto(2000))  # True  (divisible por 400)
