# es un proceso que nos sirve para poder eliminar anomalias en los datos, hacer la BD mas eficiente y poder hacer consultas mas efectivas para tener un sistema mas escalable 


# Hay 5 niveles:
# (1NF): garantizar q cualquier atributo en una tabla contenga solo un valor (unico) atomico, osea q no sean conjuntos.
#             ID:1
#             NOMBRE:"MIGUEL"
#             APELLIDO:"LOPEZ"

# (2FN): establece q cualquier atributo q no sea una clave (key) depende siempre de la PRIMARY KEY
# (tratamos de evitar las dependencias parciales)

# (3FN): Cada atributo debe depender directamente de la clave primaria y no de otros q no lo sean (claves)
# (tratamos de evitar las dependencias transitivas)

# (4FN): intentamos evitar la redundancia de datos y las anomalias de actualizacion
# (cada tabla debe tener una PK compuesta q consta de multiples columnas en lugar de una sola)
# (tratamos de evitar las dependencias multievaluadas)

# (5FN): se asegura q no hayan dependencias de union entre los atributos. 
