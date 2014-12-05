create database examen;
use examen;
-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-11-2014 a las 10:46:42
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.4.4-14+deb7u14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pregutas_respuestas`
--

CREATE TABLE IF NOT EXISTS `detalle_pregutas_respuestas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Pregunta` int(11) NOT NULL,
  `ID_Respuesta` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `detalle_pregutas_respuestas`
--

INSERT INTO `detalle_pregutas_respuestas` (`ID`, `ID_Pregunta`, `ID_Respuesta`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 10),
(11, 4, 11),
(12, 4, 12),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `ID_respuesta` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`),
  KEY `ID_respuesta` (`ID_respuesta`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`ID`, `pregunta`, `ID_respuesta`) VALUES
(1, '¿Quién es el padre de la patria?', 3),
(2, '¿Qué es el grito de Dolores?', 5),
(3, '¿En qué año inicia  la Independencia de México?', 9),
(4, '¿Primer presidente de México?', 10),
(5, '¿Qué presidente de México se hacía llamar su santísima serenidad?', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE IF NOT EXISTS `respuestas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`ID`, `respuesta`) VALUES
(1, 'José María Morelos '),
(2, 'Ignacio Allende'),
(3, 'Miguel Hidalgo '),
(4, 'Una celebración'),
(5, 'Un acto de Inicio  de guerra '),
(6, 'Una conferencia'),
(7, '1910'),
(8, '1941'),
(9, '1810'),
(10, 'Guadalupe Victoria'),
(11, 'Vicente Guerrero'),
(12, 'Anastasio Bustamante  '),
(13, 'Manuel Gómez Pedraza'),
(14, 'Valentín Gómez Farías'),
(15, 'Antonio López de Santa Ana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nomb` varchar(50) DEFAULT NULL,
  `App` varchar(50) DEFAULT NULL,
  `Apm` varchar(50) DEFAULT NULL,
  `usr` varchar(20) DEFAULT NULL,
  `psw` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `calficacion` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `unique_ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nomb`, `App`, `Apm`, `usr`, `psw`, `status`, `calficacion`) VALUES
(1, 'Cruz Alfredo', 'Bibiano', 'Montaño', 'cruz', 'qwerty', 1, 5);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `preguntas_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_10` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_11` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_12` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_13` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_14` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_15` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_16` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_17` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_18` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_19` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_2` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_20` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_21` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_22` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_3` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_4` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_5` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_6` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_7` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_8` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`),
  ADD CONSTRAINT `preguntas_ibfk_9` FOREIGN KEY (`ID_respuesta`) REFERENCES `respuestas` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
