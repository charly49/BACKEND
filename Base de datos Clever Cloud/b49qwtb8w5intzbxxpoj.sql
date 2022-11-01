-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: b49qwtb8w5intzbxxpoj-mysql.services.clever-cloud.com:3306
-- Generation Time: Nov 01, 2022 at 01:53 AM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b49qwtb8w5intzbxxpoj`
--

-- --------------------------------------------------------

--
-- Table structure for table `educacion`
--

CREATE TABLE `educacion` (
  `id` int NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `educacion`
--

INSERT INTO `educacion` (`id`, `descripcione`, `nombree`) VALUES
(1, 'Curso del Gobierno Nacional denominado \"Argentina Programa\", impulsado por el Ministerio de Economía de la Nación - 2022 (cursando).', 'Full Stack Developer'),
(2, 'Curso de Diseño Web Inicial. 2011', 'Instituto Capacitación IT'),
(3, 'Cursos de : 1- Electrónica, 2- reparación de audio (analógico y digital), 3- reparación de Tv (CRT), 4-reparación de Tv LCD, LED y DVD. 4 meses cada uno - 2007-2008. ', 'Instituto Futuro Electrónico'),
(7, 'Curso de Reparador de PC - 2002', 'Azul Computación'),
(8, 'Analista de Sistemas - 1989 - 1991 -- Programador en Lenguaje Basic - 1988', 'Institución Cervantes');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL,
  `id_persona` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcione`, `nombree`, `id_persona`) VALUES
(1, 'Negocio propio donde ofrezco servicio técnico integral en Computación y Electrónica. Desde 2005 hasta la fecha.', 'Electro-Computacion', NULL),
(2, 'Profesor en curso de Informática avanzada. Duración 7 meses, 100 hs. Contenido del curso: Introducción a la Informática, Windows, Office(Word, Excel, Power Point, Outlook, Access).  2009 - 2012.', 'Instituto C.I.S.E', NULL),
(3, 'Profesor en curso de Reparación de PC. Duración 4 meses. 2008 - 2011.', 'Instituto Futuro Electrónico', NULL),
(5, 'Sistema de control de inventarios para materiales, equipos y herramientas. Lenguaje utilizado Clipper - 1992', 'Empresa Costructora Bechara S.A.', NULL),
(6, 'Sistema de control de inventarios para materiales, equipos y herramientas. Lenguaje utilizado Clipper - 1992', 'Kantor Construcciones', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hys`
--

CREATE TABLE `hys` (
  `id` int NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `porcentaje` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `hys`
--

INSERT INTO `hys` (`id`, `nombre`, `porcentaje`) VALUES
(1, 'Clipper', 85),
(2, 'Cobol', 85),
(3, 'Pascal', 80),
(4, 'Visual Basic', 70),
(5, 'JavaScript', 60),
(6, 'Java', 55),
(7, 'HTML', 65),
(8, 'CSS', 60),
(10, 'Electrónica', 75),
(11, 'Inglés', 55);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido`, `descripcion`, `img`) VALUES
(1, 'Carlos Eduardo', 'Gómez', 'Analista Programador y Técnico Electrónico. Realizo servicio técnico integral de dispositivos electrónicos, electrodomésticos, computadoras, notebook, tablet, redes, celulares e Impresoras.', 'https://firebasestorage.googleapis.com/v0/b/frontendceg.appspot.com/o/imagen%2Fperfil_1?alt=media&token=8ca950d8-7a40-4a3b-a826-f0d02b3c2b83');

-- --------------------------------------------------------

--
-- Table structure for table `persona_educacion`
--

CREATE TABLE `persona_educacion` (
  `id_persona` int NOT NULL,
  `id_educacion` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persona_hys`
--

CREATE TABLE `persona_hys` (
  `id_persona` int NOT NULL,
  `id_hys` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persona_redes`
--

CREATE TABLE `persona_redes` (
  `id_persona` int NOT NULL,
  `id_redes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `id_persona` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `redes`
--

CREATE TABLE `redes` (
  `id` int NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

CREATE TABLE `rol` (
  `id` int NOT NULL,
  `rol_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`id`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`) VALUES
(1, 'user@user.com', 'user', 'user', '$2a$10$mbh/qH/mNlMAyVqq18mveuWZSI9eO.9xuUKwMBh6Th3gQJZAPsbsG'),
(2, 'admin@admin.com', 'admin', 'admin', '$2a$10$65iDyAFpQX4UYkimiVd7zOkg3J2Mo9gpfjSW45IXZS9DZqSQftbb2');

-- --------------------------------------------------------

--
-- Table structure for table `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_id` int NOT NULL,
  `rol_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_id`, `rol_id`) VALUES
(2, 1),
(1, 2),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indexes for table `hys`
--
ALTER TABLE `hys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persona_educacion`
--
ALTER TABLE `persona_educacion`
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_educacion` (`id_educacion`);

--
-- Indexes for table `persona_hys`
--
ALTER TABLE `persona_hys`
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_hys` (`id_hys`);

--
-- Indexes for table `persona_redes`
--
ALTER TABLE `persona_redes`
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_redes` (`id_redes`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indexes for table `redes`
--
ALTER TABLE `redes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- Indexes for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_id`,`rol_id`),
  ADD KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hys`
--
ALTER TABLE `hys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redes`
--
ALTER TABLE `redes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `experiencia_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persona_educacion`
--
ALTER TABLE `persona_educacion`
  ADD CONSTRAINT `persona_educacion_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_educacion_ibfk_2` FOREIGN KEY (`id_educacion`) REFERENCES `educacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persona_hys`
--
ALTER TABLE `persona_hys`
  ADD CONSTRAINT `persona_hys_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_hys_ibfk_2` FOREIGN KEY (`id_hys`) REFERENCES `hys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `persona_redes`
--
ALTER TABLE `persona_redes`
  ADD CONSTRAINT `persona_redes_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `persona_redes_ibfk_2` FOREIGN KEY (`id_redes`) REFERENCES `redes` (`id`);

--
-- Constraints for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`);

--
-- Constraints for table `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
