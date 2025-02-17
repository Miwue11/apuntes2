--COMMIT:
--es el comando q se utiliza para confirmar los cambios realizados durante una transaccion. una vez ejecutado el COMMIT, los cambios se auedan guardados y no pueden ser revertidos

BEGIN TRANSACTION;

UPDATE Products SET ProductName="Macarrones" WHERE ProductName="Chais";
COMMIT;
--cambiamos el nombre del producto Chais por el de Macarrones

BEGIN TRANSACTION;
UPDATE empleados SET salario=salario*1.1 WHERE id=1
COMMIT;
--aumento de sueldo al empleado con ID 1


--ROLLBACK
--Si vemos q nos hemos equivocado con la transaccion, no le damos a commit, sino que le damos rollback para volver al estado anterior de la tabla
BEGIN TRANSACTION;
UPDATE empleados SET salario=salario*1.1 WHERE id=1
--nos equivocamos, ponemos:
ROLLBACK;

--Aqui el aumento salaria se deshace 
