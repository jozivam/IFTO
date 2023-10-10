def ordena(lista):
    n = len(lista)

    for i in range(n - 1, 0, -1):
        for j in range(i):
            if lista[j] > lista[j+1]:
                (lista[j], lista[j+1]) = (lista[j+1], lista[j])
    return lista

class indiceM:
    def indiceMenor(lista, inicio):
        minimo = inicio

        n = len(lista)
        for i in range(inicio + 1, n):
            if lista[minimo] > lista[i]:
                minimo = i
        return minimo