-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-09-2022 a las 21:29:42
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cursojava`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `telefono` varchar(40) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `telefono`, `email`, `password`) VALUES
(3, 'Jesús Alejandro', 'Serrano Graciano', NULL, 'alejandro01423@gmail.com', '123456'),
(4, 'Jesus2', 'Ap', NULL, 'jesus@mail.com', '$argon2id$v=19$m=1024,t=1,p=1$HvPpyJV6U5oBKrchtHX63Q$G+RR0H8T8+tx7clhBCCVhCr3qY4XsScVnwZztpxShtM'),
(5, 'correo', 'apellido', NULL, 'correo@mail.com', '$argon2id$v=19$m=1024,t=1,p=1$RxC5Gjh3oc1cQ2Acznxt9A$9TifwFJcUedRjN3grGago27P4ZQDcHxM+YWPo1KMfLA'),
(6, 'prueba', 'sdkasnd', NULL, 'asas@mail.com', '$argon2id$v=19$m=1024,t=1,p=1$ZPI0OO5UvaJ0/4eLIE2gQQ$8KYARs3DyNPjFkD6zlnaKP048ayYkykqU7r+bg1KcRw'),
(7, 'nombre1', 'appp', NULL, '123456@mail.com', '$argon2id$v=19$m=1024,t=1,p=1$92Ou5xX3thdtgoepUc7LDw$JhbFSKZ9HtE2uSrkx/ROm9Y5BxEeoEk5equ5HaYltjI');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
