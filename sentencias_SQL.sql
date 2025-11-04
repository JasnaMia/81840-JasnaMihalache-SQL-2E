/*
creacion de una bd para la venta de vinos

*/
CREATE DATABASE VENTA_VINO;

USE VENTA_VINO;

CREATE TABLE CLIENTE (
	id_cliente INT AUTO_INCREMENT NOT NULL,
	nombre VARCHAR(80) NOT NULL,
	tipo_documento VARCHAR(80) NOT NULL,
	numero_documento VARCHAR(20) NOT NULL,
	direccion VARCHAR(180),
	tlf_celular VARCHAR(20),
	mail VARCHAR(80)  NOT NULL,
	PRIMARY KEY (id_cliente)
);

CREATE TABLE PRODUCTO (
	id_producto INT AUTO_INCREMENT NOT NULL,
	nombre VARCHAR(80)  NOT NULL,
	tipo  VARCHAR(20)  NOT NULL,
	anio INT,
	descripcion VARCHAR(100)  NOT NULL,
	PRIMARY KEY (id_producto)
);

CREATE TABLE STOCK (
	id_stock INT AUTO_INCREMENT NOT NULL,
	id_producto INT NOT NULL,
	cantidad INT NOT NULL,
	precio DECIMAL(10,2),
	PRIMARY KEY (id_stock),
	FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);

CREATE TABLE FACTURA (
	numero_factura INT AUTO_INCREMENT NOT NULL,
	id_cliente INT NOT NULL,
	fecha DATE,
	PRIMARY KEY (numero_factura), 
	FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE DETALLE_FACTURA (
	id_detalle_factura INT AUTO_INCREMENT NOT NULL,
	numero_factura INT NOT NULL,
	id_stock INT NOT NULL,
	id_producto INT NOT NULL,
	cantidad INT NOT NULL,
	precio DECIMAL(10,2) NOT NULL,
	sub_total DECIMAL(10,2) NULL,
	PRIMARY KEY (id_detalle_factura, numero_factura),
	FOREIGN KEY (id_stock) REFERENCES STOCK(id_stock),
	FOREIGN KEY (id_producto) REFERENCES PRODUCTO(id_producto)
);