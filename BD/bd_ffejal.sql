-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 30, 2021 at 06:51 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `bd_ffejal`
--

-- --------------------------------------------------------

--
-- Table structure for table `concursantes`
--

CREATE TABLE `concursantes` (
  `id_concursante` int(3) NOT NULL,
  `nombre_concursante` varchar(200) NOT NULL,
  `apPaternoConcu` varchar(50) NOT NULL,
  `apMaternoConcu` varchar(50) NOT NULL,
  `emailConcur` varchar(100) NOT NULL,
  `passwordConcur` varchar(100) NOT NULL,
  `sexoConcu` varchar(8) NOT NULL,
  `lugarNacimientoConcu` varchar(50) NOT NULL,
  `fechaNacimientoConcur` date NOT NULL,
  `edadConcur` tinyint(4) NOT NULL,
  `curpConcur` varchar(19) NOT NULL,
  `estudiosConcur` varchar(30) NOT NULL,
  `estudiaConcur` varchar(2) NOT NULL,
  `celularConcur` varchar(20) NOT NULL,
  `telFijoConcur` varchar(20) DEFAULT NULL,
  `facebookConcur` varchar(150) DEFAULT NULL,
  `twitterConcur` varchar(150) DEFAULT NULL,
  `medio` varchar(15) NOT NULL,
  `calleConcur` varchar(150) NOT NULL,
  `numExtConcur` int(5) NOT NULL,
  `numIntConcur` varchar(20) DEFAULT NULL,
  `coloniaConcur` varchar(150) NOT NULL,
  `municipioConcur` varchar(150) NOT NULL,
  `estadoConcur` varchar(150) NOT NULL,
  `cpConcur` varchar(11) NOT NULL,
  `nombreGim` varchar(150) DEFAULT NULL,
  `calleGim` varchar(150) DEFAULT NULL,
  `numExtGim` varchar(11) DEFAULT NULL,
  `numIntGim` varchar(20) DEFAULT NULL,
  `coloniaGim` varchar(150) DEFAULT NULL,
  `municipioGim` varchar(150) DEFAULT NULL,
  `estadoGim` varchar(150) DEFAULT NULL,
  `cpGim` varchar(11) DEFAULT NULL,
  `nombreEntrenador` varchar(150) NOT NULL,
  `apePatEntrenador` varchar(150) NOT NULL,
  `apMatEntrenador` varchar(150) DEFAULT NULL,
  `celularEntrenador` varchar(20) DEFAULT NULL,
  `estadoRepresentado` varchar(150) NOT NULL,
  `primerCategoria` varchar(200) NOT NULL,
  `segundaCategoria` varchar(200) DEFAULT NULL,
  `tercerCategoria` varchar(200) DEFAULT NULL,
  `rol_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `concursantes`
--

INSERT INTO `concursantes` (`id_concursante`, `nombre_concursante`, `apPaternoConcu`, `apMaternoConcu`, `emailConcur`, `passwordConcur`, `sexoConcu`, `lugarNacimientoConcu`, `fechaNacimientoConcur`, `edadConcur`, `curpConcur`, `estudiosConcur`, `estudiaConcur`, `celularConcur`, `telFijoConcur`, `facebookConcur`, `twitterConcur`, `medio`, `calleConcur`, `numExtConcur`, `numIntConcur`, `coloniaConcur`, `municipioConcur`, `estadoConcur`, `cpConcur`, `nombreGim`, `calleGim`, `numExtGim`, `numIntGim`, `coloniaGim`, `municipioGim`, `estadoGim`, `cpGim`, `nombreEntrenador`, `apePatEntrenador`, `apMatEntrenador`, `celularEntrenador`, `estadoRepresentado`, `primerCategoria`, `segundaCategoria`, `tercerCategoria`, `rol_id`) VALUES
(1, 'Emmanuel Ricardo', 'Rincon', 'Garcia', 'errg07@gmail.com', '1234556', 'Hombre', 'Jalisco', '1997-03-07', 24, 'RIGE970307HJCNRM07', 'Licenciatura', 'Si', '3334639473', '3336753693', 'EmmanuelR', 'ersxe07', 'MedioImpreso', 'Loma Alta', 108, 'B', 'Lomas del 4', 'Tlaquepaque', 'Jalisco', '45599', 'El fortachon', 'FONDO', '111', '2', 'Higuerillas', 'Guadalajara', 'Morelos', '89521', 'Larry', 'Langosta', 'gonzalez', '132454894856', 'Baja California Sur', '15', '3', '2', ''),
(2, 'Jose', 'Cuervo', 'Tequila', 'jose@udg.com', '45678', 'Hombre', 'CDMX', '1980-05-05', 41, 'ergtock760gjvf56m4', 'Maestria', 'No', '5678904356', '', '', '', 'Medio Impreso', 'Av Belenes', 457, 'G', 'Belenes', 'Zapopan', 'Jalisco', '6543', '', '', '', '', '', '', '', '', 'Fabian', 'Orozco', '', '', 'Chihuahua', '6', '', '', 'Concursante');

-- --------------------------------------------------------

--
-- Table structure for table `jueces`
--

CREATE TABLE `jueces` (
  `idJuez` int(11) NOT NULL,
  `nombreJuez` varchar(200) NOT NULL,
  `apPaternoJuez` varchar(200) NOT NULL,
  `apMaternoJuez` varchar(200) DEFAULT NULL,
  `emailJuez` varchar(150) NOT NULL,
  `passwordJuez` varchar(200) NOT NULL,
  `celularJuez` varchar(20) NOT NULL,
  `rol_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jueces`
--

INSERT INTO `jueces` (`idJuez`, `nombreJuez`, `apPaternoJuez`, `apMaternoJuez`, `emailJuez`, `passwordJuez`, `celularJuez`, `rol_id`) VALUES
(1, 'Vanessa Janet', 'Martinez', 'Medina', 'ericardo.rincon@alumnos.udg.mx', '', '33333333', ''),
(2, 'David', 'Avelar', 'Gtz', 'erds@hotmail.com', '', '5645656', ''),
(3, 'Vanesssa', 'Medina', 'Martinez', 'correo@yahoo.com', '', '12345678', ''),
(4, 'Braulio', 'Carillo', 'Ramirez', 'br_78@udg.com', '', '340958023', 'Juez'),
(5, 'Fulanito', 'De Tal', '', 'fulanito@gmail.com', '1234a', '323556254', 'Juez'),
(6, 'Susana', 'Fuentes', 'Videgaray', 'fuentes@susana.com', '12345AS', '12345', 'Juez'),
(7, 'Susana', 'Fuentes', 'Videgaray', 'fuentes@susana.com', '12345AS', '12345', 'Juez'),
(8, 'Fernanda', 'Ortiz', '', 'fer@fer.com', 'fernanda', '23434545', 'Juez');

-- --------------------------------------------------------

--
-- Table structure for table `resultados`
--

CREATE TABLE `resultados` (
  `id_calificacion` int(11) NOT NULL,
  `id_Concursante` int(11) NOT NULL,
  `id_Juez` int(11) NOT NULL,
  `calificacionConcursante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concursantes`
--
ALTER TABLE `concursantes`
  ADD PRIMARY KEY (`id_concursante`);

--
-- Indexes for table `jueces`
--
ALTER TABLE `jueces`
  ADD PRIMARY KEY (`idJuez`);

--
-- Indexes for table `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD KEY `id_Concursante` (`id_Concursante`),
  ADD KEY `id_Juez` (`id_Juez`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concursantes`
--
ALTER TABLE `concursantes`
  MODIFY `id_concursante` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jueces`
--
ALTER TABLE `jueces`
  MODIFY `idJuez` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id_calificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `resultados`
--
ALTER TABLE `resultados`
  ADD CONSTRAINT `resultados_ibfk_1` FOREIGN KEY (`id_Concursante`) REFERENCES `concursantes` (`id_concursante`),
  ADD CONSTRAINT `resultados_ibfk_2` FOREIGN KEY (`id_Juez`) REFERENCES `jueces` (`idJuez`);
