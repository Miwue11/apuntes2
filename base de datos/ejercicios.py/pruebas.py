import sqlite3
import pandas as pd  
import matplotlib.pyplot as plt  

conn= sqlite3.connect("Northwind.db")

query= """
SELECT round(Salary) from Employees
"""

top_products= pd.read_sql_query(query,conn)
print(top_products)

# top_products.plot(x="nombre", y= "recaudacion", kind= "bar", figsize=(10,5),legend=False)


# plt.title("empleados que mas han recaudado")
# plt.xlabel("empleado")
# plt.ylabel("recaudacion")
# plt.xticks(rotation=90)
# plt.show()
