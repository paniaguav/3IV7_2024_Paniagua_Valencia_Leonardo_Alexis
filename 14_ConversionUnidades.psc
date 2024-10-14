// Programa: Paniagua Valencia. Ejercicio 1. 
Algoritmo ConversionUnidades
	Escribir "Ingrese a que unidad desea convertir"
	
	Mientras opcion <> 5 Hacer
		Escribir "Seleccione una opción:"
		Escribir "1. Pulgadas"
		Escribir "2. Yardas"
		Escribir "3. Centímetros"
		Escribir "4. Metros"
		Escribir "5. Salir"
		Leer opcion
		
		segun opcion hacer
			caso 1: 
				Escribir "Ingrese la cantidad que desea convertir: "
				leer n
				resultado <- n * 12
				Escribir "", n, " pies son: ", resultado, " pulgadas"
			caso 2: 
				Escribir "Ingrese la cantidad que desea convertir: "
				leer n
				resultado <- n / 3
				Escribir "", n, " pies son: ", resultado, " yardas"
			caso 3: 
				Escribir "Ingrese la cantidad que desea convertir: "
				leer n
				resultado <- n * 30.48 
				Escribir " ", n, " pies son: ", resultado, " centímetros"
			caso 4: 
				Escribir "Ingrese la cantidad que desea convertir: "
				leer n
				resultado <- n * 0.3048
				Escribir " ", n, " pies son: ", resultado, " metros"
			caso 5:
                Escribir "Saliendo..."
            De Otro Modo:
                Escribir "Opción no válida."
		FinSegun
	FinMientras
FinAlgoritmo
