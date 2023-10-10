def ordena(lista):
    n = len(lista)

    for i in range(n - 1, 0, -1):
        for j in range(i):
            if lista[j] > lista[j+1]:
                (lista[j], lista[j+1]) = (lista[j+1], lista[j])
    return lista

