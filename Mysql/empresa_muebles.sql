-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2022 a las 10:26:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa_muebles`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `BUSCAR_CLIENTE` (IN `nombreCliente` VARCHAR(45), IN `apellidosCliente` VARCHAR(45))   BEGIN
	IF EXISTS(SELECT 1 FROM clientes WHERE nombre LIKE nombreCliente AND apellidos LIKE apellidosCliente) THEN
    	SELECT nombre, apellidos FROM clientes WHERE nombre LIKE nombreCliente AND apellidos LIKE apellidosCliente;
     ELSE
      SIGNAL SQLSTATE '12345' SET MESSAGE_TEXT='No existe el cliente';
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `CONSULTA1` (`CANTIDADMINIMA` INT)   BEGIN
    DECLARE fin INTEGER DEFAULT 0;
    DECLARE VID_PRODUCTO INTEGER;
    DECLARE VNOMBRE VARCHAR(30);
    DECLARE VCANTIDAD INTEGER;
    
    DECLARE MICURSORESPECIAL CURSOR FOR SELECT ID_PRODUCTO, nombre_producto, CANTIDAD FROM PRODUCTOS WHERE CANTIDAD < CANTIDADMINIMA;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin=1;
    
	OPEN MICURSORESPECIAL;
    NOMBREDEMIBUCLE :LOOP
    	FETCH MICURSORESPECIAL INTO VID_PRODUCTO, VNOMBRE, VCANTIDAD;
    	IF  fin = 1   THEN
            LEAVE NOMBREDEMIBUCLE;
        END IF;
        SELECT VID_PRODUCTO, VNOMBRE, VCANTIDAD;
    END LOOP;

	CLOSE MICURSORESPECIAL;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `VerTodosClientes` ()   BEGIN
    DECLARE fin INTEGER DEFAULT 0;
    DECLARE nombre_cliente VARCHAR(45);
    DECLARE apellidos_cliente VARCHAR(45);

    DECLARE MICURSOR CURSOR FOR SELECT nombre, apellidos FROM clientes;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET fin=1;

        OPEN MICURSOR;
    NOMBREDEMIBUCLE :LOOP
        FETCH MICURSOR INTO nombre_cliente, apellidos_cliente;
        IF  fin = 1   THEN
            LEAVE NOMBREDEMIBUCLE;
        END IF;
        SELECT nombre_cliente, apellidos_cliente;
    END LOOP;

        CLOSE MICURSOR;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `telf` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellidos`, `telf`) VALUES
(1, 'Paco', 'Lucia Valmonte', 914578962),
(2, 'Marina', 'Topete de Real', 936514798);

--
-- Disparadores `clientes`
--
DELIMITER $$
CREATE TRIGGER `borraTambienPedido` BEFORE DELETE ON `clientes` FOR EACH ROW BEGIN
	
     DELETE FROM pedidos WHERE old.id_cliente;
        
   

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `accion` varchar(200) NOT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `accion`, `fecha_hora`) VALUES
(1, 'Se actualizó el registro', '2022-10-17 18:13:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `num_pedidos` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_pedido` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Disparadores `pedidos`
--
DELIMITER $$
CREATE TRIGGER `TRIGGERINSERTAPEDIDOS` AFTER INSERT ON `pedidos` FOR EACH ROW BEGIN
    DECLARE cuantospido INT;
    DECLARE cantidadexistente INT;
    SET cuantospido :=  new.num_pedidos;

    SELECT PRODUCTOS.cantidad From productos WHERE PRODUCTOS.id_producto = new.id_producto INTO cantidadexistente;

    IF cuantospido <= cantidadexistente THEN
         UPDATE PRODUCTOS SET CANTIDAD := CANTIDAD - new.num_pedidos  WHERE id_producto = NEW.id_producto;
    ELSE
         SIGNAL SQLSTATE '12345' SET MESSAGE_TEXT='NO HAY TANTOS PRODUCTOS';
    END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(45) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `precio_unidad` double(5,1) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `descripcion`, `precio_unidad`, `cantidad`) VALUES
(1, 'Mesa de Game', 'Mesa para jugar y tiene un mando control que sube y baja la altura', 365.9, 20),
(2, 'Estanterias', 'Estanterías hecho de roble', 600.0, 190),
(3, 'Lamparas', 'Tiene Bluetooth para conectar un dispositivo', 20.9, 1000),
(4, 'Decoración de Buhos', NULL, 14.9, 1000),
(5, 'Cama de matrimonio', 'Está diseñado para no hacer ruido', 145.9, 1),
(6, 'Mesilla', 'Tiene un cajón secreto', 12.9, 100);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD KEY `FK_pedidos_clientes` (`id_cliente`),
  ADD KEY `FK_pedidos_productos` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_pedidos_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `FK_pedidos_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
