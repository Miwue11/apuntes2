import sqlite3
import pandas as pd  
import matplotlib.pyplot as plt  

conn= sqlite3.connect("Northwind.db")

query= """
SELECT e.employeeID,Firstname || " " || Lastname as nombre,
ROUND(SUM(od.Quantity*p.Price),2)
as recaudacion
FROM Orders o 
INNER JOIN Employees e 
ON e.EmployeeID= o.EmployeeID
INNER JOIN Products p
ON p.ProductID= od.ProductID
INNER JOIN OrderDetails od 
ON od.OrderID=od.OrderID
GROUP BY e.FirstName,e.LastName
ORDER BY  recaudacion DESC
"""

top_products= pd.read_sql_query(query,conn)
print(top_products)

top_products.plot(x="nombre", y= "recaudacion", kind= "bar", figsize=(10,5),legend=False)


plt.title("empleados que mas han recaudado")
plt.xlabel("empleado")
plt.ylabel("recaudacion")
plt.xticks(rotation=90)
plt.show()
