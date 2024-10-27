# deberan crear un codigo mediante el cual se introduzca una matriz de 3x3 o 5x5 ingrese los valores imprima la matriz original y luego su transpuesta, 
# Transpuesta: La matriz traspuesta de una matriz se denota por y se obtiene cambiando sus filas por columnas (o viceversa) <- segun google

def ingresar_matriz(m):
    matriz = []
    print(f"Ingresa los valores de la matriz de {m}x{m}: ")
    for i in range(m): 
        fila = []
        for j in range(m): 
            valor = float(input(f"Elemento: [{i + 1}][{j + 1}] : "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def transpuesta(matriz):
    m = len(matriz)
    matriz_trans = []
    for j in range(m):
        fila = []
        for i in range(m):
            fila.append(matriz[i][j])
        matriz_trans.append(fila)
    return matriz_trans

def imprimir_matriz(matriz):
    for fila in matriz:
        print(fila)

def main():
    m = int(input("Ingrese si su matriz es de 3 o 5: "))
    if m not in [3, 5]:
        print("Tamaño no valido, debe ser 3 o 5")
        return

    matriz = ingresar_matriz(m)

    print("\nMatriz Original:")
    imprimir_matriz(matriz)

    matriz_transpuesta = transpuesta(matriz)

    print("\nMatriz Transpuesta:")
    imprimir_matriz(matriz_transpuesta)

if __name__ == "__main__":
    main()

