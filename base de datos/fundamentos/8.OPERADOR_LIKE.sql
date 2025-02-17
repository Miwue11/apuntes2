--#es como las expresiones regulares pero (LIKE) es mucho mas simple 

--#permite realizar busquedas de texto parcial usando "comodines"
--#comodines en SQLite: son (%) y (_)
    
    --#**%r** devuelve todo lo q tenga una "r" al final de la palabra seleccionada
        #ej:
        #SELECT * FROM Employees 
        #WHERE LastName like "%r"
    
    --#**r%** devolveria todo lo q tenga una "r" al principio de la palabra
        #ej:
        #SELECT * FROM Employees 
        #WHERE LastName like "r%"
    
    --#**%r%** devolveria todo lo q tenga una "r"
    
    
    --#el caracter (_) hace cuenta de una letra faltante, en este codigo estamos buscando cualquier apellido con 6 letras en la base de datos
    
        #SELECT * FROM Employees 
        #WHERE LastName LIKE "______"
        
    --#si supiesemos mas datos tambien podria añadirse, ej:
        #SELECT * FROM Employees 
        #WHERE LastName LIKE "Fu__er"
        
    --#nos mandaria los q coincidiesen con el caso de arriba, osea: "Fuller"


--# tambien podemos mezclar ambos caracteres para hacer busquedas mas complejas, por ej:
#     SELECT * FROM Employees 
#     WHERE LastName LIKE "_u____%"
--#esto busca una palabra que tenga la "u" en el segundo hueco y sea al menos 6 palabras de larga pero podria ambpliarse a mas que cumplan la condicion inicial

    --#devolveria "Fuller", "Suyama" y "Buchanan"
    