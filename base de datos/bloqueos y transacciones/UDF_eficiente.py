import sqlite3
import pandas as pd  

#hacemos la funcion para aplicarla al SQL
square= lambda n : n*n 

#conectamos
with sqlite3.connect("Northwind.db") as conn:
    conn.create_function("square",1,square)
    cursor=conn.cursor()
    
    #mandamos los comandos 
    cursor.execute(
    '''SELECT *,round(square(Price),2) FROM Products WHERE Price > 0'''
    )
    #hacemos q se envie
    results=cursor.fetchall()
    results_df= pd.DataFrame(results)

print(results_df)
    
    