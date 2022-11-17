-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2022 a las 15:48:40
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `emp_transporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camiones`
--

CREATE TABLE `camiones` (
  `id_vehiculo` int(4) NOT NULL,
  `marca` varchar(15) NOT NULL,
  `placa` varchar(7) NOT NULL,
  `cap_carga` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `camiones`
--

INSERT INTO `camiones` (`id_vehiculo`, `marca`, `placa`, `cap_carga`) VALUES
(1, 'Foton', 'VHM-456', 1),
(2, 'Volvo', 'SDF-342', 2),
(3, 'HINO', 'STF-001', 2),
(4, 'Mercedes-Benz', 'GHY-386', 1),
(5, 'Foton', 'TTG-567', 3),
(6, 'Volvo', 'POI-566', 3),
(7, 'HINO', 'RFD-367', 1),
(8, 'Mercedes-Benz', 'JKL-071', 3),
(9, 'Ford', 'RTW-090', 1),
(10, 'Ford', 'HGD-400', 2),
(11, 'Mercedes-Benz', 'EDF-780', 1),
(12, 'Mercedes-Benz', 'GYJ-002', 1),
(13, 'Foton', 'QDE-890', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(3) NOT NULL,
  `des_ciudad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `des_ciudad`) VALUES
(1, 'Cali'),
(2, 'Medellin'),
(3, 'Bogota'),
(4, 'Cartagena'),
(5, 'Bucaramanga'),
(6, 'Armenia'),
(7, 'Pereira'),
(8, 'Cucuta'),
(9, 'Pasto'),
(10, 'Sincelejo'),
(11, 'Palmira'),
(12, 'Buenaventura'),
(13, 'Buga'),
(14, 'Villavicencio'),
(15, 'Barranquilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(5) NOT NULL,
  `nt_cliente` char(10) NOT NULL DEFAULT '0000000000',
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(25) NOT NULL,
  `telefono` char(10) NOT NULL DEFAULT '0000000000',
  `id_tipoId` int(2) NOT NULL,
  `id_ciudad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nt_cliente`, `nombre`, `direccion`, `telefono`, `id_tipoId`, `id_ciudad`) VALUES
(1, '9804578906', 'Calidad SAS', 'Calle 23 3-8', '3178907699', 1, 1),
(2, '8008765478', 'Pruebas SAS', 'Carrera 43 98-09', '3127898765', 1, 2),
(3, '9818767890', 'Dersa SAS', 'Calle 5 3n-23', '3129098789', 1, 3),
(4, '8906787654', 'Ritz SAS', 'Calle 34n 56-23', '3176589089', 1, 4),
(5, '9004568750', 'Admin SAS', 'Calle 2 32-12', '3168909089', 1, 5),
(6, '9006785309', 'Host SAS', 'Diagonal 23 4-56', '3156789875', 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(4) NOT NULL,
  `id_tipoId` int(2) NOT NULL,
  `nro_id` int(10) NOT NULL,
  `id_estado` int(1) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `edad` int(2) NOT NULL,
  `telefono` char(10) NOT NULL DEFAULT '0000000000',
  `fecha_ingreso` date NOT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `salario` int(30) NOT NULL,
  `id_vehiculo` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `id_tipoId`, `nro_id`, `id_estado`, `nombre`, `apellido`, `edad`, `telefono`, `fecha_ingreso`, `fecha_retiro`, `salario`, `id_vehiculo`) VALUES
(1, 2, 1143992445, 1, 'Julian', 'Fernandez', 33, '3126548987', '2022-09-05', NULL, 2000000, 1),
(2, 2, 23456789, 1, 'Daniel', 'Gomez', 35, '3156789876', '2022-03-01', NULL, 2500000, 2),
(3, 2, 1123990876, 2, 'Gabriel', 'Hurtado', 36, '3157861230', '2022-05-02', '2022-11-14', 2200000, 3),
(4, 2, 34234890, 2, 'Luis', 'Carvajal', 40, '3149097678', '2021-08-02', '2022-10-31', 3000000, 4),
(5, 2, 38765456, 1, 'Laura', 'Montenegro', 29, '3161234570', '2022-08-01', NULL, 3200000, 7),
(6, 2, 26543678, 1, 'Camilo', 'Muñoz', 39, '3218905679', '2022-01-03', NULL, 2500000, 5),
(7, 2, 1132909890, 1, 'Jorge', 'Ortega', 40, '3228908909', '2021-09-06', NULL, 2800000, 6),
(8, 2, 1123907345, 1, 'Mauricio', 'Corrales', 45, '3229098789', '2021-05-03', NULL, 4000000, 8),
(9, 2, 32890987, 1, 'Oscar', 'Trujillo', 33, '3228907640', '2022-03-01', NULL, 2100000, 9),
(10, 2, 98536789, 2, 'Daniela', 'Molina', 36, '3178902310', '2020-09-01', '2022-09-02', 3800000, 10),
(11, 2, 90987654, 1, 'Carolina', 'Ortega', 32, '3129087678', '2021-03-01', NULL, 3300000, 11),
(12, 2, 97345890, 1, 'Cristina', 'Jaramillo', 30, '3167898767', '2021-12-06', NULL, 3800000, 12),
(13, 2, 1123898678, 1, 'Marcos', 'Solano', 40, '3127890989', '2021-06-07', NULL, 3780000, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envio` int(5) NOT NULL,
  `peso` int(6) NOT NULL,
  `id_cliente` int(5) NOT NULL,
  `id_empleado` int(4) NOT NULL,
  `id_vehiculo` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envio`, `peso`, `id_cliente`, `id_empleado`, `id_vehiculo`) VALUES
(1, 2, 1, 2, 2),
(2, 1, 1, 1, 1),
(3, 3, 2, 5, 7),
(4, 2, 3, 10, 10),
(5, 3, 4, 7, 6),
(6, 2, 5, 3, 3),
(7, 1, 6, 4, 4),
(8, 3, 6, 6, 5),
(9, 3, 5, 8, 8),
(10, 1, 1, 9, 9),
(11, 1, 2, 11, 11),
(12, 1, 3, 12, 12),
(13, 2, 4, 13, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_empleado`
--

CREATE TABLE `estado_empleado` (
  `id_estado` int(1) NOT NULL,
  `tipo_estado` char(1) NOT NULL,
  `desc_estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado_empleado`
--

INSERT INTO `estado_empleado` (`id_estado`, `tipo_estado`, `desc_estado`) VALUES
(1, 'A', 'Activo'),
(2, 'R', 'Retirado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `id_factura` int(6) NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_llegada` date NOT NULL,
  `valor_envio` int(20) DEFAULT NULL,
  `id_cliente` int(5) NOT NULL,
  `id_envio` int(5) NOT NULL,
  `id_ciudad_o` int(3) NOT NULL,
  `id_ciudad_d` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`id_factura`, `fecha_salida`, `fecha_llegada`, `valor_envio`, `id_cliente`, `id_envio`, `id_ciudad_o`, `id_ciudad_d`) VALUES
(1, '2022-08-01', '2022-08-03', 2500000, 1, 1, 1, 2),
(2, '2022-10-03', '2022-10-07', 4400000, 1, 2, 2, 3),
(3, '2022-08-02', '2022-08-06', 5320000, 2, 3, 3, 4),
(4, '2020-09-02', '2020-09-07', 8000000, 3, 4, 4, 5),
(5, '2021-09-07', '2021-09-11', 5600000, 4, 5, 5, 12),
(6, '2022-05-03', '2022-05-04', 2200000, 5, 6, 12, 13),
(7, '2021-08-03', '2021-08-03', 1500000, 6, 7, 6, 7),
(8, '2022-01-04', '2022-01-08', 9000000, 6, 8, 7, 8),
(9, '2021-05-04', '2021-05-06', 4900000, 5, 9, 10, 3),
(10, '2022-03-02', '2022-03-03', 3200000, 1, 10, 12, 9),
(11, '2021-03-02', '2021-03-04', 4000000, 2, 11, 14, 15),
(12, '2021-12-07', '2021-12-07', 2000000, 3, 12, 7, 1),
(13, '2021-06-08', '2021-06-09', 3000000, 4, 13, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_identificacion`
--

CREATE TABLE `tipo_identificacion` (
  `id_tipoId` int(2) NOT NULL,
  `tipo_Id` varchar(2) NOT NULL,
  `des_tipoId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_identificacion`
--

INSERT INTO `tipo_identificacion` (`id_tipoId`, `tipo_Id`, `des_tipoId`) VALUES
(1, 'NT', 'Nit'),
(2, 'CC', 'Cédula de Ciudadanía');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camiones`
--
ALTER TABLE `camiones`
  ADD PRIMARY KEY (`id_vehiculo`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `FK_Clientes_TipoIdentificacion` (`id_tipoId`),
  ADD KEY `FK_Clientes_Ciudad` (`id_ciudad`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `FK_Empleados_TipoIdentificacion` (`id_tipoId`),
  ADD KEY `FK_Empleados_EstadoEmpleado` (`id_estado`),
  ADD KEY `FK_Empleados_Camiones` (`id_vehiculo`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envio`),
  ADD KEY `FK_Envios_Clientes` (`id_cliente`),
  ADD KEY `FK_Envios_Empleados` (`id_empleado`),
  ADD KEY `FK_Envios_Camiones` (`id_vehiculo`);

--
-- Indices de la tabla `estado_empleado`
--
ALTER TABLE `estado_empleado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `FK_Facturacion_Cliente` (`id_cliente`),
  ADD KEY `FK_Facturacion_Envio` (`id_envio`),
  ADD KEY `FK_Facturacion_Ciudad_O` (`id_ciudad_o`),
  ADD KEY `FK_Facturacion_Ciudad_D` (`id_ciudad_d`);

--
-- Indices de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  ADD PRIMARY KEY (`id_tipoId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camiones`
--
ALTER TABLE `camiones`
  MODIFY `id_vehiculo` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envio` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `estado_empleado`
--
ALTER TABLE `estado_empleado`
  MODIFY `id_estado` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `id_factura` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipo_identificacion`
--
ALTER TABLE `tipo_identificacion`
  MODIFY `id_tipoId` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `FK_Clientes_Ciudad` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Clientes_TipoIdentificacion` FOREIGN KEY (`id_tipoId`) REFERENCES `tipo_identificacion` (`id_tipoId`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `FK_Empleados_Camiones` FOREIGN KEY (`id_vehiculo`) REFERENCES `camiones` (`id_vehiculo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Empleados_EstadoEmpleado` FOREIGN KEY (`id_estado`) REFERENCES `estado_empleado` (`id_estado`),
  ADD CONSTRAINT `FK_Empleados_TipoIdentificacion` FOREIGN KEY (`id_tipoId`) REFERENCES `tipo_identificacion` (`id_tipoId`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `envios`
--
ALTER TABLE `envios`
  ADD CONSTRAINT `FK_Envios_Camiones` FOREIGN KEY (`id_vehiculo`) REFERENCES `camiones` (`id_vehiculo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Envios_Clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Envios_Empleados` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD CONSTRAINT `FK_Facturacion_Ciudad_D` FOREIGN KEY (`id_ciudad_d`) REFERENCES `ciudad` (`id_ciudad`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Facturacion_Ciudad_O` FOREIGN KEY (`id_ciudad_o`) REFERENCES `ciudad` (`id_ciudad`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Facturacion_Cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Facturacion_Envio` FOREIGN KEY (`id_envio`) REFERENCES `envios` (`id_envio`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
