Algoritmo censovivos
    Definir NumeroPersonas, A�osAConsultar Como Entero
    Definir TPersonasVivas, EdadJoven, EdadVieja, Edad Como Entero
    Definir i, x, z Como Entero
    Definir personasVivas Como Caracter
    Definir A�O_MAX Como Entero
    A�O_MAX <- 122 // L�mite de edad de 122 a�os
	
    Escribir "Ingresa el numero de personas de la lista:"
    Leer NumeroPersonas
	
    Dimension A�oNacimiento[NumeroPersonas]
    Dimension A�oFallecimiento[NumeroPersonas]
	
    Para i Desde 1 Hasta NumeroPersonas Hacer
        Escribir "Ingresa el a�o de nacimiento de la persona numero ", i, ":"
        Leer A�oNacimiento[i]
        Mientras A�oNacimiento[i] < -1500 O A�oNacimiento[i] > 2024 Hacer
            Escribir "Por favor, ingresa un a�o v�lido:"
            Leer A�oNacimiento[i]
        Fin Mientras
		
        Escribir "Ingresa el a�o de fallecimiento de la persona numero ", i, ":"
        Leer A�oFallecimiento[i]
        Mientras A�oFallecimiento[i] < A�oNacimiento[i] Hacer
            Escribir "La persona no puede morir antes de nacer. Por favor, ingresa un a�o v�lido:"
            Leer A�oFallecimiento[i]
        Fin Mientras
    Fin Para
	
    Escribir "Ingresa el numero de a�os a consultar:"
    Leer A�osAConsultar
    Dimension A�oIngresado[A�osAConsultar]
	
    Para x Desde 1 Hasta A�osAConsultar Hacer
        Escribir "�De qu� a�o desea conocer los datos?"
        Leer A�oIngresado[x]
        Mientras A�oIngresado[x] < -1500 O A�oIngresado[x] > 2025 Hacer
            Escribir "Por favor, ingresa un a�o v�lido. Solo tenemos registro hasta 2025:"
            Leer A�oIngresado[x]
        Fin Mientras
    Fin Para
	
    Para x Desde 1 Hasta A�osAConsultar Hacer
        TPersonasVivas <- 0
        EdadJoven <- 9999
        EdadVieja <- -1
        personasVivas <- ""
		
        Para z Desde 1 Hasta NumeroPersonas Hacer
            Si A�oNacimiento[z] <= A�oIngresado[x] Y A�oFallecimiento[z] >= A�oIngresado[x] Entonces
                TPersonasVivas <- TPersonasVivas + 1
                Edad <- A�oIngresado[x] - A�oNacimiento[z]
				
                Si Edad > A�O_MAX Entonces
                    Escribir "Una de las personas tiene una edad superior a ", A�O_MAX, " a�os y no puede ser considerada."

                Fin Si
				
                Si personasVivas = "" Entonces
                    personasVivas <- "[" + ConvertirATexto(A�oNacimiento[z]) + "]"
                Sino
                    personasVivas <- personasVivas + ", [" + ConvertirATexto(A�oNacimiento[z]) + "]"
                Fin Si
				
                Si Edad < EdadJoven Y Edad >= 0 Entonces
                    EdadJoven <- Edad
                Fin Si
				
                Si Edad > EdadVieja Entonces
                    EdadVieja <- Edad
                Fin Si
            Fin Si
        Fin Para
		
        Escribir "En el a�o ", A�oIngresado[x], " hab�a ", TPersonasVivas, " personas vivas nacidas en ", personasVivas, "."
        Si TPersonasVivas > 0 Entonces
            Escribir "La persona m�s joven ten�a ", EdadJoven, " a�os."
            Escribir "La persona m�s anciana ten�a ", EdadVieja, " a�os."
        Sino
            Escribir "No hab�a personas vivas, por lo tanto no hab�a ni personas j�venes ni ancianas."
        Fin Si
    Fin Para

FinAlgoritmo

