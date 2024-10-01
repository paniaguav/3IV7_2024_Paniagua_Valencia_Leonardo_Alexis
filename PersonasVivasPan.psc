Algoritmo censovivos
    Definir NumeroPersonas, AñosAConsultar Como Entero
    Definir TPersonasVivas, EdadJoven, EdadVieja, Edad Como Entero
    Definir i, x, z Como Entero
    Definir personasVivas Como Caracter
    Definir AÑO_MAX Como Entero
    AÑO_MAX <- 122 // Límite de edad de 122 años
	
    Escribir "Ingresa el numero de personas de la lista:"
    Leer NumeroPersonas
	
    Dimension AñoNacimiento[NumeroPersonas]
    Dimension AñoFallecimiento[NumeroPersonas]
	
    Para i Desde 1 Hasta NumeroPersonas Hacer
        Escribir "Ingresa el año de nacimiento de la persona numero ", i, ":"
        Leer AñoNacimiento[i]
        Mientras AñoNacimiento[i] < -1500 O AñoNacimiento[i] > 2024 Hacer
            Escribir "Por favor, ingresa un año válido:"
            Leer AñoNacimiento[i]
        Fin Mientras
		
        Escribir "Ingresa el año de fallecimiento de la persona numero ", i, ":"
        Leer AñoFallecimiento[i]
        Mientras AñoFallecimiento[i] < AñoNacimiento[i] Hacer
            Escribir "La persona no puede morir antes de nacer. Por favor, ingresa un año válido:"
            Leer AñoFallecimiento[i]
        Fin Mientras
    Fin Para
	
    Escribir "Ingresa el numero de años a consultar:"
    Leer AñosAConsultar
    Dimension AñoIngresado[AñosAConsultar]
	
    Para x Desde 1 Hasta AñosAConsultar Hacer
        Escribir "¿De qué año desea conocer los datos?"
        Leer AñoIngresado[x]
        Mientras AñoIngresado[x] < -1500 O AñoIngresado[x] > 2025 Hacer
            Escribir "Por favor, ingresa un año válido. Solo tenemos registro hasta 2025:"
            Leer AñoIngresado[x]
        Fin Mientras
    Fin Para
	
    Para x Desde 1 Hasta AñosAConsultar Hacer
        TPersonasVivas <- 0
        EdadJoven <- 9999
        EdadVieja <- -1
        personasVivas <- ""
		
        Para z Desde 1 Hasta NumeroPersonas Hacer
            Si AñoNacimiento[z] <= AñoIngresado[x] Y AñoFallecimiento[z] >= AñoIngresado[x] Entonces
                TPersonasVivas <- TPersonasVivas + 1
                Edad <- AñoIngresado[x] - AñoNacimiento[z]
				
                Si Edad > AÑO_MAX Entonces
                    Escribir "Una de las personas tiene una edad superior a ", AÑO_MAX, " años y no puede ser considerada."

                Fin Si
				
                Si personasVivas = "" Entonces
                    personasVivas <- "[" + ConvertirATexto(AñoNacimiento[z]) + "]"
                Sino
                    personasVivas <- personasVivas + ", [" + ConvertirATexto(AñoNacimiento[z]) + "]"
                Fin Si
				
                Si Edad < EdadJoven Y Edad >= 0 Entonces
                    EdadJoven <- Edad
                Fin Si
				
                Si Edad > EdadVieja Entonces
                    EdadVieja <- Edad
                Fin Si
            Fin Si
        Fin Para
		
        Escribir "En el año ", AñoIngresado[x], " había ", TPersonasVivas, " personas vivas nacidas en ", personasVivas, "."
        Si TPersonasVivas > 0 Entonces
            Escribir "La persona más joven tenía ", EdadJoven, " años."
            Escribir "La persona más anciana tenía ", EdadVieja, " años."
        Sino
            Escribir "No había personas vivas, por lo tanto no había ni personas jóvenes ni ancianas."
        Fin Si
    Fin Para

FinAlgoritmo

