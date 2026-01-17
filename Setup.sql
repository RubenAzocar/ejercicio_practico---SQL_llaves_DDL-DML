CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT CHECK (edad BETWEEN 18 AND 85) NOT NULL
);

CREATE TABLE Cuentas (
    id_cuenta INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    saldo NUMERIC(10, 2) CHECK (saldo BETWEEN -5000.00 AND
100000.00) NOT NULL,
    CONSTRAINT fk_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES Clientes(id_cliente)
        ON DELETE CASCADE -- Si se borra un cliente, sus cuentas se borran (Integridad Referencial)
        ON UPDATE CASCADE -- Si se actualiza el id_cliente, se actualiza en Cuentas
);

CREATE SEQUENCE seq_cliente_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_cuenta_id START WITH 1 INCREMENT BY 1;
