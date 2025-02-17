#rentabilidad
import sqlite3
import pandas as pd  
import matplotlib.pyplot as plt  

conn= sqlite3.connect("Northwind.db")

#mostrando los 10 productos mas rentables
query= """
SELECT ProductName as nombre, SUM(Price * Quantity) as Rentabilidad FROM OrderDetails od 
JOIN Products P on p.ProductID= od.ProductID
GROUP BY od.ProductID
ORDER BY Rentabilidad DESC
LIMIT 10
"""

top_products= pd.read_sql_query(query,conn)

top_products.plot(x="nombre", y= "Rentabilidad", kind= "bar", figsize=(10,5),legend=False)


plt.title("10 productos mas rentables")
plt.xlabel("Productos")
plt.ylabel("Rentabilidad")
plt.xticks(rotation=90)
plt.show()



#mostrando el top 3 empleados menos efectivos

query2="""
SELECT Firstname || " " || Lastname as nombre, COUNT(*) as total
FROM Orders o 
JOIN Employees e 
ON e.EmployeeID= o.EmployeeID
GROUP BY o.EmployeeID 
ORDER BY total ASC
LIMIT 3
"""

top_employees= pd.read_sql_query(query2,conn)

#creamos el grafico
top_employees.plot(x="nombre",y="total",kind="bar",figsize=(10,5),legend=False)

plt.title("Top 5 mejores empleados")
plt.xlabel("empleado")
plt.ylabel("total")
plt.xticks(rotation=90)
plt.show()