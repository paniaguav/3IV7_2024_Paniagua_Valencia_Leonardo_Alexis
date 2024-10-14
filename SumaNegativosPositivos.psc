Algoritmo suma_de_numeros
	Escribir "desarrollar un algoritmo que sume numeros enteros del 1 al 10. "
	
	definir n Como Entero
	Definir suma Como Entero
	
	Escribir "Realiza la suma de n números. "
	Leer limite
	
	Para i <- 1 Hasta limite Con Paso 1 Hacer
		// i es un acumulador, el paso 1 es el incremento, k es el limite. 
		Escribir n
		n = n + 1 
		Escribir n
		suma = suma + n  
		Escribir suma
		
	Fin Para
	
	Escribir "La suma es: ", Suma
	
FinAlgoritmo
