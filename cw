import numpy as np

def pot(a,n):
    if n>0:
        Q = a
    elif n<0:
        Q = np.linalg.inv(a)
        a = np.linalg.inv(a)
        n = n * (-1)
    else:
        return np.eye(len(a))

    for i in range(n-1):
        Q=Q@a
    return Q

a = np.array([(1,1,2),(2,1,0),(4,1,2)])
b = np.array([(2,5,7),(2,8,0),(4,3,1)])

print(a+b) #dodawanie
print(a@b) #mnozenie
print(a.T) #transponowanie

inverse = np.linalg.inv(a)
print(inverse) #odwrocenie
print(a**5) #potega elemntow
determinant = np.linalg.det(a)
print(determinant)
print()
print(pot(a,5)) #potega macierzy
print(pot(b,(-2))) #potega macierzy
print(pot(b,(0))) #potega macierzy



