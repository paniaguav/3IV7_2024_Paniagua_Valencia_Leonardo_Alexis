// Programa para calcular areas y perimetros pero con subprocesos. (Las formas de compactar)
// Los procesos son: Algoritmo que vamos a crear. SubProcesos: operaciones internas dedicadas a una sola operaci�n. 

// SubProceso del rectangulo: El () son los argumentos para calcular o lo que se necesita

// Los argumentos pertenecen al proceso pero no son variables. Las variables son cambiantes (Definidos), los argumentos es un dato que nosotros ocupamos. (No est�n definidas)

// SubProceso del rect�ngulo
SubProceso Rectangulo(base, altura)
    definir area, perimetro como real
    area <- (base * altura)
    perimetro <- 2 * (base + altura)
    Escribir "El �rea del rect�ngulo es: ", area
    Escribir "El per�metro del rect�ngulo es: ", perimetro
FinSubProceso

// SubProceso del tri�ngulo
SubProceso Triangulo(base, altura, l1, l2, l3)
    definir area, perimetro como real
    area <- (base * altura) / 2
    perimetro <- (l1 + l2 + l3)
    Escribir "El �rea del tri�ngulo es: ", area
    Escribir "El per�metro del tri�ngulo es: ", perimetro
FinSubProceso

// SubProceso del hept�gono
SubProceso Heptagono(lado)
    definir area, perimetro como real
    perimetro <- 7 * lado
    area <- (7 * lado^2) / (4 * tan(PI / 7))
    Escribir "El �rea del hept�gono es: ", area
    Escribir "El per�metro del hept�gono es: ", perimetro
FinSubProceso

// SubProceso del oct�gono

	SubProceso Octagono(lado)
		definir area, perimetro como real
		perimetro <- 8 * lado
		area <- 2 * (1 + (2^0.5)) * lado^2  // Usar (2^0.5) para calcular la ra�z cuadrada de 2
		Escribir "El �rea del oct�gono es: ", area
		Escribir "El per�metro del oct�gono es: ", perimetro
FinSubProceso

// SubProceso del ene�gono
SubProceso Eneagono(lado)
    definir area, perimetro como real
    perimetro <- 9 * lado
    area <- (9 * lado^2) / (4 * tan(PI / 9))
    Escribir "El �rea del ene�gono es: ", area
    Escribir "El per�metro del ene�gono es: ", perimetro
FinSubProceso

// SubProceso del dec�gono
SubProceso Decagono(lado)
    definir area, perimetro como real
    perimetro <- 10 * lado
    area <- (5 * lado^2) / (2 * tan(PI / 10))
    Escribir "El �rea del dec�gono es: ", area
    Escribir "El per�metro del dec�gono es: ", perimetro
FinSubProceso

// Algoritmo principal
Algoritmo CalculadoraDeFiguras
    definir opcion como Caracter
    definir base, altura, l1, l2, l3, lado como real
	
    Escribir "Selecciona una opci�n: "
    Escribir "A: �rea y per�metro del rect�ngulo."
    Escribir "B: �rea y per�metro del tri�ngulo."
    Escribir "C: �rea y per�metro del hept�gono."
    Escribir "D: �rea y per�metro del oct�gono."
    Escribir "E: �rea y per�metro del ene�gono."
    Escribir "F: �rea y per�metro del dec�gono."
    
    leer opcion
    
    segun opcion hacer 
        caso "A":
            Escribir "Ingresa la base del rect�ngulo: "
            leer base
            Escribir "Ingresa la altura del rect�ngulo: "
            leer altura
            Rectangulo(base, altura)
			
        caso "B":
            Escribir "Ingresa la base del tri�ngulo: "
            leer base
            Escribir "Ingresa la altura del tri�ngulo: "
            leer altura
            Escribir "Ingresa el lado 1: "
            leer l1
            Escribir "Ingresa el lado 2: "
            leer l2
            Escribir "Ingresa el lado 3: "
            leer l3
            Triangulo(base, altura, l1, l2, l3)
			
        caso "C":
            Escribir "Ingresa el lado del hept�gono: "
            leer lado
            Heptagono(lado)
			
        caso "D":
            Escribir "Ingresa el lado del oct�gono: "
            leer lado
            Octagono(lado)
			
        caso "E":
            Escribir "Ingresa el lado del ene�gono: "
            leer lado
            Eneagono(lado)
			
        caso "F":
            Escribir "Ingresa el lado del dec�gono: "
            leer lado
            Decagono(lado)
			
        De Otro Modo:
            Escribir "Opci�n no v�lida."
    FinSegun
FinAlgoritmo

// Primero sde definen los SubProceso. Se pueden poner abajo, perooo: cuando lanzamos el codigo, define Algoritmo, empieza la estructura y llama a la funcion, se pone a buscarlo (jaja k wei) hasta que lo topa. Si primero se ponen los SubProcesos va a cargar primero eso. (M�s r�pido).