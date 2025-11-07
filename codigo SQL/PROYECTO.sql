-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-11-2025 a las 01:26:39
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
-- Base de datos: `PROYECTO`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ADMINISTRACION`
--

CREATE TABLE `ADMINISTRACION` (
  `Cedula` varchar(20) NOT NULL,
  `Contrasena` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ADMINISTRACION`
--

INSERT INTO `ADMINISTRACION` (`Cedula`, `Contrasena`) VALUES
('1234567', '1234'),
('123456789', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CORRESPONDE`
--

CREATE TABLE `CORRESPONDE` (
  `IDGrupo` int(11) NOT NULL,
  `Cedula` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `CORRESPONDE`
--

INSERT INTO `CORRESPONDE` (`IDGrupo`, `Cedula`) VALUES
(1, '123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DOCENTE`
--

CREATE TABLE `DOCENTE` (
  `Cedula` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `DOCENTE`
--

INSERT INTO `DOCENTE` (`Cedula`) VALUES
('12345678'),
('123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GRUPO`
--

CREATE TABLE `GRUPO` (
  `IDGrupo` int(11) NOT NULL,
  `Turno` enum('matutino','vespertino','nocturno') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `GRUPO`
--

INSERT INTO `GRUPO` (`IDGrupo`, `Turno`) VALUES
(1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Inasistencia`
--

CREATE TABLE `Inasistencia` (
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `materia` varchar(15) NOT NULL,
  `grupo` varchar(5) NOT NULL,
  `fechaInicio` varchar(45) NOT NULL,
  `fechaFin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `LICENCIA`
--

CREATE TABLE `LICENCIA` (
  `ID` int(11) NOT NULL,
  `Cedula` varchar(20) DEFAULT NULL,
  `FInicio` varchar(20) DEFAULT NULL,
  `FFinal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `LICENCIA`
--

INSERT INTO `LICENCIA` (`ID`, `Cedula`, `FInicio`, `FFinal`) VALUES
(101, '123456789', '2025-10-11', '2025-10-12'),
(102, '123456789', '2025-10-11', '2025-10-12'),
(103, '12345678', '2025-10-11', '2025-10-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MATERIAS`
--

CREATE TABLE `MATERIAS` (
  `IDGrupo` int(11) NOT NULL,
  `Cedula` varchar(20) NOT NULL,
  `Materia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `MATERIAS`
--

INSERT INTO `MATERIAS` (`IDGrupo`, `Cedula`, `Materia`) VALUES
(1, '123456789', 'Matemáticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `NOTIFICA`
--

CREATE TABLE `NOTIFICA` (
  `ID` int(11) NOT NULL,
  `Cedula` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `NOTIFICACION`
--

CREATE TABLE `NOTIFICACION` (
  `ID` int(11) NOT NULL,
  `Cedula` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PERSONA`
--

CREATE TABLE `PERSONA` (
  `Cedula` varchar(20) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `PERSONA`
--

INSERT INTO `PERSONA` (`Cedula`, `Nombre`, `Apellido`) VALUES
('1234567', 'Pruebanombre', 'Pruebaapellido'),
('12345678', 'PruebaNombre2', 'PruebaApellido2'),
('123456789', 'Nombreprueba', 'Apellidoprueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `REGISTRA`
--

CREATE TABLE `REGISTRA` (
  `ID` int(11) NOT NULL,
  `CedulaAdmin` varchar(20) NOT NULL,
  `CedulaDocente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ADMINISTRACION`
--
ALTER TABLE `ADMINISTRACION`
  ADD PRIMARY KEY (`Cedula`);

--
-- Indices de la tabla `CORRESPONDE`
--
ALTER TABLE `CORRESPONDE`
  ADD PRIMARY KEY (`IDGrupo`,`Cedula`),
  ADD KEY `Cedula` (`Cedula`);

--
-- Indices de la tabla `DOCENTE`
--
ALTER TABLE `DOCENTE`
  ADD PRIMARY KEY (`Cedula`);

--
-- Indices de la tabla `GRUPO`
--
ALTER TABLE `GRUPO`
  ADD PRIMARY KEY (`IDGrupo`);

--
-- Indices de la tabla `LICENCIA`
--
ALTER TABLE `LICENCIA`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Cedula` (`Cedula`);

--
-- Indices de la tabla `MATERIAS`
--
ALTER TABLE `MATERIAS`
  ADD PRIMARY KEY (`IDGrupo`,`Cedula`,`Materia`);

--
-- Indices de la tabla `NOTIFICA`
--
ALTER TABLE `NOTIFICA`
  ADD PRIMARY KEY (`ID`,`Cedula`),
  ADD KEY `Cedula` (`Cedula`);

--
-- Indices de la tabla `NOTIFICACION`
--
ALTER TABLE `NOTIFICACION`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Cedula` (`Cedula`);

--
-- Indices de la tabla `PERSONA`
--
ALTER TABLE `PERSONA`
  ADD PRIMARY KEY (`Cedula`);

--
-- Indices de la tabla `REGISTRA`
--
ALTER TABLE `REGISTRA`
  ADD PRIMARY KEY (`ID`,`CedulaAdmin`,`CedulaDocente`),
  ADD KEY `CedulaAdmin` (`CedulaAdmin`),
  ADD KEY `CedulaDocente` (`CedulaDocente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ADMINISTRACION`
--
ALTER TABLE `ADMINISTRACION`
  ADD CONSTRAINT `ADMINISTRACION_ibfk_1` FOREIGN KEY (`Cedula`) REFERENCES `PERSONA` (`Cedula`);

--
-- Filtros para la tabla `CORRESPONDE`
--
ALTER TABLE `CORRESPONDE`
  ADD CONSTRAINT `CORRESPONDE_ibfk_1` FOREIGN KEY (`IDGrupo`) REFERENCES `GRUPO` (`IDGrupo`),
  ADD CONSTRAINT `CORRESPONDE_ibfk_2` FOREIGN KEY (`Cedula`) REFERENCES `DOCENTE` (`Cedula`);

--
-- Filtros para la tabla `DOCENTE`
--
ALTER TABLE `DOCENTE`
  ADD CONSTRAINT `DOCENTE_ibfk_1` FOREIGN KEY (`Cedula`) REFERENCES `PERSONA` (`Cedula`);

--
-- Filtros para la tabla `LICENCIA`
--
ALTER TABLE `LICENCIA`
  ADD CONSTRAINT `LICENCIA_ibfk_1` FOREIGN KEY (`Cedula`) REFERENCES `DOCENTE` (`Cedula`);

--
-- Filtros para la tabla `MATERIAS`
--
ALTER TABLE `MATERIAS`
  ADD CONSTRAINT `MATERIAS_ibfk_1` FOREIGN KEY (`IDGrupo`,`Cedula`) REFERENCES `CORRESPONDE` (`IDGrupo`, `Cedula`);

--
-- Filtros para la tabla `NOTIFICA`
--
ALTER TABLE `NOTIFICA`
  ADD CONSTRAINT `NOTIFICA_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `LICENCIA` (`ID`),
  ADD CONSTRAINT `NOTIFICA_ibfk_2` FOREIGN KEY (`Cedula`) REFERENCES `PERSONA` (`Cedula`);

--
-- Filtros para la tabla `NOTIFICACION`
--
ALTER TABLE `NOTIFICACION`
  ADD CONSTRAINT `NOTIFICACION_ibfk_1` FOREIGN KEY (`Cedula`) REFERENCES `PERSONA` (`Cedula`);

--
-- Filtros para la tabla `REGISTRA`
--
ALTER TABLE `REGISTRA`
  ADD CONSTRAINT `REGISTRA_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `NOTIFICACION` (`ID`),
  ADD CONSTRAINT `REGISTRA_ibfk_2` FOREIGN KEY (`CedulaAdmin`) REFERENCES `ADMINISTRACION` (`Cedula`),
  ADD CONSTRAINT `REGISTRA_ibfk_3` FOREIGN KEY (`CedulaDocente`) REFERENCES `DOCENTE` (`Cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
