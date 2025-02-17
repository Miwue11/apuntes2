SELECT * FROM Products
WHERE ProductID=14

--nos devuelve los datos de la tabla del productID numero 14



--nos devuelve todo el del productname que se llame "Tofu"
    SELECT * FROM Products
    WHERE ProductName="Tofu"

--se pueden usar las comparaciones:
    SELECT * FROM Products
    WHERE Price> 40

--borrar el ID que queramos
    DELETE FROM Products
    WHERE IDProducts =14

--actualizar un dato de una tabla 
    UPDATE turnos_medicos SET motivo = 'cabeza gigante', horario='4:30pm'
    WHERE IDturno=8;
    SELECT * FROM turnos_medicos
