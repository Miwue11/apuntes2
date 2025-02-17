--#SE EXPLICA BIEN EN:
--#https://www.youtube.com/watch?v=DFg1V-rO6Pg 
---MINUTO 4:05:00---

--#-consulta dentro de una consulta
--#solo puedes meter 16 subconsultas dentro de una consulta en SQLite

--#EJ:
    # SELECT 
    # ProductID,Quantity,
    # (SELECT ProductName FROM Products WHERE OrderDetails.ProductID = ProductID)
    # AS nombre
    # FROM OrderDetails
--#(SELECCIONAMOS EL PRODUCTID Y PA QUALITY DE ORDERDETAILS AÑADIENDO LA SUBCONSULTA DE PRODUCTNAME UNIENDO LOS VALORES DE PRODUCTID TANTO DE ORDERDETAIS COMO DE PRODUCTS)



--#EJ:
    # SELECT 
    # ProductID,ProductName,Price,
    # (SELECT Quantity FROM OrderDetails WHERE Products.ProductID = ProductID)
    # AS CANTIDAD
    # FROM Products
    # WHERE ProductName is not null

--#AÑADIMOS EL PARAMETRO (CANTIDAD) CON UNA SUBCONSULTA A LA ORDEN DE LA TABLA DE PRODUCTOS 



--#EJ MAS COMPLEJO:
--#marcamos el productID y la suma total de las cantidades como total_vendido y añadimos el precio desde la tabla de products a la tabal inicial de orderdetails, hacemos una multiplicacion entre la suma de cantidades y el precio importado para tener el dinero total por cada producto.

    # SELECT ProductID, SUM(Quantity) AS total_vendido,
    # (SELECT Price FROM Products WHERE ProductID= OD.ProductID) AS PRECIO,
    # SUM(Quantity)* 
    # (SELECT Price FROM Products WHERE ProductID= OD.ProductID)AS dinero_total
    # FROM OrderDetails AS OD
    # GROUP by ProductID
    # ORDER by dinero_total DESC



--#EJ:
#     SELECT ProductID, SUM(Quantity) AS total_vendido,
# (SELECT Price FROM Products WHERE ProductID= OD.ProductID) AS PRECIO,
# sum(Quantity) * 
# (SELECT Price FROM Products WHERE ProductID= OD.ProductID)AS dinero_total,
# (SELECT ProductName FROM Products WHERE ProductID= OD.ProductID) as nombre
# FROM OrderDetails AS OD
# WHERE 
# (SELECT Price FROM Products WHERE ProductID= OD.ProductID) > 40
# GROUP by ProductID
# ORDER by 
# (SELECT Price FROM Products WHERE ProductID= OD.ProductID) ASC




--#usamos lo mismo de antes pero lo extraemos de mejor manera:

    # SELECT * FROM (SELECT ProductID, SUM(Quantity) AS total_vendido,
    # (SELECT Price FROM Products WHERE ProductID= OD.ProductID) AS PRECIO,
    # round(sum(Quantity)) * 
    # (SELECT Price FROM Products WHERE ProductID= OD.ProductID)AS dinero_total,
    # (SELECT ProductName FROM Products WHERE ProductID= OD.ProductID) as nombre
    # FROM OrderDetails AS OD
    # WHERE 
    # (SELECT Price FROM Products WHERE ProductID= OD.ProductID) > 40
    # GROUP by ProductID
    # ORDER by 
    # dinero_total DESC)
    # WHERE total_vendido >100