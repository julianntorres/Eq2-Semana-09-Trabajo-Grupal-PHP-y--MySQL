-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-04-2020 a las 03:48:06
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

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
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `telefono` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado_civil` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `telefono`, `fecha_nacimiento`, `estado_civil`, `activo`) VALUES
(1, 'Marko', '5598763251', '2005-04-06', 'SOLTERO', 1),
(2, 'Juan Perez', '5512345678', '2009-11-17', 'SOLTERO', 1),
(3, 'Pedro Fernandez', '6598753265', '2009-04-07', 'SOLTERO', 0),
(4, 'Oscar Martinez', '5523456789', '1990-01-01', 'SOLTERO', 1),
(5, 'Jessica Suarez', '5523456790', '1990-01-02', 'CASADO', 1),
(6, 'Miguel Andrade', '5523456791', '1990-01-03', 'SOLTERO', 0),
(7, 'Roberto Pacheco', '5523456792', '1990-01-04', 'CASADO', 1),
(8, 'Cintya Robledo', '5523456793', '1990-01-05', 'SOLTERO', 1),
(9, 'Rosa Alba', '5523456794', '1990-01-06', 'CASADO', 1),
(10, 'Maria Fones', '5523456795', '1990-01-07', 'SOLTERO', 0),
(11, 'Jose Pardo', '5523456796', '1990-01-08', 'CASADO', 1),
(12, 'Elizabeth Dupeiron', '5523456797', '1990-01-09', 'SOLTERO', 1),
(13, 'Juan Cena', '5523456798', '1990-01-10', 'CASADO', 1),
(14, 'Cesar Chavez', '5523456799', '1990-01-11', 'SOLTERO', 0),
(15, 'Ana Jimenez', '5523456800', '1990-01-12', 'CASADO', 0),
(16, 'Kevin Layun', '5523456801', '1990-01-13', 'SOLTERO', 1),
(17, 'Armando Fonseca', '5523456802', '1990-01-14', 'CASADO', 1),
(18, 'Ronaldo Leon', '5523456803', '1990-01-15', 'SOLTERO', 1),
(19, 'Luis Romero', '5523456804', '1990-01-16', 'CASADO', 1),
(20, 'Jaime Medina', '5523456805', '1990-01-17', 'SOLTERO', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
