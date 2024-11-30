import Pila1
import Vista

def main():
    # diccionario de las funciones de pila. 
    logica_pila = {
        "crear_pila" : Pila1.crearpila,
        "apilar" : Pila1.apilar,
        "desapilar" : Pila1.desapilar,
        "cima" : Pila1.cima,
        "esta_vacia" : Pila1.esta_vacia,
        "tamano" : Pila1.tamano,
        "Mostrar_pila" : Pila1.mostrar_pila,
    }
    
# crear la interfaz e invocarla

Vista.crear_interfaz(logica_pila)

main()