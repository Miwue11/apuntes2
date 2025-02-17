

--#Seleccionamos a un ganador entre el 1 y el 100 de los customers de la base de datos de manera random

    # SELECT CustomerName FROM Customers
    # WHERE CustomerID>=1 and CustomerID<=100 ORDER BY random()
    

--# Seleccionamos de las ordenes las que el empleado con el id (1) haya hecho al comercio con ID (80)
    
    #SELECT * FROM Orders
    #WHERE EmployeeID=1 and CustomerID=80
    


--#seleccionamos los productos en los q el precio sea menor q 20€ o categorID 6 y ademas que sean del proveedor 7 

--# (***estando entre parentesis acotamos y la que se cumple si o si es la del fuera del parentesis***)
    # SELECT * FROM Products
    # WHERE (Price<20 or CategoryID=6) and SupplierID=7
    

--#envisamos un correo a toda la gente que no sea de USA ni de Francia con el comando (NOT)
    # SELECT * FROM Customers
    # WHERE NOT Country='USA' AND NOT Country='France'



--#Limitando el ganador del sorteo en uno solo con (LIMIT)

    # SELECT * FROM Customers ORDER BY RANDOM()
    # LIMIT 1
    
    
--seleccionamos un producto donde la categoria no sea 6 y no este distribuido por el distribuidor 1 ademas q sea menor de 30€ y que este limitado a 3 randoms
     SELECT * FROM Products
    WHERE NOT
    CategoryID=6
    AND NOT
    SupplierID=1
    AND 
    Price<=30
    ORDER by random()
    LIMIT 3
