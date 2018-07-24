# Host: localhost  (Version 5.1.39-community)
# Date: 2018-07-23 22:51:19
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "almacenproducto"
#

DROP TABLE IF EXISTS `almacenproducto`;
CREATE TABLE `almacenproducto` (
  `AlmacenCodigo` int(10) NOT NULL COMMENT 'Código del Almacén',
  `ProductoCodigo` int(10) NOT NULL COMMENT 'Código del Producto',
  `AlmacenProductoStock` int(5) DEFAULT NULL COMMENT 'Stock del Producto en Almacén',
  `UnidadMedidaCodigo` varchar(3) DEFAULT NULL COMMENT 'Unidad de medida del Producto',
  `AlmacenProductoPrecio` decimal(15,2) DEFAULT NULL COMMENT 'Precio del Producto en Almacén',
  `MonedaCodigo` varchar(3) DEFAULT NULL COMMENT 'Moneda del Producto',
  `AlmacenProductoEstado` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Estado del Producto en Almacén: A: Activo, I: Inactivo',
  PRIMARY KEY (`AlmacenCodigo`,`ProductoCodigo`),
  KEY `UnidadMedidaCodigo` (`UnidadMedidaCodigo`),
  KEY `MonedaCodigo` (`MonedaCodigo`),
  KEY `ProductoCodigo` (`ProductoCodigo`),
  CONSTRAINT `almacenproducto_ibfk_1` FOREIGN KEY (`UnidadMedidaCodigo`) REFERENCES `unidadesmedida` (`UnidadMedidaCodigo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `almacenproducto_ibfk_2` FOREIGN KEY (`ProductoCodigo`) REFERENCES `productos` (`ProductoCodigo`) ON UPDATE CASCADE,
  CONSTRAINT `almacenproducto_ibfk_3` FOREIGN KEY (`AlmacenCodigo`) REFERENCES `almacenes` (`AlmacenCodigo`) ON UPDATE CASCADE,
  CONSTRAINT `almacenproducto_ibfk_4` FOREIGN KEY (`MonedaCodigo`) REFERENCES `monedas` (`MonedaCodigo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "almacenproducto"
#


#
# Structure for table "categorias"
#

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `CategoriaCodigo` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Código de la Categoría',
  `CategoriaNombre` varchar(50) NOT NULL COMMENT 'Nombre de la Categoría',
  `CategoriaDescripcion` text COMMENT 'Descripción de la Categoría',
  `CategoriaEstado` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Estado de la Categoría: A: Activo, I: Inactivo',
  `CategoriaFecre` date DEFAULT NULL COMMENT 'Fecha de Creación',
  `CategoriaHocre` time DEFAULT NULL COMMENT 'Hora de Creación',
  `CategoriaUscre` varchar(12) DEFAULT NULL COMMENT 'Usuario de Creación',
  `CategoriaFemod` date DEFAULT NULL COMMENT 'Fecha de Modificación',
  `CategoriaHomod` time DEFAULT NULL COMMENT 'Hora de Modificación',
  `CategoriaUsmod` varchar(12) DEFAULT NULL COMMENT 'Usuario de Modificación',
  PRIMARY KEY (`CategoriaCodigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "categorias"
#

INSERT INTO `categorias` VALUES (1,'AUDIFONOS','CATEGORIA QUE AGRUPA DIVERSAS MARCAS Y TIPOS DE AUDIFONOS\n','A','2018-07-22','07:39:00','ALUPIN',NULL,NULL,NULL),(2,'PARLANTES','AGRUPA DIVERSOS TIPOS Y MARCAS DE PARLANTES\n','A','2018-07-22','07:43:00','ALUPIN',NULL,NULL,NULL),(3,'RELOJES','AGRUPA A DIVERSOS TIPOS Y MARCAS DE RELOJES\n','A','2018-07-22','07:44:00','ALUPIN',NULL,NULL,NULL);

#
# Structure for table "monedas"
#

DROP TABLE IF EXISTS `monedas`;
CREATE TABLE `monedas` (
  `MonedaCodigo` varchar(3) NOT NULL COMMENT 'Código de Moneda',
  `MonedaSimbolo` varchar(5) NOT NULL COMMENT 'Símbolo de Moneda',
  `MonedaNombre` varchar(20) DEFAULT NULL COMMENT 'Nombre de Moneda',
  PRIMARY KEY (`MonedaCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for table "monedas"
#


#
# Structure for table "movimientos"
#

DROP TABLE IF EXISTS `movimientos`;
CREATE TABLE `movimientos` (
  `MovimientoCodigo` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código del Movimiento',
  `MovimientoFecha` date NOT NULL COMMENT 'Fecha del Movimiento',
  `AlmacenCodOrigen` int(10) NOT NULL COMMENT 'Código del Almacén Origen',
  `AlmacenCodDestino` int(10) NOT NULL COMMENT 'Código del Almacén Destino',
  `MovimientoComentario` mediumtext COMMENT 'Comentario del Movimiento',
  `MovimientoFecre` date DEFAULT NULL COMMENT 'Fecha de Creación',
  `MovimientoHocre` time DEFAULT NULL COMMENT 'Hora de Creación',
  `MovimientoUscre` varchar(12) DEFAULT NULL COMMENT 'Usuario de Creación',
  `MovimientoFemod` date DEFAULT NULL COMMENT 'Fecha de Modificación',
  `MovimientoHomod` time DEFAULT NULL COMMENT 'Hora de Modificación',
  `MovimientoUsmod` varchar(12) DEFAULT NULL COMMENT 'Usuario de Modificación',
  PRIMARY KEY (`MovimientoCodigo`),
  KEY `AlmacenCodOrigen` (`AlmacenCodOrigen`),
  KEY `AlmacenCodDestino` (`AlmacenCodDestino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "movimientos"
#


#
# Structure for table "tiposalmacen"
#

DROP TABLE IF EXISTS `tiposalmacen`;
CREATE TABLE `tiposalmacen` (
  `TipoAlmacenCodigo` int(3) NOT NULL AUTO_INCREMENT COMMENT 'Código de Tipo de Almacén',
  `TipoAlmacenNombre` varchar(50) NOT NULL COMMENT 'Nombre de Tipo de Almacén',
  `TipoAlmacenDescripcion` mediumtext COMMENT 'Descripción de Tipo de Almacén',
  `TipoAlmacenEstado` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Estado de Tipo de Almacén: A: Activo, I: Inactivo',
  `TipoAlmacenFecre` date DEFAULT NULL COMMENT 'Fecha de Creación',
  `TipoAlmacenHocre` time DEFAULT NULL COMMENT 'Hora de Creación',
  `TipoAlmacenUscre` int(11) DEFAULT NULL COMMENT 'Usuario de Creación',
  `TipoAlmacenFemod` varchar(12) DEFAULT NULL COMMENT 'Fecha de Modificación',
  `TipoAlmacenHomod` time DEFAULT NULL COMMENT 'Hora de Modificación',
  `TipoAlmacenUsmod` varchar(12) DEFAULT NULL COMMENT 'Usuario de Modificación',
  PRIMARY KEY (`TipoAlmacenCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tiposalmacen"
#


#
# Structure for table "almacenes"
#

DROP TABLE IF EXISTS `almacenes`;
CREATE TABLE `almacenes` (
  `AlmacenCodigo` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código del Almacén',
  `AlmacenNombre` varchar(50) NOT NULL COMMENT 'Nombre del Almacén',
  `TipoAlmacenCodigo` int(3) DEFAULT NULL COMMENT 'Código del Tipo de Almacén',
  `AlmacenDireccion` text COMMENT 'Dirección del Almacén',
  `AlmacenDescripcion` mediumtext COMMENT 'Descripción del Almacén',
  `AlmacenEstado` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Estado del Almacén: A: Activo, I: Inactivo',
  `AlmacenFecre` date DEFAULT NULL COMMENT 'Fecha de Creación',
  `AlmacenHocre` time DEFAULT NULL COMMENT 'Hora de Creación',
  `AlmacenUscre` varchar(12) DEFAULT NULL COMMENT 'Usuario de Creación',
  `AlmacenFemod` date DEFAULT NULL COMMENT 'Fecha de Modificación',
  `AlmacenHomod` time DEFAULT NULL COMMENT 'Hora de Modificación',
  `AlmacenUsmod` varchar(12) DEFAULT NULL COMMENT 'Usuario de Modificación',
  PRIMARY KEY (`AlmacenCodigo`),
  KEY `TipoAlmacenCodigo` (`TipoAlmacenCodigo`),
  CONSTRAINT `almacenes_ibfk_1` FOREIGN KEY (`TipoAlmacenCodigo`) REFERENCES `tiposalmacen` (`TipoAlmacenCodigo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "almacenes"
#


#
# Structure for table "unidadesmedida"
#

DROP TABLE IF EXISTS `unidadesmedida`;
CREATE TABLE `unidadesmedida` (
  `UnidadMedidaCodigo` varchar(3) NOT NULL COMMENT 'Código de la Unidad de Medida',
  `UnidadMedidaSimbolo` varchar(5) NOT NULL COMMENT 'Símbolo de la Unidad de Medida',
  `UnidadMedidaNombre` varchar(20) DEFAULT NULL COMMENT 'Nombre de la Unidad de Medida',
  PRIMARY KEY (`UnidadMedidaCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "unidadesmedida"
#


#
# Structure for table "productos"
#

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `ProductoCodigo` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código del Producto',
  `ProductoNombre` varchar(50) NOT NULL COMMENT 'Nombre del Producto',
  `ProductoDescripcion` longtext COMMENT 'Descripción del Producto',
  `CategoriaCodigo` int(3) DEFAULT NULL COMMENT 'Código de la Categoría',
  `UnidadMedidaCodigo` varchar(3) DEFAULT NULL COMMENT 'Código de la Unidad de Medida',
  `ProductoPrecio` decimal(15,2) DEFAULT NULL COMMENT 'Precio del Producto',
  `MonedaCodigo` varchar(3) DEFAULT NULL COMMENT 'Código de la Moneda',
  `ProductoEstado` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Estado de Producto: A: Activo, I: Inactivo',
  `ProductoFecre` date DEFAULT NULL COMMENT 'Fecha de Creación',
  `ProductoHocre` time DEFAULT NULL COMMENT 'Hora de Creación',
  `ProductoUscre` varchar(12) DEFAULT NULL COMMENT 'Usuario de Creación',
  `ProductoFemod` date DEFAULT NULL COMMENT 'Fecha de Modificación',
  `ProductoHomod` time DEFAULT NULL COMMENT 'Hora de Modificación',
  `ProductoUsmod` varchar(12) DEFAULT NULL COMMENT 'Usuario de Modificación',
  PRIMARY KEY (`ProductoCodigo`),
  KEY `ProductoNombre` (`ProductoNombre`),
  KEY `UnidadMedidaCodigo` (`UnidadMedidaCodigo`),
  KEY `CategoriaCodigo` (`CategoriaCodigo`),
  KEY `MonedaCodigo` (`MonedaCodigo`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`CategoriaCodigo`) REFERENCES `categorias` (`CategoriaCodigo`) ON UPDATE CASCADE,
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`MonedaCodigo`) REFERENCES `monedas` (`MonedaCodigo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`UnidadMedidaCodigo`) REFERENCES `unidadesmedida` (`UnidadMedidaCodigo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "productos"
#


#
# Structure for table "movimientoproducto"
#

DROP TABLE IF EXISTS `movimientoproducto`;
CREATE TABLE `movimientoproducto` (
  `MovimientoCodigo` int(10) NOT NULL COMMENT 'Código del Movimiento',
  `ProductoCodigo` int(10) NOT NULL COMMENT 'Código del Producto',
  `MovimientoProductoCant` int(5) NOT NULL COMMENT 'Cantidad de Producto del Movimiento',
  PRIMARY KEY (`MovimientoCodigo`,`ProductoCodigo`),
  KEY `ProductoCodigo` (`ProductoCodigo`),
  CONSTRAINT `movimientoproducto_ibfk_1` FOREIGN KEY (`MovimientoCodigo`) REFERENCES `movimientos` (`MovimientoCodigo`) ON UPDATE CASCADE,
  CONSTRAINT `movimientoproducto_ibfk_2` FOREIGN KEY (`ProductoCodigo`) REFERENCES `productos` (`ProductoCodigo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "movimientoproducto"
#


#
# Structure for table "usuarios"
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador interno del usuario',
  `alias` varchar(30) NOT NULL COMMENT 'alias o nickname del usuario',
  `correo` varchar(100) NOT NULL COMMENT 'correo electronico del usuario',
  `contrasenya` varchar(100) NOT NULL COMMENT 'contraseña del usuario cifrada',
  `registro` datetime DEFAULT NULL COMMENT 'fecha de creacion',
  `acceso` datetime DEFAULT NULL COMMENT 'fecha de ultimo acceso',
  `modificacion` datetime DEFAULT NULL COMMENT 'fecha de modificacion como alias, correo o contraseña',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Usuarios_UN_ALIAS` (`alias`),
  UNIQUE KEY `Usuarios_UN_CORREO` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

#
# Data for table "usuarios"
#

INSERT INTO `usuarios` VALUES (1,'arcenioLupin','arcenioLupin.dev@gmail.com','1bad8acb16c7a75b281d86cea1993a2e',NULL,'2018-07-21 22:18:18',NULL),(2,'arce','arce.dev@gmail.com','fc5e4620066dcb6e9f5081d2ee9ce4b6',NULL,NULL,NULL),(18,'test33695','test62760@r.com','369fdaa2741244f57b484d8ac1828fd3',NULL,'2018-07-19 01:06:22','2018-07-19 01:06:22'),(20,'test47723','test47723@r.com','6bec3e778994bf422cdff4cc8ee341a2',NULL,'2018-07-19 01:06:23','2018-07-19 01:06:23'),(21,'test15051','test15051@r.com','206f6a7ada917912e9389da75d80be3b',NULL,'2018-07-19 01:06:23','2018-07-19 01:06:23'),(22,'test45957','test76214@r.com','0566a85f6665677610d6af3482ea8dc4',NULL,'2018-07-19 01:14:31','2018-07-19 01:14:31'),(24,'test42228','test42228@r.com','3039a72740ccf74a6c840aacbef79b0b',NULL,'2018-07-19 01:14:31','2018-07-19 01:14:31'),(25,'test33961','test33961@r.com','cc1293b4eae66aa4fa2960e6ccb8ae96',NULL,'2018-07-19 01:14:31','2018-07-19 01:14:31'),(26,'akim','akimvilca.caceres@gmail.com','6d14ff7e8dc341f3c29b14e5cc5ec06a',NULL,'2018-07-21 23:45:08',NULL);

#
# Structure for table "vendedores"
#

DROP TABLE IF EXISTS `vendedores`;
CREATE TABLE `vendedores` (
  `VendedorCodigo` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código del Vendedor',
  `VendedorNombre1` varchar(50) NOT NULL COMMENT 'Primer Nombre del Vendedor',
  `VendedorNombre2` varchar(50) DEFAULT NULL COMMENT 'Segundo Nombre del Vendedor',
  `VendedorApepat` varchar(50) NOT NULL COMMENT 'Apellido Paterno del Vendedor',
  `VendedorApemat` varchar(50) NOT NULL COMMENT 'Apellido Materno del Vendedor',
  `VendedorDocid` varchar(20) DEFAULT NULL COMMENT 'Documento de identidad del Vendedor',
  `VendedorDireccion` text COMMENT 'Dirección del Vendedor',
  `VendedorCelular1` varchar(20) DEFAULT NULL COMMENT 'Celular del Vendedor',
  `VendedorCelular2` varchar(20) DEFAULT NULL COMMENT 'Celular del Vendedor',
  `UsuarioCodigo` varchar(12) DEFAULT NULL COMMENT 'Código de Usuario',
  `VendedorComentado` mediumtext COMMENT 'Comentario sobre el Vendedor',
  `VendedorEstado` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Estado de Vendedor: A: Activo, I: Inactivo',
  `VendedorFecre` date DEFAULT NULL COMMENT 'Fecha de Creación',
  `VendedorHocre` time DEFAULT NULL COMMENT 'Hora de Creación',
  `VendedorUscre` varchar(12) DEFAULT NULL COMMENT 'Usuario de Creación',
  `VendedorFemod` date DEFAULT NULL COMMENT 'Fecha de Modificación',
  `VendedorHomod` time DEFAULT NULL COMMENT 'Hora de Modificación',
  `VendedorUsmod` varchar(12) DEFAULT NULL COMMENT 'Usuario de Modificación',
  PRIMARY KEY (`VendedorCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "vendedores"
#


#
# Structure for table "almacenvendedor"
#

DROP TABLE IF EXISTS `almacenvendedor`;
CREATE TABLE `almacenvendedor` (
  `AlmacenCodigo` int(10) NOT NULL COMMENT 'Código del Almacén',
  `VendedorCodigo` int(10) NOT NULL COMMENT 'Código del Vendedor',
  `AlmacenVendedorEstado` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Estado del Vendedor en Almacén: A: Activo, I: Inactivo',
  PRIMARY KEY (`AlmacenCodigo`,`VendedorCodigo`),
  KEY `VendedorCodigo` (`VendedorCodigo`),
  CONSTRAINT `almacenvendedor_ibfk_1` FOREIGN KEY (`AlmacenCodigo`) REFERENCES `almacenes` (`AlmacenCodigo`) ON UPDATE CASCADE,
  CONSTRAINT `almacenvendedor_ibfk_2` FOREIGN KEY (`VendedorCodigo`) REFERENCES `vendedores` (`VendedorCodigo`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "almacenvendedor"
#


#
# Structure for table "ventas"
#

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
  `VentaCodigo` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Código de la Venta',
  `VentaFecha` date NOT NULL COMMENT 'Fecha de la Venta',
  `AlmacenCodigo` int(10) NOT NULL COMMENT 'Código del Almacén',
  `VendedorCodigo` int(10) NOT NULL COMMENT 'Código del Vendedor',
  `MonedaCodigo` varchar(3) NOT NULL COMMENT 'Código de Moneda',
  `VentaSubtotal` decimal(15,2) NOT NULL COMMENT 'Monto Subtotal de la Venta',
  `VentaDescuento` decimal(15,2) DEFAULT NULL COMMENT 'Monto Descuento de la Venta',
  `VentaTotal` decimal(15,2) NOT NULL COMMENT 'Monto Total de la Venta',
  `VentaEfectivo` decimal(15,2) DEFAULT NULL COMMENT 'Monto en Efectivo de la Venta',
  `VentaTarjeta` decimal(15,2) DEFAULT NULL COMMENT 'Monto en Tarjeta de la Venta',
  `VentaReferTarjeta` varchar(20) DEFAULT NULL COMMENT 'Referencia Tarjeta de la Venta',
  `VentaComentario` mediumtext COMMENT 'Comentario de la Venta',
  `VentaEstado` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'Estado de la Venta: A: Aprobado, R: Revertido',
  `VentaFecre` date DEFAULT NULL COMMENT 'Fecha de Creación',
  `VentaHocre` time DEFAULT NULL COMMENT 'Hora de Creación',
  `VentaUscre` varchar(12) DEFAULT NULL COMMENT 'Usuario de Creación',
  `VentaFemod` date DEFAULT NULL COMMENT 'Fecha de Modificación',
  `VentaHomod` time DEFAULT NULL COMMENT 'Hora de Modificación',
  `VentaUsmod` varchar(12) DEFAULT NULL COMMENT 'Usuario de Modificación',
  PRIMARY KEY (`VentaCodigo`),
  KEY `VendedorCodigo` (`VendedorCodigo`),
  KEY `AlmacenCodigo` (`AlmacenCodigo`),
  KEY `MonedaCodigo` (`MonedaCodigo`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`VendedorCodigo`) REFERENCES `vendedores` (`VendedorCodigo`) ON UPDATE CASCADE,
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`AlmacenCodigo`) REFERENCES `almacenes` (`AlmacenCodigo`) ON UPDATE CASCADE,
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`MonedaCodigo`) REFERENCES `monedas` (`MonedaCodigo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "ventas"
#


#
# Structure for table "ventadetalle"
#

DROP TABLE IF EXISTS `ventadetalle`;
CREATE TABLE `ventadetalle` (
  `VentaCodigo` int(10) NOT NULL COMMENT 'Código de la Venta',
  `VentaPosicion` int(3) NOT NULL COMMENT 'Posición de la Venta',
  `ProductoCodigo` int(10) NOT NULL COMMENT 'Código del Producto',
  `VentaProductoCant` int(5) NOT NULL COMMENT 'Cantidad de Producto de la Venta',
  `UnidadMedidaCodigo` varchar(3) NOT NULL COMMENT 'Código de la Unidad de Medida',
  `VentaProductoPrecio` decimal(15,2) NOT NULL COMMENT 'Precio del Producto de la Venta',
  `VentaProductoTotal` decimal(15,2) NOT NULL COMMENT 'Monto total del Producto de la Venta',
  PRIMARY KEY (`VentaCodigo`,`VentaPosicion`),
  KEY `ProductoCodigo` (`ProductoCodigo`),
  KEY `UnidadMedidaCodigo` (`UnidadMedidaCodigo`),
  CONSTRAINT `ventadetalle_ibfk_1` FOREIGN KEY (`VentaCodigo`) REFERENCES `ventas` (`VentaCodigo`) ON UPDATE CASCADE,
  CONSTRAINT `ventadetalle_ibfk_2` FOREIGN KEY (`ProductoCodigo`) REFERENCES `productos` (`ProductoCodigo`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `ventadetalle_ibfk_3` FOREIGN KEY (`UnidadMedidaCodigo`) REFERENCES `unidadesmedida` (`UnidadMedidaCodigo`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "ventadetalle"
#

