/* Integrantes: Ruben Riquelme, Nayareth sepulveda, Frasiel Campy Scherezade Huancapaza. */
CREATE DATABASE telovendo1;
USE telovendo1;
-- Creación de Usuario
CREATE USER "telovendo1" IDENTIFIED BY 'admin';
-- Privilegios de Usuario
GRANT ALL PRIVILEGES ON telovendo TO 'telovendo1';
-- revisión de privilegios
SHOW GRANTS FOR 'telovendo1';

-- tabla cliente
CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(45), 
    lastName1 VARCHAR(45), 
    lastName2 VARCHAR(45),
    phone VARCHAR(45), 
    address VARCHAR(255), 
    commune VARCHAR(45), 
    mail VARCHAR(45) UNIQUE,
    date DATE
);
-- tabla vendedor
CREATE TABLE vendedor (
    run INT PRIMARY KEY,
    name VARCHAR(45), 
    nameLast1 VARCHAR(45), 
    nameLast2 VARCHAR(45),
    dateBorn DATE,
    category VARCHAR(45)
);

CREATE TABLE Proveedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_representante VARCHAR(100),
    nombre_corporativo VARCHAR(100),
    telefono1 VARCHAR(20),
	telefono2 VARCHAR(20),
    categoria_producto VARCHAR(50),
    correo_factura VARCHAR(100)
);
 
 -- agregue 2 campos de información, nombres de los contactos que reciben las llamadas
 ALTER TABLE Proveedores ADD nombre_contacto_telefono1 VARCHAR (55), ADD nombre_contacto_telefono2 VARCHAR (55);
 
 CREATE TABLE producto (
    idproducto INT PRIMARY KEY,
    nameProduct VARCHAR(45), 
    category VARCHAR(45), 
    stock VARCHAR(45),
    producer VARCHAR(45), 
    precio DECIMAL(10,2), 
    id_proveedor INT, 
    color VARCHAR(45),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id)
);
 


-- llenado de tabla con 5 clientes más para probar la base de datos
INSERT INTO cliente (name, lastname1, lastname2, phone, address, commune, mail, date)
VALUES ('Camila', 'Cabello', 'Flores', '94258776', 'San Pablo 4589', 'Iquique', 'camilacabello@gmail.com', '2024-03-01');

INSERT INTO cliente (name, lastname1, lastname2, phone, address, commune, mail, date)
VALUES ('Carlos', 'López', 'Garrido', '985639985', 'San Joaquin 496', 'Iquique', 'carloslopez@gmail.com', '2024-01-17');

INSERT INTO cliente (name, lastname1, lastname2, phone, address, commune, mail, date)
VALUES ('Danilo', 'García', 'García', '987414756', 'Lucia 435', 'Pozo Almonte', 'danilogarcia@gmail.com', '2023-03-09');

INSERT INTO cliente (name, lastname1, lastname2, phone, address, commune, mail, date)
VALUES ('Javiera', 'Rojas', 'Muñoz', '965123685', 'Santa rocio 575', 'Iquique', 'javierarojas@gmail.com', '2024-03-07');

INSERT INTO cliente (name, lastname1, lastname2, phone, address, commune, mail, date)
VALUES ('Javier', 'García', 'Marquez', '985698785', 'Santa Laura 566', 'Iquique', 'javiergarcia@gmail.com', '2024-02-17');

-- crear tabla con datos de 5 proveedores, con los siguientes datos; nombre representante legal, nombre corporativo, teléfono1, teléfono2, categoria producto, correo para enviar factura.


 
 -- llenado de tabla proveedores
 
INSERT INTO Proveedores (nombre_representante, nombre_corporativo, telefono1, telefono2, categoria_producto, correo_factura, nombre_contacto_telefono1, nombre_contacto_telefono2) 
VALUES ('Juan Pérez', 'Electronics Inc.', '123456789', '987654321', 'Electrónicos', 'juan@electronics.com', 'Juanito Galdame', 'Rosa Flores');
 
INSERT INTO Proveedores (nombre_representante, nombre_corporativo, telefono1, telefono2, categoria_producto, correo_factura, nombre_contacto_telefono1, nombre_contacto_telefono2) 
VALUES ('María López', 'Gadgets Emporium', '987654321', '123456789', 'Gadgets', 'maria@gadgets.com', 'Paula Contreras', 'Javier Moya');
 
INSERT INTO Proveedores (nombre_representante, nombre_corporativo, telefono1, telefono2, categoria_producto, correo_factura, nombre_contacto_telefono1, nombre_contacto_telefono2) 
VALUES ('Pedro Gómez', 'Tech Solutions', '555555555', '777777777', 'Tecnología', 'pedro@techsolutions.com', 'Camila Rojas', 'Maria Moyano');
 
INSERT INTO Proveedores (nombre_representante, nombre_corporativo, telefono1, telefono2, categoria_producto, correo_factura, nombre_contacto_telefono1, nombre_contacto_telefono2) 
VALUES ('Laura Martínez', 'ElectroWorld', '111111111', '222222222', 'Electrodomésticos', 'laura@electroworld.com', 'Hugo Fuentes', 'Helen Garrido');
 
INSERT INTO Proveedores (nombre_representante, nombre_corporativo, telefono1, telefono2, categoria_producto, correo_factura, nombre_contacto_telefono1, nombre_contacto_telefono2) 
VALUES  ('Carlos Sánchez', 'Smart Devices', '999999999', '888888888', 'Dispositivos Inteligentes', 'carlos@smartdevices.com', 'Patricio Videla', 'Carmen Leiva');


-- llenado de tabla productos

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES ('1','Laptop HP Pavilion', 'Electrónica', '50 unidades', 'HP Inc.', 850.00, 1, 'Negro');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (2, 'Teléfono inteligente Samsung Galaxy S21', 'Electrónica', '100 unidades', 'Samsung Electronics', 999.99, 2, 'Gris');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (3, 'Camisa Polo Ralph Lauren', 'Moda', '200 unidades', 'Ralph Lauren Corporation', 69.99, 3, 'Azul');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (4, 'Zapatillas Nike Air Max', 'Calzado', '150 unidades', 'Nike, Inc.', 129.99, 4, 'Blanco');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (5, 'Cámara Canon EOS Rebel T7i', 'Electrónica', '30 unidades', 'Canon Inc.', 699.00, 5, 'Negro');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (6, 'Mochila North Face Recon', 'Accesorios', '80 unidades', 'VF Corporation', 99.95, 1, 'Verde');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (7, 'Reloj Casio G-Shock', 'Accesorios', '120 unidades', 'Casio Computer Co., Ltd.', 79.99, 2, 'Negro');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (8, 'Silla de oficina Herman Miller Aeron', 'Muebles', '25 unidades', 'Herman Miller, Inc.', 999.00, 3, 'Negro');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (9, 'Libro "El Hobbit" de J.R.R. Tolkien', 'Libros', '50 unidades', 'Houghton Mifflin Harcourt', 15.99, 4, 'Marrón');

INSERT INTO producto (idproducto, nameProduct, category, stock, producer, precio, id_proveedor, color) 
VALUES (10, 'Set utensilios cocina de acero inoxidable', 'Hogar', '70 unidades', 'Cuisinart', 49.99, 5, 'Plateado');
-- vendedor llenado
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('14221458', 'Magdalena', 'Jara', 'Miranda', '2001-11-13', 'electrónicos');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('14858963', 'Marcos', 'Gutierez', 'Torres', '2003-12-08', 'tecnología');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('15228958', 'Juan', 'Flores', 'Pérez', '1999-01-19', 'hogar');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('15824921', 'Maria', 'Morales', 'Torres', '2000-11-18', 'electrodomésticos');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('16848536', 'Pablo', 'Burgos', 'Campillay', '1989-08-14', 'Dispositivos inteligentes');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('16854321', 'Laura', 'Miranda', 'Albornoz', '1998-10-12', 'Gadgets');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('17847965', 'Rodrigo', 'Ximenez', 'Cabezas', '1990-07-28', 'electrónicos');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('17885563', 'Francisca', 'Carvajal', 'Jara', '1995-08-20', 'Dispositivos inteligentes');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('18874523', 'Franco', 'Cabello', 'Lara', '1988-09-08', 'Gadgets''Gadgets');
INSERT INTO vendedor (run, name, nameLast1, nameLast2, dateBorn, category)
VALUES ('19325741', 'Lucia', 'Campos', 'Araya', '1993-08-12', 'tecnología');

-- Cual es la categoria de los productos que mas se repiten:
SELECT category, COUNT(*) AS cantidad
FROM producto
GROUP BY category
ORDER BY cantidad DESC
LIMIT 1;

-- Cuales son los productos con mayor stock:
SELECT nameProduct, stock
FROM producto
ORDER BY stock DESC
LIMIT 1;

-- Qué color de producto es más común en nuestra tienda:
SELECT color, COUNT(*) AS cantidad
FROM producto
GROUP BY color
ORDER BY cantidad DESC
LIMIT 1;

-- Cual o cuales son los proveedores con menor stock de productos:
SELECT nombre_representante, MIN(stock) AS menor_stock
FROM Proveedores
JOIN producto ON Proveedores.id = producto.id_proveedor
GROUP BY nombre_representante
ORDER BY menor_stock;

 -- Cambiar la categoría de productos más popular por 'Electrónica y computación'
UPDATE producto
SET category = 'Electrónica y computación'
WHERE category = (SELECT category FROM (SELECT category, COUNT(*) AS cantidad FROM producto GROUP BY category ORDER BY cantidad DESC LIMIT 1) AS temp);
