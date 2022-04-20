-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2022 a las 19:50:37
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
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `CodC` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`CodC`, `nombre`, `Localidad`, `Categoria`) VALUES
('c01', 'jose sanchez ', 'Arganda ', '18 '),
('c02', 'manuel diaz ', 'arganda ', '15 '),
('c03 ', 'juan perez ', 'rivasd ', '20 '),
('c04', 'luis ortiz ', 'arganta ', '18'),
('c05 ', 'javier martin', 'loeches ', '12 '),
('c06 ', 'carmen perez ', 'rivas ', '15 ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE `maquinas` (
  `codm` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio hora` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `maquinas`
--

INSERT INTO `maquinas` (`codm`, `nombre`, `precio hora`) VALUES
('m01', 'excabadora ', '15000'),
('m02', 'hormigonera ', '10000'),
('m03', 'volquete ', '11000'),
('m04', 'apisonadora ', '8000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `CodP` varchar(30) NOT NULL,
  `Deserip` varchar(30) NOT NULL,
  `Localidad` varchar(30) NOT NULL,
  `Cliente` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`CodP`, `Deserip`, `Localidad`, `Cliente`, `telefono`) VALUES
('po1', 'Garaje ', 'Arganda ', 'Felipe sol ', '600111111'),
('po2', 'Solado ', 'Rivas ', 'José Flores ', '912222222'),
('po3', 'Garaje ', 'Arganda ', 'Rosa Lopez ', '666999666'),
('po4', 'Techado', 'Loeches ', 'Jose Perez ', '913333333'),
('po5 ', 'Buhardilla ', 'Rivas ', 'Ana botijo ', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `CodC` varchar(30) NOT NULL,
  `CodM` varchar(30) NOT NULL,
  `CodP` varchar(30) NOT NULL,
  `Fecha` varchar(30) NOT NULL,
  `Tiempo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`CodC`, `CodM`, `CodP`, `Fecha`, `Tiempo`) VALUES
('C02', 'm03', 'p01', '//', ''),
('C03', 'm01', 'p02', '//', ''),
('C05', 'm03', 'p02', '//', ''),
('C04', 'm03', 'p02', '//', ''),
('C01', 'm02', 'p02', '//', ''),
('C02', 'm03', 'p03', '//', ''),
('C03', 'm01', 'p04', '//025', ''),
('C03', 'm03', 'p02', '/09/02', ''),
('C01', 'm03', 'p04', '/09/02', ''),
('C05', 'm03', 'p04', '/09/02', ''),
('C01', 'm02', 'p04', '/09/02', ''),
('C02 ', 'm03', 'p04', '/09/02', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
