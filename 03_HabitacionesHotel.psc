Algoritmo HabitacionesHotel_03
	Definir habitaciones Como Entero
	Definir ocupadas Como Entero
	Definir lista_habitaciones Como Entero
	Definir fechas_salida Como Entero
	Definir opcion Como Entero
	Definir reserva_num Como Entero
	Definir fecha_entrada Como Entero
	Definir fecha_salida Como Entero
	
	ocupadas = 0
	habitaciones = 10
	Dimension lista_habitaciones[10]
	Dimension fechas_salida[10]
	
	Para contador Desde 1 Hasta 10 Hacer
		lista_habitaciones[contador] = 0
		fechas_salida[contador] = 0
	Fin Para
	
	Repetir
		Escribir "Menu:"
		Escribir "1. Registrar Reserva"
		Escribir "2. Cancelar Reserva"
		Escribir "3. Consultar Disponibilidad"
		Escribir "4. Gestión de Ocupación"
		Escribir "5. Finalizar"
		Leer opcion
		
		Segun opcion Hacer
			1:
				Escribir "Elija un número de habitación (1 a 10):"
				Leer reserva_num
				Si reserva_num >= 1 Y reserva_num <= 10 Entonces
					Si lista_habitaciones[reserva_num] = 0 Entonces
						Escribir "Ingrese fecha de entrada (YYYYMMDD):"
						Leer fecha_entrada
						Escribir "Ingrese fecha de salida (YYYYMMDD):"
						Leer fecha_salida
						lista_habitaciones[reserva_num] = 1
						fechas_salida[reserva_num] = fecha_salida
						ocupadas = ocupadas + 1
						Escribir "Reserva para habitación ", reserva_num, " exitosa desde ", fecha_entrada, " hasta ", fecha_salida, "."
					Sino
						Escribir "La habitación ", reserva_num, " ya está ocupada."
					Fin Si
				Sino
					Escribir "Número de habitación inválido. Debe ser entre 1 y 10."
				Fin Si
				
			2:
				Escribir "Ingrese el número de reserva a cancelar (1 a 10):"
				Leer reserva_num
				Si reserva_num >= 1 Y reserva_num <= 10 Entonces
					Si lista_habitaciones[reserva_num] = 1 Entonces
						lista_habitaciones[reserva_num] = 0
						fechas_salida[reserva_num] = 0
						ocupadas = ocupadas - 1
						Escribir "Reserva para habitación ", reserva_num, " cancelada."
					Sino
						Escribir "La reserva no existe para la habitación ", reserva_num, "."
					Fin Si
				Sino
					Escribir "Número de habitación inválido. Debe ser entre 1 y 10."
				Fin Si
				
			3:
				Escribir "Habitaciones disponibles y ocupadas:"
				Para contador Desde 1 Hasta 10 Hacer
					Si lista_habitaciones[contador] = 0 Entonces
						Escribir "Habitación ", contador, " está disponible."
					Sino
						Escribir "Habitación ", contador, " está ocupada hasta ", fechas_salida[contador], "."
					Fin Si
				Fin Para
				
			4:
				Escribir "Porcentaje de ocupación del hotel: ", (ocupadas * 100) / habitaciones, "%"
				
			5:
				Escribir "Finalizando el programa."
				
			De Otro Modo:
				Escribir "Opción inválida, por favor intente de nuevo."
		Fin Segun
Hasta que opcion = 5

FinAlgoritmo
