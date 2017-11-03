-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-11-2017 a las 23:36:20
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `noticias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `titulo` varchar(50) NOT NULL,
  `codUsuario` varchar(5) NOT NULL,
  `cuerpo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`titulo`, `codUsuario`, `cuerpo`) VALUES
('Casillas se retira a los 93 años', '1', '\"Es la hora de colgar las manos\" declaro el ex portero del Real Madrid'),
('Cristiano patrocina sus nuevas muletas', '1', 'El portugués ha dado una conferencia sobre como aprendió a utilizarlas tras un durísimo tutorial de youtube.'),
('Griezmann vuelve a marcar', '4', 'Griezmann mete un gol 16 eclipses solares más tarde'),
('Messi muere en un accidente de triciclo', '1', 'El delantero del Barcelona falleció al intentar hacer un 360 por encima de una bandera independentista, se puede decir que murió por Catalunya.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `codUsuario` varchar(5) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `empresa` varchar(30) NOT NULL,
  `admitirEnvio` enum('S','N') NOT NULL,
  `clave` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`codUsuario`, `nombre`, `empresa`, `admitirEnvio`, `clave`) VALUES
('1', 'Skaynx', 'Marca', 'S', '123456'),
('2', 'Mixtochuli', 'As', 'N', '234567'),
('3', 'Jimigar', 'Sport', 'N', 'ss'),
('4', 'Lonewar', 'MundoDeportivo', 'S', 'fasci');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`titulo`,`codUsuario`),
  ADD KEY `codUsuario` (`codUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`codUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`codUsuario`) REFERENCES `usuarios` (`codUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
