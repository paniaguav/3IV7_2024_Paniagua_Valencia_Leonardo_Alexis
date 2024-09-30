Algoritmo cobroestacionamiento_01
		
		Definir horaentrada, horasalida, minutoentrada, minutosalida, segundoentrada, segundosalida Como Entero
		Definir totalhoras, totalminutos, minutostotalescuenta Como Entero
		Definir totalcobro Como Entero
		
		Escribir "Ingrese la hora de entrada (formato 24 horas):"
		Leer horaentrada
		Escribir "Ingrese los minutos de entrada (formato 0 - 59 minutos):"
		Leer minutoentrada
		Escribir "Ingrese los segundos de entrada (formato 0 - 59 segundos):"
		Leer segundoentrada
		
		Escribir "Ingrese la hora de salida (formato 24 horas):"
		Leer horasalida
		Escribir "Ingrese los minutos de salida (formato 0 - 59 minutos):"
		Leer minutosalida
		Escribir "Ingrese los segundos de salida (formato 0 - 59 segundos):"
		Leer segundosalida
		
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
