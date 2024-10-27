import math

## calculo de area y perimetro con una funcion (palabra reservada: def)

def rectangulo(base, altura):
    area = base * altura
    perimetro = 2 * (base + altura)
    return area, perimetro

def triangulo(base, altura):
    area = (base * altura) /2
    perimetro = l1 + l2 + l3
    return area, perimetro

def esfera(radio):
    volumen = (4/3)*math.pi*radio**3
    return volumen

def menu(): 
    print("Bienvenido a Phyton con funciones")
    print("Elige una opción: ")
    print("A: Area y perimetro del rectangulo")
    print("B: Area y perimetro del trianglo")
    print("C: Volumen de la esfera")
    
# programa 
menu()
opcion = input("Introduce la opcion: ").upper() #todo lo que se introduzca va a mayúscula

if opcion == "A" : 
    base = float(input("Introduce la base: "))
    altura = float(input("Introduce la altura: "))
    area, perimetro  = rectangulo(base, altura) #Lo que va a retornar igualado a lo que necesita
    print("El area es de: ", area)
    print("El perimetro es de: ", perimetro)
    
elif opcion == "B" : 
    base = float(input("Introduce la base: "))
    altura = float(input("Introduce la altura: "))
    l1 = float(input("Introduce el lado 1"))
    l2 = float(input("Introduce el lado 2"))
    l3 = float(input("Introduce el lado 3"))
    
    area, perimetro  = triangulo(base, altura) #Lo que va a retornar igualado a lo que necesita
    
    print("El area es de: ", area)
    print("El perimetro es de: ", perimetro)
    
if opcion == "C" : 
    radio = float(input("Introduce el radio: "))
    volumen  = esfera(radio) #Lo que va a retornar igualado a lo que necesita
    print("El volumen es de: ", volumen)

else : 
    print("Opcion no valida")
