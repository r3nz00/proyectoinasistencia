-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-11-2025 a las 22:12:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `PROYECTOJ`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Administracion`
--

CREATE TABLE `Administracion` (
  `cedula` int(8) NOT NULL,
  `contrasenia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Administracion`
--

INSERT INTO `Administracion` (`cedula`, `contrasenia`) VALUES
(12345678, '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Inasistencia`
--

CREATE TABLE `Inasistencia` (
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `materia` varchar(50) NOT NULL,
  `grupo` varchar(50) NOT NULL,
  `fechaInicio` varchar(50) NOT NULL,
  `fechaFinal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Inasistencia`
--

INSERT INTO `Inasistencia` (`nombre`, `apellido`, `materia`, `grupo`, `fechaInicio`, `fechaFinal`) VALUES
('PEPE', 'CARBALLO', 'DIBUJO', '1MC', '1-11-25', '12-11-25'),
('sdfghjk', 'rtyu', '456y', 'rty', 'eerty', 'rty'),
('zkjzx', 'sdfkshf', 'ds', 'skdjfh', '1', '2'),
('fghj', 'ilk', 'rtyu', 'loikuf', 'oiu', 'liku');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
