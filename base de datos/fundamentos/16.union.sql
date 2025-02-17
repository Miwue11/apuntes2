SELECT FirstName,Reward,Month FROM Employees e

LEFT JOIN Rewards r on e.EmployeeID = r.EmployeeID

UNION

SELECT FirstName,Reward,Month FROM Rewards e

LEFT JOIN Employees r on e.EmployeeID = r.EmployeeID
ORDER by
FirstName


--donde encontramos el UNION tambien puede ser UNION ALL, la diferencia es q union all devuelve tambien parametros repetirdos y union no
