//Ejercicio 4.
Algoritmo ConversionGrados
	Mientras opcion <> 4 Hacer
		Escribir "Seleccione a qué unidad de grados quiere pasar:"
		Escribir "1. Celsius"
		Escribir "2. Kelvine"
		Escribir "3. Rankine"
		Escribir "4. Salir"
		Leer opcion
		
		segun opcion hacer
			caso 1: 
				Escribir "Ingrese la cantidad de grados fahrenheit (°F): "
				leer n
				res <- n - 32
				res1 <- res * 5
				res2 <- res1 / 9 
				Escribir "", n, " grados fahrenheit son: ", res2, " grados celcius (°C)."
			caso 2: 
				Escribir "Ingrese la cantidad de grados fahrenheit (°F): "
				leer n
				res <- n - 32
				res1 <- res * 5
				res2 <- res1 / 9 
				res3 <- res2 + 273.15
				Escribir "", n, " grados fahrenheit son: ", res3, " grados Kelvin (K)."
			Caso 3: 
				Escribir "Ingrese la cantidad de grados fahrenheit (°F): "
				leer n
				res <- n + 459.67
				Escribir "", n, " grados fahrenheit son: ", res, " grados rankine (°R)."
			Caso 4: 
				Escribir "Saliendo..."
			De Otro Modo:
				Escribir "Opción no válida"
		FinSegun
	FinMientras
FinAlgoritmo
