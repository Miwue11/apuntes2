    
    
--#agrupamos a los proveedores de los productos por precio en orden ascendente    
    
    # SELECT SupplierID,ROUND(AVG (Price),2) AS promedio FROM Products
    # WHERE 
    # SupplierID
    # IS NOT NULL
    # GROUP BY
    # SupplierID
    # ORDER BY
    # promedio 
    # ASC
    
    
--#selecciona los productos que se encuentren por encima de 40€ en el promedio    
    # SELECT SupplierID,ROUND(AVG (Price),2) AS promedio FROM Products
    #WHERE ProductName is not NULL
    # GROUP BY SupplierID
    # HAVING promedio >40
