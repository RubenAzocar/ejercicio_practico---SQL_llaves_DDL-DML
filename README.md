# Ejercicio Práctico: SQL Llaves, DDL y DML

## Descripción
Este ejercicio práctico está diseñado para reforzar el uso de sentencias DDL (Data Definition Language) y DML (Data Manipulation Language) en SQL, así como la correcta utilización de llaves primarias, foráneas y secuencias en una base de datos relacional (PostgreSQL).

## Estructura de la Base de Datos

- **Clientes**: Tabla que almacena información de los clientes.
  - `id_cliente` (PRIMARY KEY)
  - `nombre` (VARCHAR)
  - `edad` (INT, con restricción de rango)

- **Cuentas**: Tabla que almacena las cuentas bancarias asociadas a los clientes.
  - `id_cuenta` (PRIMARY KEY)
  - `id_cliente` (FOREIGN KEY a Clientes)
  - `saldo` (NUMERIC, con restricción de rango)

- **Secuencias**:
  - `seq_cliente_id`: Genera identificadores únicos para clientes.
  - `seq_cuenta_id`: Genera identificadores únicos para cuentas.

## Archivos
- `Setup.sql`: Contiene las sentencias para crear las tablas y secuencias necesarias.
- `SQL_Llaves_DDL_DML.sql`: Contiene las sentencias DML para insertar, actualizar, eliminar y consultar datos.

## Notas
- Asegúrate de ejecutar primero el archivo `Setup.sql` para crear la estructura de la base de datos antes de ejecutar las sentencias DML.
- Las restricciones y llaves aseguran la integridad referencial y la validez de los datos.
- Las secuencias permiten la generación automática de identificadores únicos.

## Autor
Ejercicio realizado para el curso Fullstack Talento Digital.
# ejercicio_practico---SQL_llaves_DDL-DML
