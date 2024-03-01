-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2022 a las 10:42:23
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_ciber`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(6) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Running'),
(2, 'Fitness y ejercicio'),
(3, 'Ciclismo'),
(4, 'Tenis y pádel'),
(5, 'Golf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(6) NOT NULL,
  `categoria_id` int(6) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `url_foto` text NOT NULL,
  `n_opiniones` smallint(5) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `categoria_id`, `nombre`, `descripcion`, `precio`, `url_foto`, `n_opiniones`, `fecha`) VALUES
(1, 1, 'Calcetines de deporte ', 'Material: 76% algodón, 19% poliéster, 3% spandex, 2% poliamida. Lavado a máquina, 30 grados máximo.', '8.90', '41n80Kn-pYL._AC_UL260_SR200,260_.jpg', 32, '2021-11-12 23:11:39'),
(2, 1, 'Joma Iris Chaqueta', 'Material: 26% algodón, 49% poliéster, 3% spandex, 2% poliamida. Lavado a máquina, 60 grados máximo.', '12.95', '413rMGHrgVL._SY355_.jpg', 122, '2021-11-13 00:21:42'),
(3, 2, 'Banco de peso olímpico', 'Este banco se puede convertir la posición del asiento banco de abdominales inclinados\r\nLa altura es juego de mancuernas ajustables\r\nEl banco se puede plegar para ocupar lo menos posible durante el almacenamiento.', '70.40', '41Gmy5%2BU9EL._SY355_.jpg', 20, '2021-10-12 23:25:53'),
(4, 2, 'Pesa de 2Kg', 'Pesa de alta calidad, con acabado premium', '15.90', 'pesas_2KG.jpg', 0, '2022-01-13 10:49:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
