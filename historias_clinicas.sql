-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2019 a las 07:12:50
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `historias_clinicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambitos`
--

CREATE TABLE `ambitos` (
  `id_ambito` int(11) NOT NULL,
  `descripcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnosticos`
--

CREATE TABLE `diagnosticos` (
  `cod_cie10` bigint(8) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formula_medica`
--

CREATE TABLE `formula_medica` (
  `id_formu` int(11) NOT NULL,
  `documen_usuario` bigint(10) NOT NULL,
  `cod_medicamento` int(11) NOT NULL,
  `cod_cie10` int(11) NOT NULL,
  `descri_medi` int(11) NOT NULL,
  `cantidad_med` int(11) NOT NULL,
  `dosis` int(11) NOT NULL,
  `consentracion` int(11) NOT NULL,
  `tiempo_trata` int(11) NOT NULL,
  `cant_total` int(11) NOT NULL,
  `cod_cup` int(11) NOT NULL,
  `descripcion_servicio` int(11) NOT NULL,
  `fecha_expe` int(11) NOT NULL,
  `fecha_cadu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `cod_med` int(11) NOT NULL,
  `descripcion_med` int(11) NOT NULL,
  `concentracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `id_med` int(5) NOT NULL,
  `Nombres` varchar(50) COLLATE utf8_bin NOT NULL,
  `Apellidos` varchar(50) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(10) COLLATE utf8_bin NOT NULL,
  `telefono` bigint(11) NOT NULL,
  `email` varchar(30) COLLATE utf8_bin NOT NULL,
  `password_me` varchar(20) COLLATE utf8_bin NOT NULL,
  `fecha_ingre` varchar(15) COLLATE utf8_bin NOT NULL,
  `especialidad` varchar(80) COLLATE utf8_bin NOT NULL,
  `foto` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`id_med`, `Nombres`, `Apellidos`, `sexo`, `telefono`, `email`, `password_me`, `fecha_ingre`, `especialidad`, `foto`) VALUES
(1, ' Estela Fernanda', 'Marcillo Perez', 'Femenino', 3172582555, 'estelam@gmail.com', '252526', '12/11/2011', 'Medicina Interna', NULL),
(2, 'Luisa Maria', 'Perez Puerres', 'Femenino', 3175857546, 'luisam25@hotmail.com', '141516', '12/11/1999', 'Psicologo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_usu` int(11) NOT NULL,
  `Nombres` varchar(30) COLLATE utf8_bin NOT NULL,
  `Apellidos` varchar(30) COLLATE utf8_bin NOT NULL,
  `documento_id` int(15) NOT NULL,
  `lugar_naci` varchar(30) COLLATE utf8_bin NOT NULL,
  `fecha_nac` varchar(15) COLLATE utf8_bin NOT NULL,
  `e.civil` varchar(15) COLLATE utf8_bin NOT NULL,
  `edad` int(3) NOT NULL,
  `ocupacion` varchar(50) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(15) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(15) COLLATE utf8_bin NOT NULL,
  `barrio` varchar(15) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(30) COLLATE utf8_bin NOT NULL,
  `telefono` int(11) NOT NULL,
  `estrato` int(1) NOT NULL,
  `gs-rh` int(5) NOT NULL,
  `acudiante` varchar(50) COLLATE utf8_bin NOT NULL,
  `telefono_acu` int(11) NOT NULL,
  `parenteco_acu` varchar(12) COLLATE utf8_bin NOT NULL,
  `regimen` varchar(12) COLLATE utf8_bin NOT NULL,
  `empresa` varchar(30) COLLATE utf8_bin NOT NULL,
  `etnia` varchar(20) COLLATE utf8_bin NOT NULL,
  `escolaridad` varchar(30) COLLATE utf8_bin NOT NULL,
  `eps` varchar(30) COLLATE utf8_bin NOT NULL,
  `discapacidad` varchar(50) COLLATE utf8_bin NOT NULL,
  `orientacion_sexual` varchar(20) COLLATE utf8_bin NOT NULL,
  `cond. vulnerabilidad` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `programa_social` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `hechos_victimizantes` varchar(30) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_usu`, `Nombres`, `Apellidos`, `documento_id`, `lugar_naci`, `fecha_nac`, `e.civil`, `edad`, `ocupacion`, `sexo`, `ciudad`, `barrio`, `direccion`, `telefono`, `estrato`, `gs-rh`, `acudiante`, `telefono_acu`, `parenteco_acu`, `regimen`, `empresa`, `etnia`, `escolaridad`, `eps`, `discapacidad`, `orientacion_sexual`, `cond. vulnerabilidad`, `programa_social`, `hechos_victimizantes`) VALUES
(1, 'Gerardo Samuel', 'Sanchez Puerres', 1085365654, 'pasto', '12/11/2012', 'soltero', 25, 'gerente', 'Masculino', 'Pasto', 'Esmeralda', 'cra 3 e 58-106', 317585858, 2, 0, 'Pedrito', 12345678, 'primo', 'Contributivo', 'todotor', 'indigena', 'Basica Primaria', 'Enssanar', 'nula', 'hererosexual', NULL, NULL, NULL),
(2, 'Maria Fernanda', 'Marcillo Perez', 1085365249, 'pasto', '25/11/2019', 'soltero', 26, 'SECRETARIA', 'Femenino', 'Pasto', 'ESMERALDA', 'cra 3 e 58-25', 317728252, 3, 2, 'PEDRO', 12345678, 'papà', 'Contributivo', 'emssanar', 'ninguna', 'profesional', 'cafe salud', 'ninguna', 'heterosexual', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambitos`
--
ALTER TABLE `ambitos`
  ADD PRIMARY KEY (`id_ambito`);

--
-- Indices de la tabla `formula_medica`
--
ALTER TABLE `formula_medica`
  ADD PRIMARY KEY (`id_formu`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`cod_med`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id_med`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambitos`
--
ALTER TABLE `ambitos`
  MODIFY `id_ambito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formula_medica`
--
ALTER TABLE `formula_medica`
  MODIFY `id_formu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `cod_med` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id_med` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
