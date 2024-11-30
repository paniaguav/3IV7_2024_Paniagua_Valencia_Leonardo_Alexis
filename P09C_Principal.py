import Cola as cola
import VistaC as vista

def main(): 
    #Diccionario de funciones: 
    logica_cola = {
        "Crear cola" : cola.crear_cola,
        "encolar" : cola.encolar,
        "desencolar": cola.desencolar,
        "frente" : cola.frente,
        "esta_vacia" : cola.esta_vacia,
        "tamano" : cola.tamano,
        "mostrar_cola" : cola.mostrar_cola
    }

    #crear la interfaz a invocarla
    vista.crear_interfaz(logica_cola)

main()
