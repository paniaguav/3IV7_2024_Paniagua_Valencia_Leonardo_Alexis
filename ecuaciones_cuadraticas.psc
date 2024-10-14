Algoritmo ecuaciones_cuadraticas
	
	Definir a, b, c Como Real
	
    Escribir "Ingrese a: "
    Leer a
    Escribir "Ingrese b: "
    Leer b
    Escribir "Ingrese c: "
    Leer c
	
	discriminante <- b^2 - 4*a*c
	
    Si discriminante < 0 Entonces
        Escribir "La ecuación no tiene soluciones reales."
    Sino
        x1 <- (-b + raiz(discriminante)) / (2*a)
        x2 <- (-b - raiz(discriminante)) / (2*a)
        Escribir "Las soluciones son: ", x1, " y ", x2
    FinSi
	
FinAlgoritmo
