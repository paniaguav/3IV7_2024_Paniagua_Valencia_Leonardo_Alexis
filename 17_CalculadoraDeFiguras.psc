// Programa para calcular areas y perimetros pero con subprocesos. (Las formas de compactar)
// Los procesos son: Algoritmo que vamos a crear. SubProcesos: operaciones internas dedicadas a una sola operación. 

// SubProceso del rectangulo: El () son los argumentos para calcular o lo que se necesita

// Los argumentos pertenecen al proceso pero no son variables. Las variables son cambiantes (Definidos), los argumentos es un dato que nosotros ocupamos. (No están definidas)

// SubProceso del rectángulo
SubProceso Rectangulo(base, altura)
    definir area, perimetro como real
    area <- (base * altura)
    perimetro <- 2 * (base + altura)
    Escribir "El área del rectángulo es: ", area
    Escribir "El perímetro del rectángulo es: ", perimetro
FinSubProceso

// SubProceso del triángulo
SubProceso Triangulo(base, altura, l1, l2, l3)
    definir area, perimetro como real
    area <- (base * altura) / 2
    perimetro <- (l1 + l2 + l3)
    Escribir "El área del triángulo es: ", area
    Escribir "El perímetro del triángulo es: ", perimetro
FinSubProceso

// SubProceso del heptágono
SubProceso Heptagono(lado)
    definir area, perimetro como real
    perimetro <- 7 * lado
    area <- (7 * lado^2) / (4 * tan(PI / 7))
    Escribir "El área del heptágono es: ", area
    Escribir "El perímetro del heptágono es: ", perimetro
FinSubProceso

// SubProceso del octágono

	SubProceso Octagono(lado)
		definir area, perimetro como real
		perimetro <- 8 * lado
		area <- 2 * (1 + (2^0.5)) * lado^2  // Usar (2^0.5) para calcular la raíz cuadrada de 2
		Escribir "El área del octágono es: ", area
		Escribir "El perímetro del octágono es: ", perimetro
FinSubProceso

// SubProceso del eneágono
SubProceso Eneagono(lado)
    definir area, perimetro como real
    perimetro <- 9 * lado
    area <- (9 * lado^2) / (4 * tan(PI / 9))
    Escribir "El área del eneágono es: ", area
    Escribir "El perímetro del eneágono es: ", perimetro
FinSubProceso

// SubProceso del decágono
SubProceso Decagono(lado)
    definir area, perimetro como real
    perimetro <- 10 * lado
    area <- (5 * lado^2) / (2 * tan(PI / 10))
    Escribir "El área del decágono es: ", area
    Escribir "El perímetro del decágono es: ", perimetro
FinSubProceso

// Algoritmo principal
Algoritmo CalculadoraDeFiguras
    definir opcion como Caracter
    definir base, altura, l1, l2, l3, lado como real
	
    Escribir "Selecciona una opción: "
    Escribir "A: Área y perímetro del rectángulo."
    Escribir "B: Área y perímetro del triángulo."
    Escribir "C: Área y perímetro del heptágono."
    Escribir "D: Área y perímetro del octágono."
    Escribir "E: Área y perímetro del eneágono."
    Escribir "F: Área y perímetro del decágono."
    
    leer opcion
    
    segun opcion hacer 
        caso "A":
            Escribir "Ingresa la base del rectángulo: "
            leer base
            Escribir "Ingresa la altura del rectángulo: "
            leer altura
            Rectangulo(base, altura)
			
        caso "B":
            Escribir "Ingresa la base del triángulo: "
            leer base
            Escribir "Ingresa la altura del triángulo: "
            leer altura
            Escribir "Ingresa el lado 1: "
            leer l1
            Escribir "Ingresa el lado 2: "
            leer l2
            Escribir "Ingresa el lado 3: "
            leer l3
            Triangulo(base, altura, l1, l2, l3)
			
        caso "C":
            Escribir "Ingresa el lado del heptágono: "
            leer lado
            Heptagono(lado)
			
        caso "D":
            Escribir "Ingresa el lado del octágono: "
            leer lado
            Octagono(lado)
			
        caso "E":
            Escribir "Ingresa el lado del eneágono: "
            leer lado
            Eneagono(lado)
			
        caso "F":
            Escribir "Ingresa el lado del decágono: "
            leer lado
            Decagono(lado)
			
        De Otro Modo:
            Escribir "Opción no válida."
    FinSegun
FinAlgoritmo

// Primero sde definen los SubProceso. Se pueden poner abajo, perooo: cuando lanzamos el codigo, define Algoritmo, empieza la estructura y llama a la funcion, se pone a buscarlo (jaja k wei) hasta que lo topa. Si primero se ponen los SubProcesos va a cargar primero eso. (Más rápido).
