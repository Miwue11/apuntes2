--#INNER JOIN(devuelve la coincidencia entre ambas tablas)


--#LEFT JOIN (devuelve toda la tabla de la izquierda(employees))
    # SELECT FirstName,Reward,Month FROM Employees e

    # LEFT JOIN Rewards r on e.EmployeeID = r.EmployeeID

--#RIGHT JOIN(devuelve toda la tabla de la derecha(rewards) y los datos q pedimos de la izquierda)

    # SELECT FirstName,Reward,Month FROM Employees e

    # RIGHT JOIN Rewards r on e.EmployeeID = r.EmployeeID


--#FULL JOIN(devuelve absolutamente todo y rellena los huecos con null)

--#CROSS JOIN(devuelve todo "multiplicado")