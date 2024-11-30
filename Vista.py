import tkinter as tk 
from tkinter import messagebox

# Vamos a crear la interfaz 

def crear_interfaz(logica_pila):
    # Creamos la ventana
    ventana = tk.Tk()
    ventana.title("Manejo de pila")
    ventana.geometry("400x400")
    
    # Necesitamos a una pila para realizar las invocaciones

pila = logica_pila["Crear_pila"]()

# Ahora empiezo con las funciones de la interfaz

def manejar_apilar():
    elemento = entrada.elemento.get()
    if elemento:
        logica_pila["apilar"](pila, elemento)
        actualizar_pila()
        entrada_elemento.delete(0, tk.END)
    else: 
        messagebox.showwarning("Entrada vacia, por favor ingrese un elemento. ")
        
def manejar_desapilar():
    try:
        elemento = logica_pila["desapilar"](pila)
        messagebox.showinfo("Desapilar", f"Elemento desapilado: {elemento}")
        actualizar_pila()
    except IndexError as e:
        messagebox.showerror("Error", str(e))

def manejar_cima():
    try:
        elemento = logica_pila["cima"](pila)
        messagebox.showinfo("Cima", f"Elemento de la cima: {elemento}")
    except IndexError as e:
        messagebox.showerror("Error", str(e))

def manejar_tamano():
    tamano = logica_pila["tamano"](pila)
    messagebox.showinfo("Tamaño", f"El tamaño de la pila: {tamano}")

def manejar_mostrar():
    pila_actual = logica_pila["mostrar_pila"](pila)

def actualizar_pila():
    pila_actual = logica_pila["mostrar_pila"](pila)
    etiqueta_pila.config(text=pila_actual)

    #componentes de la interfaz: 

tk.Label(ventana, text="Manejo de una pila", font= {"Arial, 16"}).pack(pady=10)

entrada_elemento = tk.Entry(ventana, width=30)
entrada_elemento.pack(pady=5)
tk.Button(ventana, text="Apilar", command=manejar_apilar).pack(pady=5)
tk.Button(ventana, text="Desapilar", command=manejar_desapilar).pack(pady=5)
tk.Button(ventana, text="Ver cima", command=manejar_cima).pack(pady=5)
tk.Button(ventana, text="Ver tamaño", command=manejar_tamano).pack(pady=5)
tk.Button(ventana, text="Mostrar pila", command=manejar_mostrar).pack(pady=5)

etiqueta_pila = tk.Label(ventana, text="Pila actual: []", font={"Arial", 12})
etiqueta_pila.pack(pady=20)

ventana.mainloop()