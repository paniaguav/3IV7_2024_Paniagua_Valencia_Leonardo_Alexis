Algoritmo ConversionBinaria
	
	definir num como entero 
	Definir binario como texto
	
	//el binario lo tengo que concatenar (unir)
	binario = " "
	
	Escribir "Ingresa el número que deseas convertir"
	leer num 
	
	si num > 0 Entonces
	Mientras num > 0 Hacer
		residuo = num%2
		// ir armando el binario
		nuevobinario = ConvertirATexto(residuo)
		// concatenar elementos de texto
		binario = nuevobinario + binario
		
		num = Trunc(num/2)
		
	FinMientras
	// si el numero = 0
	
	si binario = " " Entonces
		binario = "0"
	FinSi
	Escribir "El número binario es: ", binario
FinSi

FinAlgoritmo
