#AS sirve para cambiar nombres de las columbas o para hacer tipo de calculos

#ej: ( SELECT Price, Price*2 AS precio_doble FROM Products)

#print: prices(tabla hacia abajo) y el price*2 con el nombre de precio_doble con los precios multiplicados por dos



#ORDER sirve para ordenar, ej:

#SELECT * FROM Products
#ORDER by price ASC/DESC  (ASCes mejor para el rendimiento) (DESC, descendiente, osea de mas caro a mas barato)

#ordena los precios del mas barato al mas caro

#ordena los STRINGS por orden ASC:
#NULL
#NUMEROS
#CARACTERES ESPECIALES
#LETRAS
#y al reves en orden DESC.


#SELECT DISTINCT ProductName FROM Products: elimina los repetidos de los productnames.

#SELECT DISTINCT ProductName FROM Products ORDER BY RANDOM(): selecciona los productname sin repetir y los ordena aleatoriamente

#Sorteando entre los primeros 30 clientes de la base de datos
    # SELECT * FROM Customers 
    # WHERE CustomerID <=30
    # ORDER BY RANDOM()
    # LIMIT 1

