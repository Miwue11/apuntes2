--# En SQL, NOT y != tienen funciones diferentes y se utilizan en distintos contextos:

--# NOT
--#  •    Es un operador lógico que se utiliza para negar una condición.
--#  •    Se usa generalmente con otras expresiones o condiciones.
--#  •    Ejemplo:

# SELECT 
# * 
# FROM 
# empleados 
# WHERE NOT (edad > 30);

--# Significado: Selecciona todos los empleados cuya edad no sea mayor a 30.

--# !=
--#  •    Es un operador de comparación que significa “diferente de”.
--#  •    Se utiliza para comparar valores y determinar si son diferentes.
--#  •    Ejemplo:

# SELECT * 
# FROM empleados 
# WHERE salario != 5000;

--# Significado: Selecciona todos los empleados cuyo salario sea diferente de 5000.

--# Diferencias clave:

--# Aspecto    NOT    !=
--# Tipo    Operador lógico    Operador de comparación
--# Propósito    Niega una condición o expresión    Compara dos valores
# Ejemplo    NOT (edad > 30)    edad != 30

--# En muchos casos, NOT y != pueden trabajar juntos para expresar condiciones más complejas, como:

# SELECT * 
# FROM empleados 
# WHERE NOT (salario != 5000);

--# Significado: Selecciona todos los empleados cuyo salario sea igual a 5000 (la negación de “diferente a 5000”).