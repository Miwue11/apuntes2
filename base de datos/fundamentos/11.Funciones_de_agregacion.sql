
---# -count-(cuenta)


#SELECT count (lastName)
# as 
# cantidad_de_empleados 
# FROM 
# Employees


#--sum--(suma)

#SELECT 
# sum (Price) 
# FROM 
# Products

--#-AVG- (promedio)

#SELECT 
# AVG (Price)
# FROM 
# Products

--#-ROUND- (redondear el promedio)
# 2=2 decimales

#SELECT 
# ROUND(AVG (Price),2)
# FROM 
# Products

--#-MIN- (parametro minimo)

# SELECT 
# ProductName, min(Price) 
# as minimo 
# FROM Products
# WHERE 
# ProductName 
# IS NOT NULL

--#-MAX- (parametro maximo)

# SELECT 
# ProductName, MAX(Price) 
# as maximo 
# FROM Products

