-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2021 a las 20:01:42
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ffejal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concursantes`
--

CREATE TABLE `concursantes` (
  `id_concursante` int(3) NOT NULL,
  `nombre_concursante` text NOT NULL,
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
  `tercerCategoria` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `concursantes`
--

INSERT INTO `concursantes` (`id_concursante`, `nombre_concursante`, `apPaternoConcu`, `apMaternoConcu`, `emailConcur`, `passwordConcur`, `sexoConcu`, `lugarNacimientoConcu`, `fechaNacimientoConcur`, `edadConcur`, `curpConcur`, `estudiosConcur`, `estudiaConcur`, `celularConcur`, `telFijoConcur`, `facebookConcur`, `twitterConcur`, `medio`, `calleConcur`, `numExtConcur`, `numIntConcur`, `coloniaConcur`, `municipioConcur`, `estadoConcur`, `cpConcur`, `nombreGim`, `calleGim`, `numExtGim`, `numIntGim`, `coloniaGim`, `municipioGim`, `estadoGim`, `cpGim`, `nombreEntrenador`, `apePatEntrenador`, `apMatEntrenador`, `celularEntrenador`, `estadoRepresentado`, `primerCategoria`, `segundaCategoria`, `tercerCategoria`) VALUES
(1, 'Emmanuel Ricardo', 'Rincon', 'Garcia', 'errg07@gmail.com', '1234556', 'Hombre', 'Jalisco', '1997-03-07', 24, 'RIGE970307HJCNRM07', 'Licenciatura', 'Si', '3334639473', '3336753693', 'EmmanuelR', 'ersxe07', 'MedioImpreso', 'Loma Alta', 108, 'B', 'Lomas del 4', 'Tlaquepaque', 'Jalisco', '45599', 'El fortachon', 'FONDO', '111', '2', 'Higuerillas', 'Guadalajara', 'Morelos', '89521', 'Larry', 'Langosta', 'gonzalez', '132454894856', 'Baja California Sur', '15', '3', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jueces`
--

CREATE TABLE `jueces` (
  `idJuez` int(11) NOT NULL,
  `nombreJuez` varchar(200) NOT NULL,
  `apPaternoJuez` varchar(200) NOT NULL,
  `apMaternoJuez` varchar(200) DEFAULT NULL,
  `emailJuez` varchar(150) NOT NULL,
  `celularJuez` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jueces`
--

INSERT INTO `jueces` (`idJuez`, `nombreJuez`, `apPaternoJuez`, `apMaternoJuez`, `emailJuez`, `celularJuez`) VALUES
(1, 'Vanessa Janet', 'Martinez', 'Medina', 'ericardo.rincon@alumnos.udg.mx', '33333333'),
(2, 'David', 'Avelar', 'Gtz', 'erds@hotmail.com', '5645656');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `concursantes`
--
ALTER TABLE `concursantes`
  ADD PRIMARY KEY (`id_concursante`);

--
-- Indices de la tabla `jueces`
--
ALTER TABLE `jueces`
  ADD PRIMARY KEY (`idJuez`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `concursantes`
--
ALTER TABLE `concursantes`
  MODIFY `id_concursante` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `jueces`
--
ALTER TABLE `jueces`
  MODIFY `idJuez` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
