


--# realizar una organizacion mas efectiva para que cuando hagamos consultas sea mas optimo y rapido.


--# *INDICES UNICOS 
CREATE UNIQUE INDEX nombre_apellido ON Employees (FirstName,LastName)


--# *INDICES NO-UNICOS 
CREATE INDEX nombre ON products (ProductName)



--ej:

CREATE INDEX idx_orderdetails_quantity on OrderDetails (Quantity);
CREATE index idx_orderdate_date on Orders (OrderDate)

--una vez creados los indices para la eficiencia, hacemos el ejercicio 
SELECT * FROM OrderDetails od
INNER JOIN orders o
WHERE o.OrderID=od.OrderID
AND 
OrderDate> "1996-07-04"
AND 
od.Quantity> 10


-- con los indices hacemos las consultas mucho mas eficientes (de240ms a 5ms)
