# Aqui vamos a crear la logica de programacion de la pila.(funciones que quiero que tenga)

def crearpila():
    return []

def apilar(pila, elemento):
    pila.append(elemento)

def esta_vacia(pila):
    return len(pila) == 0

def desapilar(pila):
    if esta_vacia(pila): 
        raise IndexError("Error. La pila está vacía. ")
    return pila.pop()

def cima(pila):
        if esta_vacia(pila): 
            raise IndexError("La pila está vacía. ")
        return pila[-1]

def tamano(pila):
     return len(pila)

def mostrar_pila(pila):
    if esta_vacia(pila): 
        raise IndexError("Error. No se puede mostrar: Está vacía")
    return f"Pila actual: {pila}" 
