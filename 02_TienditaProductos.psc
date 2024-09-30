Algoritmo TIENDITA_02
		Definir productos Como Entero
		Definir opcion Como Entero
		Definir nombre, codigo Como Cadena
		Definir cantidad Como Entero
		Definir precio Como Real
		Definir i Como Entero
		Definir stock Como Real
		
		productos = 0
		
		Mientras opcion <> 5 Hacer
			Escribir "Seleccione una opción:"
			Escribir "1. Ingresar producto"
			Escribir "2. Actualizar stock"
			Escribir "3. Consultar inventario"
			Escribir "4. Generar reportes"
			Escribir "5. Salir"
			Leer opcion
			
			Segun opcion Hacer
				1:
					productos = productos + 1
                Escribir "Ingrese el nombre del producto:"
                Leer nProducto_nombre
                Escribir "Ingrese la cantidad:"
                Leer nProducto_cantidad
                Escribir "Ingrese el precio:"
                Leer nProducto_precio
                Escribir "Ingrese el código del producto:"
                Leer nProducto_codigo
				
                Escribir "Producto ingresado correctamente"
				
            2:
                Escribir "Ingrese el código del producto:"
                Leer codigo
                Escribir "Ingrese la cantidad vendida:"
                Leer cantidad
				
                Para i = 1 Hasta productos Hacer
                    nProducto_cantidad = nProducto_cantidad - cantidad
                    Escribir "Disponibilidad actualizada"
                Fin Para
				
            3:
                Escribir "Inventario actual:"
                Para i = 1 Hasta productos Hacer
                    Escribir "Nombre: ", nProducto_nombre, ", Cantidad: ", nProducto_cantidad, ", Precio: ", nProducto_precio,", Código: ", nProducto_codigo
                Fin Para
				
            4:
                Escribir "Reportes diarios:"
                Para i = 1 Hasta productos Hacer
                    Escribir "Producto: ", nProducto_nombre ", Cantidad disponible: ", nProducto_cantidad
                Fin Para
            5:
                Escribir "Saliendo..."
            De Otro Modo:
                Escribir "Opción no válida."
        Fin Segun
    Fin Mientras
FinAlgoritmo
