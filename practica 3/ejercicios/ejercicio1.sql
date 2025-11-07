-- ejercicios de AR intentados resolver con SQL

-- ej1 inciso 8
SELECT nombre, APELLIDO, dni, telefono, direccion
FROM Cliente c INNER JOIN (
  SELECT idCliente 
  FROM Factura f INNER JOIN Detalle d on f.nroTicket=d.nroTicket 
  INNER JOIN Producto p ON d.idProducto=p.idProducto
  WHERE p.nombre='ProductoX'
  esce
) 

 