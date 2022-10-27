-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2022 a las 17:34:54
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
-- Base de datos: `backendceg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id` int(11) NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id`, `descripcione`, `nombree`) VALUES
(1, 'Curso del Gobierno Nacional denominado \"Argentina Programa\", impulsado por el Ministerio de Economía de la Nación - 2022 (cursando).', 'Full Stack Developer'),
(2, 'Curso de Diseño Web Inicial. 2011', 'Instituto Capacitación IT'),
(3, 'Cursos de : 1- Electrónica, 2- reparación de audio (analógico y digital), 3- reparación de Tv (CRT), 4-reparación de Tv LCD, LED y DVD. 4 meses cada uno - 2007-2008. ', 'Instituto Futuro Electrónico'),
(7, 'Curso de Reparador de PC - 2002', 'Azul Computación'),
(8, 'Analista de Sistemas - 1989 - 1991 -- Programador en Lenguaje Basic - 1988', 'Institución Cervantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcione`, `nombree`, `id_persona`) VALUES
(1, 'Negocio propio donde ofrezco servicio técnico integral en Computación y Electrónica. Desde 2005 hasta la fecha.', 'Electro-Computacion', NULL),
(2, 'Profesor en curso de Informática avanzada. Duración del mismo 7 meses, 100 hs. Contenido del curso: Introducción a la Informática, Windows, Office(Word, Excel, Power Point, Outlook, Access).  2009 - 2012.', 'Instituto C.I.S.E', NULL),
(3, 'Profesor en curso de Reparación de PC. Duración 4 meses. 2008 - 2011.', 'Instituto Futuro Electrónico', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hys`
--

CREATE TABLE `hys` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `porcentaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `hys`
--

INSERT INTO `hys` (`id`, `nombre`, `porcentaje`) VALUES
(1, 'Visual Studio', 75),
(2, 'Cobol', 75),
(3, 'HTML', 65),
(4, 'CSS', 65),
(5, 'JavaScript', 60),
(6, 'Java', 55),
(7, 'Electrónica', 80),
(8, 'Inglés', 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `descripcion`, `img`) VALUES
(1, 'Carlos Eduardo', 'Gómez', 'Analista Programador y Técnico Electrónico. Realizo servicio técnico integral de dispositivos electrónicos, electrodomésticos, computadoras, notebook, tablet, redes, celulares e Impresoras.', 'https://firebasestorage.googleapis.com/v0/b/frontendceg.appspot.com/o/imagen%2Fperfil_1?alt=media&token=8ca950d8-7a40-4a3b-a826-f0d02b3c2b83');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_educacion`
--

CREATE TABLE `persona_educacion` (
  `id_persona` int(11) NOT NULL,
  `id_educacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_hys`
--

CREATE TABLE `persona_hys` (
  `id_persona` int(11) NOT NULL,
  `id_hys` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `rol_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`) VALUES
(1, 'user@user.com', 'user', 'user', '$2a$10$mbh/qH/mNlMAyVqq18mveuWZSI9eO.9xuUKwMBh6Th3gQJZAPsbsG'),
(2, 'admin@admin.com', 'admin', 'admin', '$2a$10$65iDyAFpQX4UYkimiVd7zOkg3J2Mo9gpfjSW45IXZS9DZqSQftbb2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id`, `rol_id`) VALUES
(1, 2),
(2, 1),
(2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `hys`
--
ALTER TABLE `hys`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona_educacion`
--
ALTER TABLE `persona_educacion`
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_educacion` (`id_educacion`);

--
-- Indices de la tabla `persona_hys`
--
ALTER TABLE `persona_hys`
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_hys` (`id_hys`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_id`,`rol_id`),
  ADD KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `hys`
--
ALTER TABLE `hys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `experiencia_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_educacion`
--
ALTER TABLE `persona_educacion`
  ADD CONSTRAINT `persona_educacion_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_educacion_ibfk_2` FOREIGN KEY (`id_educacion`) REFERENCES `educacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona_hys`
--
ALTER TABLE `persona_hys`
  ADD CONSTRAINT `persona_hys_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_hys_ibfk_2` FOREIGN KEY (`id_hys`) REFERENCES `hys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
