-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-09-2019 a las 16:02:11
-- Versión del servidor: 5.7.19
-- Versión de PHP: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guacamoli`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `comida` varchar(20) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `ingredientes` varchar(255) DEFAULT NULL,
  `contenido` text,
  `img` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `estado`, `tipo`, `comida`, `nombre`, `autor`, `ingredientes`, `contenido`, `img`, `video`) VALUES
(1, 'ja', 'p', 'x', 'x', 'x', 'x', 'x', 'x', 'x');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `edad` tinyint(4) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `ocupacion` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `sobre` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `edad`, `sexo`, `ocupacion`, `email`, `usuario`, `password`, `sobre`) VALUES
(1, 'Miguel Angel', 'Rivera Vega', 28, 'M', 'Chef', 'mianrive9129@hotmail.com', 'marv', 'marv', 'Soy un super chef'),
(2, 'Alberto ', 'Lopez Mendes', 50, 'M', 'Repostero', 'marv@gmail.com', 'marv12', 'marv12', 'He sido respostero por mucho tiempo'),
(3, 'a', 'a', 1, 'M', 'a', 'a', 'a', 's', 'a'),
(4, 'a', 'a', 1, 'M', 'a', 'a', 'a', 'w', 'a'),
(5, 'WW', 'W', 1, 'F', 'W', 'aW', 'aW', 'WW', 'aWW'),
(6, 'Ale', 'Glez', 25, 'F', 'Teacher', 'ivonne.gonzalez@generation.org', 'Alex', 'alex', 'Me gusta cocinar y dar clases.'),
(8, 'Ismael', 'Natividad', 22, 'M', 'Estufiante', 'isma3_ljfdofiojsdiojf', 'Mayelo123a', 'asdf', 'pito putos'),
(9, 'Holi', 'Patas ', 95, 'F', 'Nose', 'hola.mundo@yahoo.com', 'PATAS', 'PATAS', 'Me gustan las patas MMMMM..... Patas\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
