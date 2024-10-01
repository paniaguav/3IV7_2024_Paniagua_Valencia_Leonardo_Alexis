Algoritmo cobroestacionamiento_01
	
	Definir horaentrada, horasalida, minutoentrada, minutosalida, segundoentrada, segundosalida Como Entero
	Definir totalhoras, totalminutos, totalsegundos, totalcobro Como Entero
	Definir minutosrestantes, fraccionesde15minutos Como Real
	
	Escribir "Ingrese la hora de entrada (formato 24 horas):"
	Leer horaentrada
	Mientras horaentrada < 0 o horaentrada >= 24 Hacer
		Escribir "Error: Ingrese una hora válida (0-23):"
		Leer horaentrada
	FinMientras
	
	Escribir "Ingrese los minutos de entrada (formato 0 - 59 minutos):"
	Leer minutoentrada
	Mientras minutoentrada < 0 o minutoentrada >= 60 Hacer
		Escribir "Error: Ingrese minutos válidos (0-59):"
		Leer minutoentrada
	FinMientras
	
	Escribir "Ingrese los segundos de entrada (formato 0 - 59 segundos):"
	Leer segundoentrada
	Mientras segundoentrada < 0 o segundoentrada >= 60 Hacer
		Escribir "Error: Ingrese segundos válidos (0-59):"
		Leer segundoentrada
	FinMientras
	
	Escribir "Ingrese la hora de salida (formato 24 horas):"
	Leer horasalida
	Mientras horasalida < 0 o horasalida >= 24 Hacer
		Escribir "Error: Ingrese una hora válida (0-23):"
		Leer horasalida
	FinMientras
	
	Escribir "Ingrese los minutos de salida (formato 0 - 59 minutos):"
	Leer minutosalida
	Mientras minutosalida < 0 o minutosalida >= 60 Hacer
		Escribir "Error: Ingrese minutos válidos (0-59):"
		Leer minutosalida
	FinMientras
	
	Escribir "Ingrese los segundos de salida (formato 0 - 59 segundos):"
	Leer segundosalida
	Mientras segundosalida < 0 o segundosalida >= 60 Hacer
		Escribir "Error: Ingrese segundos válidos (0-59):"
		Leer segundosalida
	FinMientras
	
	totalhoras = horasalida - horaentrada
	totalminutos = minutosalida - minutoentrada
	totalsegundos = segundosalida - segundoentrada
	
	Si totalsegundos < 0 Entonces
		totalsegundos = totalsegundos + 60
		totalminutos = totalminutos - 1
	FinSi
	
	Si totalminutos < 0 Entonces
		totalminutos = totalminutos + 60
		totalhoras = totalhoras - 1
	FinSi
	
	Si totalhoras < 0 Entonces
		Escribir "Error: La hora de salida debe ser mayor o igual a la hora de entrada."
FinSi

totalminutos = (totalhoras * 60) + totalminutos

totalcobro = 0
Si totalminutos >= 60 Entonces
	totalcobro = totalcobro + (totalminutos / 60) * 15
FinSi

minutosrestantes = totalminutos % 60 
Si minutosrestantes > 0 Entonces
	fraccionesde15minutos = minutosrestantes / 15
	totalcobro = totalcobro + fraccionesde15minutos * 4 
FinSi

Escribir "El total a pagar es de: ", totalcobro, " pesos"

FinAlgoritmo