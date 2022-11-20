-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2022 a las 10:46:28
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
-- Base de datos: `alquiler_vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquileres`
--

CREATE TABLE `alquileres` (
  `alquilerId` int(5) NOT NULL,
  `clienteId` int(5) NOT NULL,
  `coheId` int(4) NOT NULL,
  `seguroID` int(3) NOT NULL,
  `diasRenting` int(3) NOT NULL,
  `precio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alquileres`
--

INSERT INTO `alquileres` (`alquilerId`, `clienteId`, `coheId`, `seguroID`, `diasRenting`, `precio`) VALUES
(1, 4, 2, 1, 8, 180),
(2, 2, 3, 1, 5, 145),
(3, 1, 5, 2, 3, 170),
(4, 3, 1, 1, 5, 195),
(5, 5, 4, 2, 7, 260);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `clienteId` int(5) UNSIGNED NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `apellido` varchar(120) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `fechaCarnet` date DEFAULT NULL,
  `telefono` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`clienteId`, `nombre`, `apellido`, `dni`, `fechaCarnet`, `telefono`) VALUES
(1, 'Beatriz', 'Alonso', '22222222J', '1995-10-15', 666545757),
(2, 'Julia', 'Herrera', '11111111H', '1999-08-01', 637451678),
(3, 'Alberto', 'López', '70215788F', '1992-06-05', 643290777),
(4, 'Raquel', 'Ortiz', '03411919Y', '2000-11-20', 673555666),
(5, 'Carlos', 'González', '50753246E', '1993-03-03', 649511558);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coches`
--

CREATE TABLE `coches` (
  `cocheId` int(4) UNSIGNED NOT NULL,
  `marca` varchar(55) NOT NULL,
  `modelo` varchar(120) NOT NULL,
  `matricula` varchar(7) NOT NULL,
  `precioDia` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coches`
--

INSERT INTO `coches` (`cocheId`, `marca`, `modelo`, `matricula`, `precioDia`) VALUES
(1, 'Audi', 'A3', '8828JLM', 35),
(2, 'Opel', 'Corsa', '6033GVB', 20),
(3, 'Toyota', 'Avensis', '9350FFA', 25),
(4, 'Audi', 'A1', '1422GSR', 30),
(5, 'BMW', 'Serie 1', '7819HCU', 40),
(6, 'Hyundai', 'i30', '0392JJS', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguros`
--

CREATE TABLE `seguros` (
  `seguroId` int(3) UNSIGNED NOT NULL,
  `tipoSeguro` varchar(55) NOT NULL,
  `cobertura` varchar(120) NOT NULL,
  `precio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seguros`
--

INSERT INTO `seguros` (`seguroId`, `tipoSeguro`, `cobertura`, `precio`) VALUES
(1, 'Básico', 'Terceros', 20),
(2, 'Premium', 'Todo riesgo', 50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  ADD PRIMARY KEY (`alquilerId`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`clienteId`);

--
-- Indices de la tabla `coches`
--
ALTER TABLE `coches`
  ADD PRIMARY KEY (`cocheId`);

--
-- Indices de la tabla `seguros`
--
ALTER TABLE `seguros`
  ADD PRIMARY KEY (`seguroId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquileres`
--
ALTER TABLE `alquileres`
  MODIFY `alquilerId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `clienteId` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `coches`
--
ALTER TABLE `coches`
  MODIFY `cocheId` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `seguros`
--
ALTER TABLE `seguros`
  MODIFY `seguroId` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
