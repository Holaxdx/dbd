-- inciso 1

SELECT nombre, apellido, DNI, telefono, direccion
FROM Cliente 
WHERE apellido LIKE 'Pe%'
ORDER BY DNI ASC SELECT idCliente
FROM Cliente

-- inciso 2

SELECT nombre, apellido, DNI, telefono, direccion
FROM Cliente c INNER JOIN Factura f ON (c.idCliente = f.idCliente)
WHERE year(f.fecha) = 2024

select P.nombreP, P.descripcion, P.precio, stock 
-- inciso 3

FROM Producto P 
WHERE idProducto IN ( 

SELECT  d.idProducto 
FROM Factura f
  INNER JOIN Cliente c ON (f.idCliente = c.idCliente) 
  inner join Detalle  d on d.nroTicket =f .nroTicket
WHERE c.DNI = 45789456 and idProducto not in(
 
SELECT  d.idProducto 
FROM Factura f
  INNER JOIN Cliente c ON (f.idCliente = c.idCliente) 
  inner join Detalle  d on d.nroTicket =f .nroTicket
WHERE c.apellido = 'Garcia' )

)

-- inciso 4

SELECT idProducto, nombreP, descripcion, descripcion, stock
FROM Producto p
WHERE p.idProducto not in (
    SELECT p.idProducto
    FROM Producto p INNER JOIN Detalle d on p.idProducto = d.idProducto
      INNER JOIN Factura f ON d.nroTicket = f.nroTicket
      INNER JOIN Cliente c ON f.idCliente = c.idCliente
    WHERE c.telefono LIKE '221%' 
)
ORDER BY p.nombreP
