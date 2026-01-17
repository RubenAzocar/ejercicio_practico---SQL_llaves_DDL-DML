INSERT INTO Clientes (id_cliente, nombre, edad) VALUES (1, 'Ana
García', 78);
INSERT INTO Clientes (id_cliente, nombre, edad) VALUES (2, 'Luis
Pérez', 25);
INSERT INTO Clientes (id_cliente, nombre, edad) VALUES (3, 'Maria
Soto', 40);
INSERT INTO Clientes (id_cliente, nombre, edad) VALUES (4, 'Carlos
Ruiz', 80); -- Cliente con más edad
INSERT INTO Clientes (id_cliente, nombre, edad) VALUES (5, 'Elena
Torres', 32);

INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (101, 1,
50000.00);
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (102, 1,
-1200.50); -- Saldo Negativo
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (103, 1,
100.00);

-- Cuentas para Cliente 2 (Luis): 2 cuentas
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (201, 2,
850.75);
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (202, 2,
-500.00);  -- Saldo Negativo

-- Cuentas para Cliente 3 (Maria): 4 cuentas
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (301, 3,
15000.00);
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (302, 3,
200.00);
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (303, 3,
-4999.99); -- Saldo Negativo
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (304, 3,
75000.00);

-- Cuentas para Cliente 4 (Carlos - Cliente con más edad): 3

INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (401, 4,
1000.00);
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (402, 4,
2000.00);
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (403, 4,
3000.00);

-- Cuentas para Cliente 5 (Elena): 3 cuentas
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (501, 5,
50.00);
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (502, 5,
120.00);
INSERT INTO Cuentas (id_cuenta, id_cliente, saldo) VALUES (503, 5,
900.00);

UPDATE Cuentas
SET saldo = saldo + 500.00
WHERE id_cuenta = 402;

DELETE FROM Cuentas
WHERE id_cuenta = 503;

-- CONSULTAS DEL EJERCICIO--
--1. Obtener el saldo de todas las cuentas del cliente de mayor edad (considerando que puede haber más de un cliente con la edad máxima):--
SELECT c.saldo
FROM Cuentas c
JOIN Clientes cl ON c.id_cliente = cl.id_cliente
WHERE cl.edad = (SELECT MAX(edad) FROM Clientes);

--2. Insertar un nuevo cliente y una cuenta asociada usando las secuencias:--
INSERT INTO Clientes (id_cliente, nombre, edad)
VALUES (nextval('seq_cliente_id'), 'Nuevo Cliente', 30);

INSERT INTO Cuentas (id_cuenta, id_cliente, saldo)
VALUES (nextval('seq_cuenta_id'), currval('seq_cliente_id'), 1000.00);

--3. Actualizar el saldo de una cuenta específica:--
UPDATE Cuentas
SET saldo = saldo + 500.00
WHERE id_cuenta = 402;

--4. Eliminar una cuenta específica:--
DELETE FROM Cuentas
WHERE id_cuenta = 503;

--
