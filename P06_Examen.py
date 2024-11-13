import tkinter as tk
from tkinter import simpledialog, messagebox

# Lista de tacos con 30 registros
tacos = [
    {'nombre': 'Taco al Pastor', 'ingredientes': 'Carne de cerdo, piña, cebolla, cilantro', 'tipo': 'Carne', 'precio': 30, 'tortilla': 'Maíz', 'nivel picante': 'Alto', 'origen': 'CDMX', 'nivel de rikura': 9},
    {'nombre': 'Taco de Asada', 'ingredientes': 'Carne de res, cebolla, cilantro', 'tipo': 'Carne', 'precio': 35, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'Baja California', 'nivel de rikura': 8},
    {'nombre': 'Taco de Suadero', 'ingredientes': 'Carne de res, cebolla, cilantro', 'tipo': 'Carne', 'precio': 28, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'CDMX', 'nivel de rikura': 7},
    {'nombre': 'Taco de Carnitas', 'ingredientes': 'Carne de cerdo, cebolla, cilantro', 'tipo': 'Carne', 'precio': 32, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'Michoacán', 'nivel de rikura': 8},
    {'nombre': 'Taco de Barbacoa', 'ingredientes': 'Carne de cordero, cebolla, cilantro', 'tipo': 'Carne', 'precio': 40, 'tortilla': 'Maíz', 'nivel picante': 'Alto', 'origen': 'Hidalgo', 'nivel de rikura': 9},
    {'nombre': 'Taco de Longaniza', 'ingredientes': 'Longaniza, cebolla, cilantro', 'tipo': 'Carne', 'precio': 30, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'Guerrero', 'nivel de rikura': 7},
    {'nombre': 'Taco de Pescado', 'ingredientes': 'Pescado empanizado, col, salsa de soya', 'tipo': 'Mariscos', 'precio': 45, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'Baja California', 'nivel de rikura': 8},
    {'nombre': 'Taco de Camarón', 'ingredientes': 'Camarones, col, salsa de aguacate', 'tipo': 'Mariscos', 'precio': 50, 'tortilla': 'Maíz', 'nivel picante': 'Alto', 'origen': 'Sinaloa', 'nivel de rikura': 9},
    {'nombre': 'Taco de Nopales', 'ingredientes': 'Nopales, cebolla, cilantro', 'tipo': 'Vegetariano', 'precio': 25, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'CDMX', 'nivel de rikura': 6},
    {'nombre': 'Taco de Huitlacoche', 'ingredientes': 'Huitlacoche, cebolla, cilantro', 'tipo': 'Vegetariano', 'precio': 38, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'CDMX', 'nivel de rikura': 7},
    {'nombre': 'Taco de Cochinita Pibil', 'ingredientes': 'Carne de cerdo, cebolla morada, achiote', 'tipo': 'Carne', 'precio': 42, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'Yucatán', 'nivel de rikura': 8},
    {'nombre': 'Taco de Arrachera', 'ingredientes': 'Arrachera, cebolla, cilantro', 'tipo': 'Carne', 'precio': 50, 'tortilla': 'Harina', 'nivel picante': 'Bajo', 'origen': 'Nuevo León', 'nivel de rikura': 8},
    {'nombre': 'Taco de Chicharrón Prensado', 'ingredientes': 'Chicharrón prensado, cebolla, cilantro', 'tipo': 'Carne', 'precio': 28, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'CDMX', 'nivel de rikura': 7},
    {'nombre': 'Taco de Tinga', 'ingredientes': 'Carne de pollo, cebolla, chipotle, cilantro', 'tipo': 'Carne', 'precio': 33, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'Puebla', 'nivel de rikura': 7},
    {'nombre': 'Taco de Bistec', 'ingredientes': 'Carne de res, cebolla, cilantro', 'tipo': 'Carne', 'precio': 30, 'tortilla': 'Harina', 'nivel picante': 'Bajo', 'origen': 'CDMX', 'nivel de rikura': 6},
    {'nombre': 'Taco de Pescado Frito', 'ingredientes': 'Pescado frito, col, salsa de mayonesa', 'tipo': 'Mariscos', 'precio': 48, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'Veracruz', 'nivel de rikura': 8},
    {'nombre': 'Taco de Almeja', 'ingredientes': 'Almeja, salsa de chile, cebolla', 'tipo': 'Mariscos', 'precio': 55, 'tortilla': 'Maíz', 'nivel picante': 'Alto', 'origen': 'Baja California', 'nivel de rikura': 9},
    {'nombre': 'Taco de Chiles en Nogada', 'ingredientes': 'Chile poblano, carne de res, nuez', 'tipo': 'Vegetariano', 'precio': 60, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'Puebla', 'nivel de rikura': 7},
    {'nombre': 'Taco de Cabeza', 'ingredientes': 'Cabeza de res, cebolla, cilantro', 'tipo': 'Carne', 'precio': 35, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'CDMX', 'nivel de rikura': 8},
    {'nombre': 'Taco de Pollo', 'ingredientes': 'Pollo desmenuzado, cebolla, cilantro', 'tipo': 'Carne', 'precio': 25, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'CDMX', 'nivel de rikura': 6},
    {'nombre': 'Taco de Pato', 'ingredientes': 'Carne de pato, cebolla, cilantro', 'tipo': 'Carne', 'precio': 70, 'tortilla': 'Maíz', 'nivel picante': 'Alto', 'origen': 'CDMX', 'nivel de rikura': 9},
    {'nombre': 'Taco de Birria', 'ingredientes': 'Carne de chivo, cebolla, cilantro', 'tipo': 'Carne', 'precio': 45, 'tortilla': 'Maíz', 'nivel picante': 'Alto', 'origen': 'Jalisco', 'nivel de rikura': 8},
    {'nombre': 'Taco de Mole', 'ingredientes': 'Pollo, mole, cebolla, cilantro', 'tipo': 'Carne', 'precio': 40, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'CDMX', 'nivel de rikura': 7},
    {'nombre': 'Taco de Lechón', 'ingredientes': 'Carne de lechón, cebolla, cilantro', 'tipo': 'Carne', 'precio': 50, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'Veracruz', 'nivel de rikura': 8},
    {'nombre': 'Taco de Tlacoyo', 'ingredientes': 'Masa rellena de frijoles, cebolla, cilantro', 'tipo': 'Vegetariano', 'precio': 28, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'CDMX', 'nivel de rikura': 7},
    {'nombre': 'Taco de Pibil', 'ingredientes': 'Carne de cerdo, cebolla, salsa de habanero', 'tipo': 'Carne', 'precio': 60, 'tortilla': 'Maíz', 'nivel picante': 'Alto', 'origen': 'Yucatán', 'nivel de rikura': 9},
    {'nombre': 'Taco de Pollo al Pastor', 'ingredientes': 'Pollo, piña, cebolla, cilantro', 'tipo': 'Carne', 'precio': 35, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'CDMX', 'nivel de rikura': 8},
    {'nombre': 'Taco de Chorizo', 'ingredientes': 'Chorizo, cebolla, cilantro', 'tipo': 'Carne', 'precio': 30, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'CDMX', 'nivel de rikura': 7},
    {'nombre': 'Taco de Camarón Empanizado', 'ingredientes': 'Camarones empanizados, col, mayonesa', 'tipo': 'Mariscos', 'precio': 50, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'Sinaloa', 'nivel de rikura': 8},
    {'nombre': 'Taco de Pescado al Ajillo', 'ingredientes': 'Pescado, ajo, cebolla, cilantro', 'tipo': 'Mariscos', 'precio': 55, 'tortilla': 'Maíz', 'nivel picante': 'Moderado', 'origen': 'Veracruz', 'nivel de rikura': 8},
    {'nombre': 'Taco de Tofu', 'ingredientes': 'Tofu, cebolla, cilantro', 'tipo': 'Vegetariano', 'precio': 28, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'CDMX', 'nivel de rikura': 6},
    {'nombre': 'Taco de Pastor Vegano', 'ingredientes': 'Sustituto de carne, piña, cebolla, cilantro', 'tipo': 'Vegetariano', 'precio': 35, 'tortilla': 'Maíz', 'nivel picante': 'Bajo', 'origen': 'CDMX', 'nivel de rikura': 7},
]

# Crear la ventana principal
root = tk.Tk()
root.withdraw()  # Ocultamos la ventana principal

# Menú de opciones
def menu():
    while True:
        opcion = simpledialog.askstring("Menú", "¿Qué deseas hacer?\n"
                                                 "1. Registrar\n"
                                                 "2. Editar\n"
                                                 "3. Buscar\n"
                                                 "4. Lista todos los datos\n"
                                                 "5. Eliminar\n"
                                                 "6. Salir")
        if opcion == '1':
            registrar()
        elif opcion == '2':
            editar()
        elif opcion == '3':
            buscar()
        elif opcion == '4':
            mostrar_tacos()
        elif opcion == '5':
            eliminar()
        elif opcion == '6':
            break
        else:
            messagebox.showwarning("Opción no válida", "Por favor, selecciona una opción válida.")

# Funciones del menú
def registrar():
    nombre = simpledialog.askstring("Registrar Taco", "Nombre del taco:")
    ingredientes = simpledialog.askstring("Registrar Taco", "Ingredientes del taco:")
    tipo = simpledialog.askstring("Registrar Taco", "Tipo de taco (Carne, Mariscos, Vegetariano):")
    precio = float(simpledialog.askstring("Registrar Taco", "Precio del taco:"))
    tortilla = simpledialog.askstring("Registrar Taco", "Tipo de tortilla (Maíz, Harina):")
    nivel_picante = simpledialog.askstring("Registrar Taco", "Nivel de picante (Bajo, Moderado, Alto):")
    origen = simpledialog.askstring("Registrar Taco", "Origen del taco:")
    nivel_rikura = int(simpledialog.askstring("Registrar Taco", "Nivel de rikura (1-10):"))

    tacos.append({
        'nombre': nombre,
        'ingredientes': ingredientes,
        'tipo': tipo,
        'precio': precio,
        'tortilla': tortilla,
        'nivel picante': nivel_picante,
        'origen': origen,
        'nivel de rikura': nivel_rikura
    })
    messagebox.showinfo("Registro Exitoso", f"Taco {nombre} registrado con éxito.")

# Función para mostrar los tacos
def mostrar_tacos():
    messagebox.showinfo("Lista de Tacos", '\n'.join([f"{t['nombre']}: {t['nivel de rikura']} de rikura" for t in tacos]))

# Función para buscar tacos (sin importar mayúsculas/minúsculas)
def buscar():
    nombre = simpledialog.askstring("Buscar Taco", "Introduce el nombre del taco a buscar:")
    taco = next((t for t in tacos if t['nombre'].lower() == nombre.lower()), None)
    
    if taco:
        messagebox.showinfo("Taco Encontrado", f"Taco: {taco['nombre']}\nIngredientes: {taco['ingredientes']}\nTipo: {taco['tipo']}\nPrecio: {taco['precio']}\nTortilla: {taco['tortilla']}\nNivel Picante: {taco['nivel picante']}\nOrigen: {taco['origen']}\nNivel de rikura: {taco['nivel de rikura']}")
    else:
        messagebox.showwarning("Taco no encontrado", f"No se encontró un taco con el nombre: {nombre}")

def editar():
    nombre = simpledialog.askstring("Editar Taco", "Introduce el nombre del taco a editar:")
    taco = next((t for t in tacos if t['nombre'].lower() == nombre.lower()), None)
    
    if taco:
        nuevo_nombre = simpledialog.askstring("Editar Taco", f"Nuevo nombre (actual: {taco['nombre']}):")
        taco['nombre'] = nuevo_nombre
        ingredientes = simpledialog.askstring("Editar Taco", f"Nuevos ingredientes (actual: {taco['ingredientes']}):")
        taco['ingredientes'] = ingredientes
        tipo = simpledialog.askstring("Editar Taco", f"Nuevo tipo (actual: {taco['tipo']}):")
        taco['tipo'] = tipo
        precio = float(simpledialog.askstring("Editar Taco", f"Nuevo precio (actual: {taco['precio']}):"))
        taco['precio'] = precio
        tortilla = simpledialog.askstring("Editar Taco", f"Nuevo tipo de tortilla (actual: {taco['tortilla']}):")
        taco['tortilla'] = tortilla
        nivel_picante = simpledialog.askstring("Editar Taco", f"Nuevo nivel picante (actual: {taco['nivel picante']}):")
        taco['nivel picante'] = nivel_picante
        origen = simpledialog.askstring("Editar Taco", f"Nuevo origen (actual: {taco['origen']}):")
        taco['origen'] = origen
        nivel_rikura = int(simpledialog.askstring("Editar Taco", f"Nuevo nivel de rikura (actual: {taco['nivel de rikura']}):"))
        taco['nivel de rikura'] = nivel_rikura
        messagebox.showinfo("Edición Exitosa", f"Taco {nombre} editado con éxito.")
    else:
        messagebox.showwarning("Taco no encontrado", f"No se encontró un taco con el nombre: {nombre}")

# Función para eliminar tacos (sin importar mayúsculas/minúsculas)
def eliminar():
    nombre = simpledialog.askstring("Eliminar Taco", "Introduce el nombre del taco a eliminar:")
    taco = next((t for t in tacos if t['nombre'].lower() == nombre.lower()), None)
    
    if taco:
        tacos.remove(taco)
        messagebox.showinfo("Eliminación Exitosa", f"Taco {nombre} eliminado con éxito.")
    else:
        messagebox.showwarning("Taco no encontrado", f"No se encontró un taco con el nombre: {nombre}")

# Ejecutar el menú
menu()
