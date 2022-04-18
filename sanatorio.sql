-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2022 a las 15:28:35
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
-- Base de datos: `sanatorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediocos`
--

CREATE TABLE `mediocos` (
  `codigo del doctor` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `especialidad` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mediocos`
--

INSERT INTO `mediocos` (`codigo del doctor`, `nombre`, `especialidad`, `direccion`, `telefono`) VALUES
('1', 'dra.sanz', 'intermista', 'calle 4# 23 _12', '8234567'),
('2', 'dr.perez', 'traumatologo ', 'cra 3 # 7 _98', '8210987'),
('3', 'dr.fernandez ', 'intermista ', 'calle 56 #98_76', '8240975'),
('4', 'dr.alonso ', 'cardiologo', 'cra 25# 45_19', '8309865'),
('5', 'dr.garcia ', 'hepatologia ', 'calle 71# 7 _ 93', '8317543'),
('6', 'dr.nuñez', 'neurologa ', 'calle 32 #90 _21', '8205489'),
('8', 'dra quiroga', 'pediatrica', 'cra 78#_3  45', '8300078'),
('9', 'dr latorre', 'pediatria', 'calle74#24-56', '8213456'),
('10', 'dr lopez', 'ginecologia', 'cra 21#70-94', '8327654'),
('11', 'dra campos', 'obstetra', 'calle 20#49-51', '8320943');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `codigo del paciente` varchar(30) NOT NULL,
  `diagnostico` varchar(30) NOT NULL,
  `fecha de visita` varchar(30) NOT NULL,
  `tratamiento` varchar(30) NOT NULL,
  `codigo del doctor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`codigo del paciente`, `diagnostico`, `fecha de visita`, `tratamiento`, `codigo del doctor`) VALUES
('', '', '', '', ''),
('5', 'Apendicitis', '06/12/2008', 'cirujia', '1'),
('28', 'Artritis', '07/01/2009', 'cirujia', '2'),
('21', 'fracturas', '08/01/2009', 'cirujia', '3'),
('4', 'diabetes', '09/02/2009', 'dieta baja en azucar', '4'),
('12', 'gripe', '10/02/2009', 'acetaminofena', '5'),
('62', 'sarampion', '11/02/2009', 'sinus', '6'),
('45', 'sinucitis', '12/03/2009', 'acetaminofena', '7'),
('23', 'cirrosis', '13/03/2009', 'clamoxil', '8'),
('12', 'amigdalitis', '14/03/2009', 'clamoxil', '9'),
('6', 'anemia', '15/04/2009', 'purgante', '10'),
('13', 'migraña', '16/04/2009', 'acetaminofen', '11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
