Algoritmo num_primo
	Escribir "Ingrese el n�mero del que desea saber si es primo."
	Leer n 
	j = 2
	s = 0 
	
	mientras j <= n/2 Hacer
		si n%j = 0 Entonces
			s = s + 1 
		finSi
		j = j + 1 
	finMientras
	
	si s = 0 Y n > 1 Entonces
		Escribir "El n�mero es primo"
	sino 
		Escribir "El n�mero no es primo."
	finSi

FinAlgoritmo
