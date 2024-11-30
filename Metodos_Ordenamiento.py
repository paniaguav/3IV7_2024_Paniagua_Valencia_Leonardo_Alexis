import tkinter as tk
from tkinter import messagebox
import time

def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

def selection_sort(arr):
    for i in range(len(arr)):
        min_idx = i
        for j in range(i+1, len(arr)):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr

def insertion_sort(arr):
    for i in range(1, len(arr)):
        key = arr[i]
        j = i-1
        while j >= 0 and key < arr[j]:
            arr[j+1] = arr[j]
            j -= 1
        arr[j+1] = key
    return arr

def quick_sort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quick_sort(left) + middle + quick_sort(right)

def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    mid = len(arr) // 2
    left = merge_sort(arr[:mid])
    right = merge_sort(arr[mid:])
    return merge(left, right)

def merge(left, right):
    result = []
    i = j = 0
    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
    result.extend(left[i:])
    result.extend(right[j:])
    return result

def heap_sort(arr):
    def heapify(arr, n, i):
        largest = i
        left = 2 * i + 1
        right = 2 * i + 2
        if left < n and arr[i] < arr[left]:
            largest = left
        if right < n and arr[largest] < arr[right]:
            largest = right
        if largest != i:
            arr[i], arr[largest] = arr[largest], arr[i]
            heapify(arr, n, largest)

    n = len(arr)
    for i in range(n//2 - 1, -1, -1):
        heapify(arr, n, i)
    for i in range(n-1, 0, -1):
        arr[i], arr[0] = arr[0], arr[i]
        heapify(arr, i, 0)
    return arr

def radix_sort(arr):
    def counting_sort(arr, exp):
        output = [0] * len(arr)
        count = [0] * 10

        for i in range(len(arr)):
            index = arr[i] // exp
            count[index % 10] += 1

        for i in range(1, 10):
            count[i] += count[i - 1]

        i = len(arr) - 1
        while i >= 0:
            index = arr[i] // exp
            output[count[index % 10] - 1] = arr[i]
            count[index % 10] -= 1
            i -= 1

        for i in range(len(arr)):
            arr[i] = output[i]

    max_num = max(arr)
    exp = 1
    while max_num // exp > 0:
        counting_sort(arr, exp)
        exp *= 10
    return arr

def counting_sort(arr):
    max_val = max(arr)
    count = [0] * (max_val + 1)
    output = [0] * len(arr)

    for num in arr:
        count[num] += 1

    for i in range(1, len(count)):
        count[i] += count[i - 1]

    for i in range(len(arr) - 1, -1, -1):
        output[count[arr[i]] - 1] = arr[i]
        count[arr[i]] -= 1

    return output

def sort_numbers():
    input_str = entry.get()
    try:
        numbers = list(map(int, input_str.split(',')))
        if len(numbers) > 40:
            messagebox.showerror("Error", "La lista no puede tener más de 40 números.")
            return
    except ValueError:
        messagebox.showerror("Error", "Por favor, ingrese una lista de números válidos separados por coma.")
        return

    entry_label.pack_forget()
    entry.pack_forget()
    sort_button.pack_forget()
    method_label.pack()
    for rb in method_rbs:
        rb.pack()
    apply_button.pack()
    back_button.pack()

    global original_list
    original_list = numbers[:]

def apply_sort():
    method = method_var.get()

    start_time = time.time()

    if method == "Bubble Sort":
        sorted_list = bubble_sort(original_list[:])  # Se pasa una copia de la lista original
    elif method == "Selection Sort":
        sorted_list = selection_sort(original_list[:])
    elif method == "Insertion Sort":
        sorted_list = insertion_sort(original_list[:])
    elif method == "Quick Sort":
        sorted_list = quick_sort(original_list[:])
    elif method == "Merge Sort":
        sorted_list = merge_sort(original_list[:])
    elif method == "Heap Sort":
        sorted_list = heap_sort(original_list[:])
    elif method == "Radix Sort":
        sorted_list = radix_sort(original_list[:])
    elif method == "Counting Sort":
        sorted_list = counting_sort(original_list[:])

    end_time = time.time()
    elapsed_time = end_time - start_time

    result_label.config(text=f"Lista original: {original_list}\n"
                            f"Lista ordenada: {sorted_list}\n"
                            f"Tiempo de ejecución: {elapsed_time:.6f} segundos")

def back_to_method_selection():
    method_label.pack_forget()
    for rb in method_rbs:
        rb.pack_forget()
    apply_button.pack_forget()
    back_button.pack_forget()

    entry_label.pack()
    entry.pack()
    sort_button.pack()

    result_label.config(text="")

root = tk.Tk()
root.title("Ordenamiento de Números")
root.geometry("600x400")

entry_label = tk.Label(root, text="Ingrese la lista que desea ordenar, separe por comas. (hasta 40):", font=('Arial', 12))
entry_label.pack(pady=10)

entry = tk.Entry(root, width=40, font=('Arial', 12))
entry.pack(pady=10)

sort_button = tk.Button(root, text="Ingrese los números", font=('Arial', 12), command=sort_numbers)
sort_button.pack(pady=10)

method_label = tk.Label(root, text="Seleccione el método de ordenamiento:", font=('Arial', 12))

method_var = tk.StringVar(value="Bubble Sort")
methods = ["Bubble Sort", "Selection Sort", "Insertion Sort", "Quick Sort", 
           "Merge Sort", "Heap Sort", "Radix Sort", "Counting Sort"]

method_rbs = [tk.Radiobutton(root, text=method, variable=method_var, value=method, font=('Arial', 12)) for method in methods]

apply_button = tk.Button(root, text="Ordenar", font=('Arial', 12), command=apply_sort)

back_button = tk.Button(root, text="Volver", font=('Arial', 12), command=back_to_method_selection)

result_label = tk.Label(root, text="", font=('Arial', 12), justify=tk.LEFT)
result_label.pack(pady=20)

root.mainloop()
