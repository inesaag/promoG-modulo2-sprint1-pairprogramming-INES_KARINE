 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
 
CREATE TABLE Empleados (
id_empleado INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR(45) NOT NULL, 
salario INT NULL, 
fecha_incorporacion DATE NOT NULL, 
	PRIMARY KEY (id_empleado))
;
 
CREATE TABLE Zapatillas (
id_zapatilla INT AUTO_INCREMENT NOT NULL,
modelo VARCHAR(45) NOT NULL, 
color VARCHAR(45) NOT NULL, 
	PRIMARY KEY (id_zapatilla))
;

CREATE TABLE Clientes (
id_cliente INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL, 
ciudad VARCHAR(45) NULL, 
provincia VARCHAR(45) NOT NULL, 
pais VARCHAR(45) NOT NULL,
codigo_posta VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_cliente))
;

CREATE TABLE Facturas (
id_facturas INT NOT NULL AUTO_INCREMENT,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL, 
id_zapatilla INT NOT NULL, 
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
PRIMARY KEY (id_facturas),
	CONSTRAINT fk_empleado_cliente_zapatilla
		FOREIGN KEY (id_zapatilla) REFERENCES Zapatillas (id_zapatilla),
		FOREIGN KEY (id_empleado) 
		REFERENCES Empleados (id_empleado),
		FOREIGN KEY (id_cliente) 
		REFERENCES Clientes (id_cliente) 
);

