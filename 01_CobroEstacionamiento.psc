Algoritmo cobroestacionamiento
	
	//definiciones
	
	Definir horaentrada, horasalida, minutosalida, minutoentrada Como Entero
	definir totalhoras, totalminutos, minutostotalescuenta Como Entero
	Definir totalcobro como entero
	
	// entrada de datos
	
	Escribir "Ingrese la hora de entrada (formato 24 horas)"
	leer horaentrada
	Escribir "Ingrese los minutos de entrada (formato 0 - 59 minutos)"
	leer minutoentrada
	
	// salida de datos
	
	Escribir "Ingrese la hora de salida (formato 24 horas)"
	leer horasalida
	Escribir "Ingrese los minutos de salida (formato 0 - 59 minutos)"
	leer minutosalida
	
	// procesos
	// calcular el tiempo total en minutos 
	
	totalhora <- horasalida - horaentrada
	totalminutos <- minutosalida - minutoentrada
	
	// evaluacion de casos
	// si los m de salida son menores a los de entrada hay que ajustar el tiempo
	
	si totalminutos < 0 Entonces
		totalminutos = totalminutos + 60
		// total minutos += 60 es lo mismo.
		totalhoras = totalhoras - 1
	FinSi
	// solo se evalua el caso del negativo. 
	// No se acarrea nada a las horas 
	// convertir todo a minutos. 
	
	totalminutos = (totalhoras * 60) + totalminutos
	
	//calcular el cobro
	totalcobro = 0
	//calcular el cobro por la hora completa. 
	// cada 60 minutos hay que saber cuantos intervalos tuvo: 
	
	si totalminutos >= 60 Entonces
		totalcobro = totalcobro + (totalminutos/60)*15
	FinSi
	
	// calcular el cobro de cada fracción
	
	minutosrestantes = totalminutos%60 
	si minutosrestantes > 0 Entonces
		fraccionesde15minutos = minutosrestantes // aqui se detienen los 15
		
		// cobrar cada fracción 
		totalcobro = totalcobro + fraccionesde15minutos * 4 
	FinSi
	
	Escribir "El total a pagar es de: ", totalcobro, "pesos"
	
FinAlgoritmo
