"""
1. problema pertenece (in s:seq⟨Z⟩, in e: Z) : Bool {
requiere: { T rue }
asegura: { (res = true) ↔(existe un i ∈ Z tal que 0 ≤ i < |s| ∧ s[i] = e) }
}
Implementar al menos de 3 formas distintas este problema.

"""
numeros = [1,5,76,3]

def pertenece1(lista: list[int], numero: int) -> bool:
    for num in lista:
        if numero == num:
            return True
    return False

#print(pertenece1(numeros,1))

def pertenece2(lista: list[int], numero: int) -> bool:
    return True if numero in lista else False

print(pertenece2(numeros,5))