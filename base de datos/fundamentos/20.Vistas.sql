--Las vistas son tablas virtuales, se crean sobre una consulta SELECT que se ejecuta sobre una o varias tablas


--no necesariamente almacenan datos sino son mas bien una referencia a una consulta

--si una consulta es muy grande, le asignamos una vista q devuelve una tabla simplificada sobre la que trabajar

--restringe datos a usuarios si se desea


CREATE VIEW productos_simplificados as 

SELECT p.ProductID,p.ProductName,od.Quantity,p.Price FROM products p
INNER JOIN OrderDetails od
WHERE od.ProductID=p.ProductID 
AND Quantity > 40
AND Price>30
order by p.ProductID ASC