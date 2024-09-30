Proceso CensoVivos
    Definir NumeroPersonas, A�osAConsultar Como Entero
    Definir TPersonasVivas, EdadJoven, EdadVieja, Edad Como Entero
    Definir i, x, z Como Entero
    Definir personasVivas Como Caracter
	
    // Leer la cantidad de personas
    Escribir "Ingresa el numero de personas de la lista:"
    Leer NumeroPersonas
	
    // Crear arreglos para los a�os de nacimiento y fallecimiento
    Dimension A�oNacimiento[NumeroPersonas]
    Dimension A�oFallecimiento[NumeroPersonas]
	
    // Ingresar los datos de nacimiento y fallecimiento
    Para i Desde 1 Hasta NumeroPersonas Hacer
        Escribir "Ingresa el a�o de nacimiento de la persona numero ", i, ":"
        Leer A�oNacimiento[i]
        Escribir "Ingresa el a�o de fallecimiento de la persona numero ", i, ":"
        Leer A�oFallecimiento[i]
		
        // Validar que la persona no muera antes de nacer
        Si A�oFallecimiento[i] < A�oNacimiento[i] Entonces
            Escribir "La persona no puede morir antes de nacer."
	Fin Si
Fin Para

// Leer los a�os a consultar
Escribir "Ingresa el numero de a�os a consultar:"
Leer A�osAConsultar
Dimension A�oIngresado[A�osAConsultar]

// Ingresar los a�os que se desean consultar
Para x Desde 1 Hasta A�osAConsultar Hacer
	Escribir "�De qu� a�o desea conocer los datos?"
	Leer A�oIngresado[x]
Fin Para

// Procesar cada a�o consultado
Para x Desde 1 Hasta A�osAConsultar Hacer
	TPersonasVivas <- 0
	EdadJoven <- 9999
	EdadVieja <- -1
	personasVivas <- ""
	
	// Verificar cu�ntas personas estaban vivas en el a�o consultado
	Para z Desde 1 Hasta NumeroPersonas Hacer
		Si A�oNacimiento[z] <= A�oIngresado[x] Y A�oFallecimiento[z] >= A�oIngresado[x] Entonces
			TPersonasVivas <- TPersonasVivas + 1
			Edad <- A�oIngresado[x] - A�oNacimiento[z]
			
			// Actualizar la lista de personas vivas
			Si personasVivas = "" Entonces
				personasVivas <- "[" + ConvertirATexto(A�oNacimiento[z]) + "]"
			Sino
				personasVivas <- personasVivas + ", [" + ConvertirATexto(A�oNacimiento[z]) + "]"
			Fin Si
			
			// Calcular la edad de la persona m�s joven
			Si Edad < EdadJoven Y Edad >= 0 Entonces
				EdadJoven <- Edad
			Fin Si
			
			// Calcular la edad de la persona m�s anciana
			Si Edad > EdadVieja Entonces
				EdadVieja <- Edad
			Fin Si
		Fin Si
	Fin Para
	
	// Imprimir resultados
	Escribir "En el a�o ", A�oIngresado[x], " hab�a ", TPersonasVivas, " personas vivas nacidas en ", personasVivas, "."
	Si TPersonasVivas > 0 Entonces
		Escribir "La persona m�s joven ten�a ", EdadJoven, " a�os."
		Escribir "La persona m�s anciana ten�a ", EdadVieja, " a�os."
	Sino
		Escribir "No hab�a personas vivas, por lo tanto no hab�a ni personas m�s j�venes ni m�s longevas."
        Fin Si
    Fin Para
Fin Proceso
