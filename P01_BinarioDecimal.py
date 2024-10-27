def decimal_a_binario(num):
    return bin(num)[2:]

def binario_a_decimal(num):
    return int(num, 2)

def main():
    while True:
        print("Elige una opcion:")
        print("1. Conversion de decimal a binario")
        print("2. Conversion de binario a decimal")
        print("3. Salir del programa")
        
        opcion = input("Ingresa tu opcion (1, 2 o 3): ")
        
        if opcion == '1':
            num_decimal = int(input("Ingresa un numero decimal: "))
            resultado = decimal_a_binario(num_decimal)
            print(f"El numero {num_decimal} en binario es: {resultado}")
        
        elif opcion == '2':
            num_binario = input("Ingresa un numero binario: ")
            resultado = binario_a_decimal(num_binario)
            print(f"El numero {num_binario} en decimal es: {resultado}")
        
        elif opcion == '3':
            print("Saliendo del programa...")
            break #esto hace que el programa acabe aqui, o sea k sale del bucle
        
        else:
            print("Opción no válida. Por favor, intenta de nuevo.")
        
        seguir = input("¿Quieres realizar otra conversión? (s/n): ")
        if seguir.lower() != 's':
            print("Saliendo del programa...")
            break # Funciona como el segun del pseint, segun s o n sale o sigue con el bukle

if __name__ == "__main__":
    main()
