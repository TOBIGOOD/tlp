-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2022 a las 19:59:55
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
-- Base de datos: `empresa_cordobabarrera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `T#` varchar(30) NOT NULL,
  `TNOMBRE` varchar(30) NOT NULL,
  `CIUDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`T#`, `TNOMBRE`, `CIUDAD`) VALUES
('T1', '', ''),
('T2', '', ''),
('T3', '', ''),
('T4', '', ''),
('T5', '', ''),
('T1', 'CLASIFICADORA', 'MADRID'),
('T2', 'PERFORADORA', 'MALAGA'),
('T3', 'LECTORA', 'CACERES '),
('T4', 'CONSOLA ', 'CACERES'),
('T5', 'MEZCLADORA ', 'SEVILLA'),
('T6', 'TERMINAL', 'BARCELONA'),
('T7', 'CINTA ', 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes`
--

CREATE TABLE `componentes` (
  `C#` varchar(30) NOT NULL,
  `CNOMBRES` varchar(30) NOT NULL,
  `COLOR` varchar(30) NOT NULL,
  `PESO` varchar(30) NOT NULL,
  `CIUDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes`
--

INSERT INTO `componentes` (`C#`, `CNOMBRES`, `COLOR`, `PESO`, `CIUDAD`) VALUES
('C1', 'X3A', 'ROJO', '12', 'SEVILLA'),
('C2', 'B8A', 'VERDE ', '17', 'MADRID'),
('C3', 'C4B', 'AZUL', '17', 'MALAGA'),
('C4', 'C4B', 'ROJO', '14', 'SEVILLA'),
('C5', 'VT8', 'AZUL', '12', 'MADRID'),
('C6', 'C30', 'ROJO', '19', 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `P#` varchar(30) NOT NULL,
  `C#` varchar(30) NOT NULL,
  `T#` varchar(30) NOT NULL,
  `CANTIDAD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `p#` varchar(30) NOT NULL,
  `pnombre` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`p#`, `pnombre`, `categoria`, `ciudad`) VALUES
('p1', 'CARLOS', '20', 'SEVILLA'),
('P2', 'JUAN', '10', 'MADRID'),
('P3', 'JOSE', '30', 'SEVILLA'),
('P4', 'INMA', '20', 'SEVILLA'),
('P5', 'EVA', '30', 'CACERES ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
