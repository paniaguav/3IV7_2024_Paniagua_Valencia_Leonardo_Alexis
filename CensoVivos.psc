Proceso CensoVivos
    Definir NumeroPersonas, AñosAConsultar Como Entero
    Definir TPersonasVivas, EdadJoven, EdadVieja, Edad Como Entero
    Definir i, x, z Como Entero
    Definir personasVivas Como Caracter
	
    // Leer la cantidad de personas
    Escribir "Ingresa el numero de personas de la lista:"
    Leer NumeroPersonas
	
    // Crear arreglos para los años de nacimiento y fallecimiento
    Dimension AñoNacimiento[NumeroPersonas]
    Dimension AñoFallecimiento[NumeroPersonas]
	
    // Ingresar los datos de nacimiento y fallecimiento
    Para i Desde 1 Hasta NumeroPersonas Hacer
        Escribir "Ingresa el año de nacimiento de la persona numero ", i, ":"
        Leer AñoNacimiento[i]
        Escribir "Ingresa el año de fallecimiento de la persona numero ", i, ":"
        Leer AñoFallecimiento[i]
		
        // Validar que la persona no muera antes de nacer
        Si AñoFallecimiento[i] < AñoNacimiento[i] Entonces
            Escribir "La persona no puede morir antes de nacer."
	Fin Si
Fin Para

// Leer los años a consultar
Escribir "Ingresa el numero de años a consultar:"
Leer AñosAConsultar
Dimension AñoIngresado[AñosAConsultar]

// Ingresar los años que se desean consultar
Para x Desde 1 Hasta AñosAConsultar Hacer
	Escribir "¿De qué año desea conocer los datos?"
	Leer AñoIngresado[x]
Fin Para

// Procesar cada año consultado
Para x Desde 1 Hasta AñosAConsultar Hacer
	TPersonasVivas <- 0
	EdadJoven <- 9999
	EdadVieja <- -1
	personasVivas <- ""
	
	// Verificar cuántas personas estaban vivas en el año consultado
	Para z Desde 1 Hasta NumeroPersonas Hacer
		Si AñoNacimiento[z] <= AñoIngresado[x] Y AñoFallecimiento[z] >= AñoIngresado[x] Entonces
			TPersonasVivas <- TPersonasVivas + 1
			Edad <- AñoIngresado[x] - AñoNacimiento[z]
			
			// Actualizar la lista de personas vivas
			Si personasVivas = "" Entonces
				personasVivas <- "[" + ConvertirATexto(AñoNacimiento[z]) + "]"
			Sino
				personasVivas <- personasVivas + ", [" + ConvertirATexto(AñoNacimiento[z]) + "]"
			Fin Si
			
			// Calcular la edad de la persona más joven
			Si Edad < EdadJoven Y Edad >= 0 Entonces
				EdadJoven <- Edad
			Fin Si
			
			// Calcular la edad de la persona más anciana
			Si Edad > EdadVieja Entonces
				EdadVieja <- Edad
			Fin Si
		Fin Si
	Fin Para
	
	// Imprimir resultados
	Escribir "En el año ", AñoIngresado[x], " había ", TPersonasVivas, " personas vivas nacidas en ", personasVivas, "."
	Si TPersonasVivas > 0 Entonces
		Escribir "La persona más joven tenía ", EdadJoven, " años."
		Escribir "La persona más anciana tenía ", EdadVieja, " años."
	Sino
		Escribir "No había personas vivas, por lo tanto no había ni personas más jóvenes ni más longevas."
        Fin Si
    Fin Para
Fin Proceso
