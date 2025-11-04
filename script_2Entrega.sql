use venta_vino;

insert into CLIENTE (nombre, tipo_documento, numero_documento, direccion, tlf_celular, mail) values 
('Beau Marlowe', 'DNI', '091071491', 'Genderqueer', '091400020', 'bmarlowe1@yellowpages.com'),
('Alejoa Burhill', 'DNI', '063104972', 'Centro este', '065502608', 'aburhill2@cisco.com'),
('Faustine Corrado', 'LC', '103110046', 'Sur', '303072793', 'fcorrado3@businessweek.com'),
('Aguie Clark', 'LC', '021202337', 'Zona Norte', '053107633', 'aclark4@surveymonkey.com'),
('Stephanus Cogar', 'LC', '211170088', 'Ezeiza', '061106655', 'scogar5@state.tx.us'),
('Alric Gunthorp', 'DNI', '101100540', 'Canuelas', '031317380', 'agunthorp6@flickr.com'),
('Chadwick Grisley', 'LC', '011402008', 'Padua', '114917623', 'cgrisley7@amazon.com'),
('Reagan Gundry', 'LC', '051405324', 'San Pedro', '073909578', 'rgundry8@vkontakte.ru'),
('Alic Youle', 'LC', '081200586', 'San Justo', '103103354', 'ayoule9@thetimes.co.uk'),
('Timothy Holyland', 'LC', '021272626', 'Moreno', '054001712', 'tholylanda@woothemes.com'),
('Jami Harflete', 'DNI', '111101377', 'San Fernando', '043308620', 'jharfleteb@google.ca'),
('Ardyce Lovelace', 'DNI', '086518765', 'Tigre', '084201621', 'alovelacec@rediff.com'),
('Sascha Blunt', 'DNI', '122000247', 'San Telmo', '065301155', 'sbluntd@rambler.ru'),
('Daryl Dutnall', 'DNI', '081005794', 'Flores', '263190812', 'ddutnalle@dailymotion.com'),
('Farlee Emberson', 'LC', '321181271', 'Ituzango', '113014077', 'fembersonf@newsvine.com'),
('Janaye Mooreed', 'DNI', '061205475', 'San Pedro', '122105728', 'jmooreedg@wsj.com'),
('Steffen Ring', 'DNI', '073900739', 'San Telmo', '064101589', 'sringh@paypal.com'),
('Dennet Ewen', 'LC', '263184996', 'Padua', '074001048', 'deweni@e-recht24.de'),
('Emanuele Abramov', 'LC', '091212179', 'Ezeiza', '071924898', 'eabramovj@booking.com'),
('Willdon Rillett', 'DNI', '084202442', 'Canuelas', '082901596', 'wrillettk@dyndns.org');


insert into PRODUCTO (nombre, tipo, anio, descripcion) values
('Homemade Salsa', 'Food - Condiments', 1990, 'Fresh salsa made with tomatoes, onions, and cilantro.'),
('Wireless Induction Charger', 'Electronics', 1996, 'Qi-certified charger for fast wireless charging of smartphones.'),
('Dried Mango Slices', 'Food - Snacks', 1994, 'Sweet and chewy dried mango slices, perfect for snacking.'),
('Travel Pillow with Memory Foam', 'Travel', 1997, 'Ergonomically designed neck pillow for comfortable travel.'),
('Herbal Tea Sampler Box', 'Food', 2002, 'Assorted collection of herbal teas for relaxation and wellness.'),
('Window Bird Feeder', 'Outdoor', 1998, 'Suction cup bird feeder for close-up bird watching.'),
('Cat Tree with Scratching Posts', 'Pets', 1996, 'Multi-level cat tree for play and scratching.'),
('Electric Griddle', 'Kitchen', 2012, 'Large electric griddle for family meals.'),
('Portable Hammock with Stand', 'Outdoor', 1990, 'Lightweight hammock with a sturdy stand for relaxation anywhere.'),
('Collapsible Water Bottle', 'Fitness', 2002, 'Space-saving collapsible bottle for outdoor activities.'),
('Pineapple Coconut Bars', 'Food - Snacks', 2011, 'Refreshing dessert bars made with pineapple and coconut.'),
('Savory Oatmeal', 'Food - Breakfast', 1995, 'Oatmeal made with savory spices and vegetables.'),
('Peas (frozen)', 'Food - Frozen Foods', 2002, 'Frozen green peas, a great addition to meals.'),
('Savory Mushroom Risotto', 'Food - Gourmet Rice', 1990, 'Creamy risotto infused with wild mushrooms.'),
('Magnetic Phone Case', 'Accessories', 1996, 'Stylish case with magnetic closure for smartphones.'),
('Tea Infuser', 'Kitchen', 2009, 'Silicone tea infuser for brewing loose leaf tea.'),
('Face Mask Set', 'Health', 2012, 'Set of five reusable fabric face masks.'),
('Mini Projector', 'Electronics', 1999, 'Portable projector with 1080p resolution for movies.'),
('Peach Green Tea', 'Food - Beverages', 2006, 'Refreshing green tea infused with peach, perfect for a hot day.'),
('Ankle Boots', 'Clothing - Footwear', 1988, 'Stylish leather ankle boots with a block heel, perfect for fall styling.');


ALTER TABLE STOCK ADD dscto DECIMAL(5,2 ) NULL;

/*
delete  FROM venta_vino.detalle_factura where id_detalle_factura between 1 and 20;
ALTER TABLE venta_vino.detalle_factura AUTO_INCREMENT = 1
*/

insert into STOCK (id_producto, cantidad, precio, dscto) values
(1, 200, 5500, NULL),
(2, 120, 35500, 3),
(3, 70, 1500, NULL),
(4, 130, 9500, 5),
(5, 220, 3500, 10),
(6, 30, 18500, 6),
(7, 50, 17500, 15),
(8, 98, 19610, NULL),
(9, 26, 13600, NULL),
(10, 27, 16500, 5),
(11, 34, 56100, 2),
(12, 64, 96100, NULL),
(13, 61, 45120, NULL),
(15, 46, 5600, 8),
(16, 96, 17100, 12),
(17, 75, 13600, 16),
(18, 36, 29600, NULL),
(19, 76, 36100, 5),
(19, 85, 15600, 3.2),
(20, 21, 13600, NULL);



insert into FACTURA (id_cliente, fecha) values
(1, '2025-09-25'), 
(2, '2025-09-30'),
(3, '2025-10-02'),
(4, '2025-10-07'),
(5, '2025-10-10'),
(6, '2025-10-13'),
(7, '2025-10-15'),
(8, '2025-10-20'),
(9, '2025-11-01'),
(10, '2025-11-03');


insert into DETALLE_FACTURA (numero_factura, id_stock, id_producto, cantidad, precio) values
(1, 2, 2, 5, 35500),
(1, 5, 5, 4, 3500),
(1, 6, 6, 6, 18500),
(1, 7, 7, 8, 17500),
(1, 3, 3, 4, 1500),
(2, 10, 10, 3, 16500),
(2, 11, 11, 3, 56100),
(2, 12, 12, 3, 96100),
(3, 8, 8, 3, 19610),
(4, 1, 1, 3, 5500),
(4, 16, 16, 3, 17100),
(5, 15, 15, 3, 5600),
(6, 5, 5, 3, 3500),
(7, 7, 7, 3, 17500),
(8, 13, 13, 3, 45120),
(9, 4, 4, 3, 9500),
(10, 9, 9, 3, 13600),
(10, 5, 5, 3, 3500),
(10, 6, 6, 3, 18500),
(10, 4, 4, 3, 9500);



UPDATE	DETALLE_FACTURA
SET		sub_total = (cantidad * precio)
WHERE	id_detalle_factura between 1 and 20;

 

DELIMITER //
CREATE VIEW v_Stock_Producto
AS
	SELECT	
		S.id_stock,
		S.id_producto,
        P.nombre,
        P.tipo,
        P.anio,
        P.descripcion,
		S.cantidad,
		S.precio
	FROM	STOCK S
		INNER JOIN PRODUCTO P
			ON S.id_producto = P.id_producto;
END //
DELIMITER ; 

SELECT * FROM v_Stock_Producto WHERE id_producto =1;




DELIMITER //
CREATE VIEW v_Cliente_Compraron
AS
	SELECT	
		F.id_cliente,
		F.numero_factura,
        C.nombre,
        C.numero_documento,
        C.mail
	FROM	FACTURA F
		INNER JOIN CLIENTE C
			ON F.id_cliente = C.id_cliente;
END  //
DELIMITER ;

SELECT * FROM v_Cliente_Compraron WHERE	id_cliente =1;




DELIMITER //
CREATE VIEW v_Producto_Vendidos
AS
	SELECT	
		DF.id_producto,
        P.nombre,
        F.fecha,
		F.id_cliente
	FROM	FACTURA F
		INNER JOIN DETALLE_FACTURA DF
			ON F.numero_factura = DF.numero_factura
		INNER JOIN PRODUCTO P
			ON DF.id_producto = P.id_producto;
END  //
DELIMITER ;

SELECT id_producto, nombre as Producto, COUNT(1) as cantidad FROM v_Producto_Vendidos GROUP BY id_producto, nombre ORDER BY 3 DESC;




DELIMITER //
CREATE FUNCTION f_Producto_Descuento (p_ID_PRODUCTO INT)
	RETURNS INT
    DETERMINISTIC
BEGIN
	DECLARE v_dscto INT;
    
	SELECT	S.dscto
	INTO	v_dscto
	FROM	STOCK S
		INNER JOIN PRODUCTO P
			ON DF.id_producto = P.id_producto
	WHERE	S.id_producto = p_ID_PRODUCTO;
    
    RETURN v_dscto;
END  //
DELIMITER ;




DELIMITER //
CREATE FUNCTION f_Nombre_Producto (p_ID_PRODUCTO INT)
	RETURNS VARCHAR(80)
    DETERMINISTIC
BEGIN
	DECLARE v_nombre VARCHAR(80);
    
	SELECT	P.nombre
	INTO	v_nombre
	FROM	PRODUCTO P
	WHERE	P.id_producto = p_ID_PRODUCTO;
    
    RETURN v_nombre;
END  //
DELIMITER ;

/* SELECT f_Nombre_Producto (1)   */




DELIMITER //
CREATE FUNCTION f_Stock_Producto (p_ID_PRODUCTO INT)
	RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE v_cantidad INT;
    
	SELECT	S.cantidad
	INTO	v_cantidad
	FROM	STOCK S
	WHERE	S.id_producto = p_ID_PRODUCTO;
    
    RETURN v_cantidad;
END  //
DELIMITER ;

-- SELECT f_Stock_Producto (1)




DELIMITER //
CREATE PROCEDURE p_Factura_Por_Cliente (IN P_id_cliente INT)
BEGIN
	SELECT	
		F.numero_factura,
		F.fecha,
        DF.id_producto,
		F_NOMBRE_PRODUCTO(DF.id_producto) as nombre,
		P.descripcion,
		DF.cantidad,
		DF.precio,
		DF.sub_total
	FROM	FACTURA F
		INNER JOIN DETALLE_FACTURA DF
			ON F.numero_factura = DF.numero_factura
		INNER JOIN PRODUCTO P
			ON DF.id_producto = P.id_producto
	WHERE	F.id_cliente = P_id_cliente;
END //
DELIMITER ;

--	CALL p_Factura_Por_Cliente(1);




DELIMITER //
CREATE PROCEDURE p_Cliente (IN P_id_cliente INT)
BEGIN
	SELECT	
		id_cliente,
		nombre,
		tipo_documento,
		numero_documento,
		direccion,
		tlf_celular,
		mail
	FROM	CLIENTE C
	WHERE	C.id_cliente = P_id_cliente;
END //
DELIMITER ;

--	CALL p_Cliente(1);




DELIMITER //
CREATE PROCEDURE p_Inserta_Factura (
    IN p_id_cliente INT,
    IN p_fecha DATE,
    IN p_id_stock INT,
    IN p_id_producto INT,
    IN p_cantidad INT,
    IN p_precio DECIMAL(10,2)
)
BEGIN
	DECLARE numero_factura INT;
    
	INSERT INTO FACTURA (id_cliente, fecha) 
	VALUES (p_id_cliente, p_fecha);
    
    SET numero_factura = LAST_INSERT_ID();
    
	INSERT INTO DETALLE_FACTURA (numero_factura, id_stock, id_producto, cantidad, precio) 
    VALUES (numero_factura, p_id_stock, p_id_producto, p_cantidad, p_precio));

END //
DELIMITER ;




DELIMITER //
CREATE TRIGGER tr_Actualizar_Stock
BEFORE INSERT ON DETALLE_FACTURA
FOR EACH ROW
BEGIN
    UPDATE STOCK SET cantidad = cantidad - NEW.Cantidad
    WHERE id_producto = NEW.id_producto;
END //
DELIMITER ;






DELIMITER //
CREATE TRIGGER tr_Actualizar_Subtotal
AFTER INSERT ON DETALLE_FACTURA
FOR EACH ROW
BEGIN
    UPDATE DETALLE_FACTURA SET sub_total = NEW.precio - NEW.Cantidad
    WHERE id_producto = NEW.id_producto;
END //
DELIMITER ;

--	CALL p_Inserta_Factura(5, '2025-11-03', 5, 5, 10, 3500);
