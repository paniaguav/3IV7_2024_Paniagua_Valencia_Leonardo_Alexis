import tkinter as tk
from tkinter import messagebox

# Función para saludar
def saludo():
    nombre = entradanombre.get()  # Obtiene el nombre ingresado
    saludo = f"Hola {nombre}"  # Crea el saludo
    etiquetasludo.config(text=saludo)  # Muestra el saludo en la etiqueta

# Configuración de la ventana principal
ventana = tk.Tk()
ventana.title("Ejemplo de interfaz")
ventana.geometry("800x600")

# Etiqueta de saludo inicial
etiquetasludo = tk.Label(ventana, text="Hola, usuario", font=("Arial", 16))
etiquetasludo.pack(pady=18)

# Campo de entrada para el nombre
entradanombre = tk.Entry(ventana, font=("Arial", 14))
entradanombre.pack(pady=10)

# Botón para saludar
boton_saludo = tk.Button(ventana, text="Saludar", command=saludo)
boton_saludo.pack(pady=5)

# Etiqueta para mostrar el saludo
etiquetasludo = tk.Label(ventana, text="")
etiquetasludo.pack()

# Ejecutar la ventana principal
ventana.mainloop()

