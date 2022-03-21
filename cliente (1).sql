-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 14:16:19
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cordoba_barrera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `dni`, `telefono`, `domicilio`, `edad`, `fecha_nac`) VALUES
(1, 'tobias', 'cordoba', 0, 0, 'campa123', 33, '0000-00-00'),
(2, 'Facundo', 'Barrera', 45693877, 2147483647, 'BarrioSmata2', 17, '2017-05-02'),
(3, 'consuelo', 'cordoba', 47895866, 351452688, 'la capilla', 79, '0000-00-00'),
(4, 'Facundo ', 'Barrera', 45693877, 2147483647, 'barriosmata5', 17, '2015-08-22'),
(5, 'milagros ', 'barrera', 548699, 351222558, '[value-6]smata5', 13, '0000-00-00'),
(6, '', '', 0, 0, '', 0, '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
