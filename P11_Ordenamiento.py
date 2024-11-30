# Metodo burbuja: 

lista = 2, 5, 3, 6, 7, 9

def burbuja(lista): 
    n = len(lista)
    for i in range(n):
        for j in range(0, n-i-1):
            if(lista[j] > lista[j+1]): 
                lista[j], lista[j + 1] = lista[j + 1], lista[j]
    return lista

# Metodo de sort

def seleccion_sort(lista):
    n = len(lista)
    for i in range(n):
        min_idx = i
        for j in range(i + 1, n):
            if(lista[j] < lista[min_idx]):
                min_idx = j
            list[i], lista[min_idx] = lista[min_idx], lista[i]
    return lista

# Metodo de insertion: 

def insercion(lista): 
    for i in range(1, len(lista)):
        key = lista[i]
        j = i - 1
        while j >= 0 and key < lista[j]:
            lista[j + 1] = lista[j]
            j -= 1
            lista[j + 1] = key
    return lista

# merge

def merge(lista): 
    if(len(lista) > 1):
        mid = len(lista)//2
        izquierda = lista[:mid] #los dos puntos son el rango, mientras que mid es la mitad. 
        derecha = lista[mid:]
        
        # recursivo. 
        
        merge(izquierda)
        merge(derecha)
        
        i = j = k = 0
        
        while i < len(izquierda) and j < len(derecha):
            if(izquierda[i] < derecha[i]):
                lista[k] = izquierda[i]
                i += 1
            else: 
                lista[k] = derecha[i]
                j += 1
            k += 1
        
        while i < len(izquierda): 
            lista[k] = izquierda[i]
            i += 1
            k += 1
        
        while i < len(derecha): 
            lista[k] = derecha[i]
            i += 1
            k += 1
    return lista

# Metodo quick sort

def quick_sort(lista): 
    if(len[lista] <= 1):
        return lista
    pivote = lista[len(lista)//2]
    
    izquierda = [x for x in lista if x < pivote]
    medio = [x for x in lista if x == pivote]
    derecha = [x for x in lista if x > pivote]
    
    # recursividad: 
    
    return quick_sort(izquierda) + medio + quick_sort(derecha)


# tarea: 
