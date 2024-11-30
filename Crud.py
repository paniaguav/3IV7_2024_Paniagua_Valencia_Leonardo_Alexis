#derivado a que es necesario poder almacenar diferentes fuentes de datos en py, se utiliza la variable "diccionarios". Es un tipo de variable exclusiva de phyton. 
#Un diccionario es capaz de poder almacenar diferentes tipos de datos en formato de lista: 1, 2, 3... 
# Inicializamos la lista de alumnos
alumnos = []

import tkinter as tk
from tkinter import messagebox, simpledialog

#Para poder guardar los datos correspondientes de la libreria hay que importar la libreria os. 

import os 
#Vamos a declarar un archivo: Una ruta dinamica o estatica (de tarea) 
# desde la raiz hasta donde llega: estática. Cuando hay que cambiar en diferentes equipos se hace una dinamica. 

ARCHIVO = "Archivo.txt"

#Ahora hay que cargar datos. 
    
alumnos = []
#hay que transformar en diccionario (Datos), va a guardar cada elemento de la lista, crear una funcion que haga un registro de alumno. 

def cargardatos():
    # verificar que existe el archivo
    if os.path.exists(ARCHIVO):
            with open(ARCHIVO, "r") as f:
                for linea in f:
            #que voy a tener en cada linea: (datos) al estar mirando el diccionario debe recorrer cada fila y su indice. 
            #strip es un metodo de cadena que nos ayuda a eliminar espacios al inicio y final de una cadena. Ejemplo: " Habia    ", hay que eliminar los espacios, inicial como finales. 
                    partes = linea.strip().split(",")
            if len(partes) >= 6:
                boleta = partes[0]
                nombre = partes[1]
                apelpat = partes[2]
                apelmat = partes[3]
                fechn = partes[4]
                calificaciones = list(map(float, partes[5:]))  #map es para identificar cada parte de la estructura, necesario. 
                 # Definimos al alumno como un diccionario
                alumno = {
                    "Boleta": boleta, 
                    "Nombre": nombre,
                    "Apellido paterno": apelpat,
                    "Apellido materno": apelmat,
                    "Fecha de nacimiento": fechn,
                    "Calificaciones": calificaciones
                }
                alumnos.append(alumno)
                 
#funcion para guardar los datos. 
def guardardatos():
    with open(ARCHIVO, "r") as f: 
        for alumno in alumnos:
            f.write(f"{alumno['Boleta']},{alumno['Nombre']},{alumno['Apellido paterno']},{alumno['Apellido materno']},{alumno['Fecha de nacimiento']},{','.join(map(str, alumno['Calificaciones']))}\n")

# Función para registrar un alumno
def registraralumno():
    
    boleta = simpledialog.askstring("Entrada", "Ingresa la boleta del alumno: ")
    nombre = simpledialog.askstring("Entrada", "Ingresa el nombre del alumno: ")
    apelpat = simpledialog.askstring("Entrada", "Ingresa el apellido paterno del alumno: ")
    apelmat = simpledialog.askstring("Entrada", "Ingresa el apellido materno del alumno: ")
    fechn = simpledialog.askstring("Entrada", "Ingresa la fecha de nacimiento (día, mes, año): ")

    # Solicitar tres calificaciones
    calificaciones = []
    for i in range(1, 4): 
        while True:  # Para asegurarse de que se ingresa un número valido
            try:
                parcial = float(simpledialog.askstring("Entrada", f"Ingrese la calificación del parcial {i}: "))
                calificaciones.append(parcial)
                break 
            except ValueError:
                messagebox.showerror("Error", "Ingrese una calificación válida")

    # Crear el diccionario del alumno
    alumno = {
        "Boleta": boleta,
        "Nombre": nombre,
        "Apellido paterno": apelpat,
        "Apellido materno": apelmat,
        "Fecha de nacimiento": fechn,
        "Calificaciones": calificaciones
    }
    alumnos.append(alumno)
    messagebox.showinfo("Éxito", "El alumno se registró correctamente.")

# Función para consultar los alumnos registrados
def consulta():
    if not alumnos:
        messagebox.showinfo("Consulta", "No hay ningún alumno registrado.")
    else:
        info = "Lista de alumnos:\n"
        for alumno in alumnos:
            info += f"Boleta: {alumno['Boleta']}, Nombre: {alumno['Nombre']} {alumno['Apellido paterno']} {alumno['Apellido materno']}, Fecha de nacimiento: {alumno['Fecha de nacimiento']}, Calificaciones: {alumno['Calificaciones']}\n"
        messagebox.showinfo("Consulta", info)

# Función para editar un alumno
def editar_alumno():
    boleta = simpledialog.askstring("Entrada", "Ingrese la boleta del alumno que desea editar: ")
    for alumno in alumnos:
        if alumno['Boleta'] == boleta:
            alumno['Nombre'] = simpledialog.askstring("Entrada", f"Nuevo nombre (actual: {alumno['Nombre']}): ") or alumno['Nombre']
            alumno['Apellido paterno'] = simpledialog.askstring("Entrada", f"Nuevo apellido paterno (actual: {alumno['Apellido paterno']}): ") or alumno['Apellido paterno']
            alumno['Apellido materno'] = simpledialog.askstring("Entrada", f"Nuevo apellido materno (actual: {alumno['Apellido materno']}): ") or alumno['Apellido materno']
            alumno['Fecha de nacimiento'] = simpledialog.askstring("Entrada", f"Nueva fecha de nacimiento (actual: {alumno['Fecha de nacimiento']}): ") or alumno['Fecha de nacimiento']
            
            # Editamos las calificaciones
            for i in range(3):
                nueva_calificacion = simpledialog.askstring("Entrada", f"Ingrese la nueva calificación del parcial {i+1} (actual: {alumno['Calificaciones'][i]}): ")
                if nueva_calificacion:
                    alumno['Calificaciones'][i] = float(nueva_calificacion)
            messagebox.showinfo("Éxito", "¡Datos del alumno actualizados correctamente!")
            return
    messagebox.showerror("Error", "Alumno no encontrado.")

# Función para eliminar un alumno
def eliminar_alumno():
    boleta = simpledialog.askstring("Entrada", "Ingrese la boleta del alumno que desea eliminar: ")
    for alumno in alumnos:
        if alumno['Boleta'] == boleta:
            alumnos.remove(alumno)
            messagebox.showinfo("Éxito", "Alumno eliminado.")
            return
    messagebox.showerror("Error", "Alumno no encontrado.")

# Función principal del menú
def main():
    while True:
        # Mostrar el menú
        opcion = simpledialog.askstring("Menú", "\nMenú de opciones:\n1. Registrar alumno\n2. Consultar lista de alumnos\n3. Editar alumno\n4. Eliminar alumno\n5. Guardar cambios\n6. Salir\nSeleccione una opción:")
        
        if opcion == "1":
            registraralumno()
        elif opcion == "2":
            consulta()
        elif opcion == "3":
            editar_alumno()
        elif opcion == "4":
            eliminar_alumno()
        elif opcion == "5":
            guardardatos()
            messagebox.showinfo("Éxito", "Los cambios han sido guardados.")
        elif opcion == "6":
            messagebox.showinfo("¡Adiós!", "El programa ha terminado.")
            break
        else:
            messagebox.showerror("Error", "Opción no válida.")

# Iniciar el programa
if __name__ == "__main__":
    cargardatos()  # Cargar los datos al inicio
    main()


# Ejecutamos el programa
main()

#Tarea: minimo ocho tipos de datos, (examen) hacer una lista que deseamo guardar. El examen debe de poseer elementos de dialogo y de salida.