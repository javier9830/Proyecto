-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2019 a las 17:47:37
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_links`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `links`
--

INSERT INTO `links` (`id`, `title`, `url`, `description`, `user_id`, `created_at`) VALUES
(2, 'Se busca porgramador', 'https://www.instagram.com/p/BqkQO11BxED/?utm_source=ig_web_copy_link', 'Se bucsa programador para que programe xd', 3, '2019-03-01 08:29:12'),
(3, 'Se busca porgramador', 'https://www.instagram.com/p/BqkQO11BxED/?utm_source=ig_web_copy_link', 'Se bucsa programador para que programe xd', 3, '2019-03-01 08:38:38'),
(4, 'Se busca porgramador', 'https://www.instagram.com/p/BqkQO11BxED/?utm_source=ig_web_copy_link', 'Se bucsa programador para que programe xd', 3, '2019-03-01 08:39:50'),
(5, 'Se busca porgramador', 'https://www.instagram.com/p/BqkQO11BxED/?utm_source=ig_web_copy_link', 'Se bucsa programador para que programe xd', 3, '2019-03-01 08:40:44'),
(10, 'twitter', '', 'hola', 4, '2019-03-03 07:03:44'),
(11, '', '', NULL, 5, '2019-06-30 03:36:28'),
(12, 'Prueba', 'https://www.instagram.com/p/BqkQO11BxED/?utm_source=ig_web_copy_link', '', 5, '2019-06-30 14:50:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('JpIyfT_L4XIPdNjQU83cP6YCjULvdboI', 1561993874, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":7}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(60) NOT NULL,
  `fullname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'john', 'password1', 'John Carter'),
(2, 'javier', '$2a$10$6AfS/93MRWZ8sL1Lees8DefVqNDFUC21dJ.at0TZgj9LxeAsxxAjq', 'javier'),
(3, 'eo', '$2a$10$hopUjTRSDr1fMcYkf0B6i.0Zwc5oVQy2lyR9n3sQzCk6oyA8LpqfK', 'chuco'),
(4, 'sonia', '$2a$10$D2jApcNgofIgw2Fr2pdWau7uwY6387kBto3bTMXXggMU1/S9pgOGe', 'sonia'),
(5, 'maria12', '$2a$10$2LQvOC47vlZZ/.U7ipHsLONiHABjkxACgXIOBWdqj/xjoblRnXLZe', 'maria'),
(6, 'juan12', '$2a$10$9nzzT1ACCDZKpaal9YLsYePLXweCUzxtDsnlmPgRWGI6Mtm1TiWBu', 'juan'),
(7, 'maria12', '$2a$10$K64pMmwHkknfzruvDmB0SOIac/ol2JHvv09hO6onQ91dH7nSxYohO', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
