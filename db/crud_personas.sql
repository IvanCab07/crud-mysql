-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 22-10-2026 a las 00:14:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_personas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `anio` int(11) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `imagen` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `titulo`, `anio`, `genero`, `imagen`) VALUES
(2, 'Persona xd de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
(3, 'Persona de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
(4, 'Persona de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
(5, 'Persona de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
(6, 'Persona de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
(7, 'Persona de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
(8, 'Persona de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
(9, 'Persona de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330'),
(10, 'Persona de Ejemplo', 1995, 'Femenino', 'https://images.unsplash.com/photo-1494790108377-be9c29b29330');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
