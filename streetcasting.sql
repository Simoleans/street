-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2020 a las 05:39:02
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `streetcasting`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nextstation', NULL, 1, '2020-04-15 20:04:59', '2020-04-15 20:04:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencias`
--

CREATE TABLE `competencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `competencias`
--

INSERT INTO `competencias` (`id`, `nombre`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Competencia', '1', '2020-04-15 20:21:37', '2020-04-15 20:21:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `comuna` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id`, `region_id`, `comuna`, `created_at`, `updated_at`) VALUES
(1, 1, 'ALTO HOSPICIO', NULL, NULL),
(2, 1, 'CAMIÑA', NULL, NULL),
(3, 1, 'COLCHANE', NULL, NULL),
(4, 1, 'IQUIQUE', NULL, NULL),
(5, 1, 'HUARA', NULL, NULL),
(6, 1, 'PICA', NULL, NULL),
(7, 1, 'POZO ALMONTE', NULL, NULL),
(8, 2, 'ANTOFAGASTA', NULL, NULL),
(9, 2, 'MARÍA ELENA', NULL, NULL),
(10, 2, 'SIERRA GORDA', NULL, NULL),
(11, 2, 'TALTAL', NULL, NULL),
(12, 2, 'CALAMA', NULL, NULL),
(13, 2, 'OLLAGÜE', NULL, NULL),
(14, 2, 'SAN PEDRO DE ATACAMA', NULL, NULL),
(15, 2, 'MEJILLONES', NULL, NULL),
(16, 2, 'TOCOPILLA', NULL, NULL),
(17, 3, 'CALDERA', NULL, NULL),
(18, 3, 'CHAÑARAL', NULL, NULL),
(19, 3, 'COPIAPÓ', NULL, NULL),
(20, 3, 'DIEGO DE ALMAGRO', NULL, NULL),
(21, 3, 'TIERRA AMARILLA', NULL, NULL),
(22, 3, 'ALTO DEL CARMEN', NULL, NULL),
(23, 3, 'FREIRINA', NULL, NULL),
(24, 3, 'HUASCO', NULL, NULL),
(25, 3, 'VALLENAR', NULL, NULL),
(26, 4, 'CANELA', NULL, NULL),
(27, 4, 'ILLAPEL', NULL, NULL),
(28, 4, 'LOS VILOS', NULL, NULL),
(29, 4, 'SALAMANCA', NULL, NULL),
(30, 4, 'ANDACOLLO', NULL, NULL),
(31, 4, 'COQUIMBO', NULL, NULL),
(32, 4, 'LA HIGUERA', NULL, NULL),
(33, 4, 'LA SERENA', NULL, NULL),
(34, 4, 'PAIHUANO', NULL, NULL),
(35, 4, 'VICUÑA', NULL, NULL),
(36, 4, 'COMBARBALÁ', NULL, NULL),
(37, 4, 'MONTE PATRIA', NULL, NULL),
(38, 4, 'OVALLE', NULL, NULL),
(39, 4, 'PUNITAQUI', NULL, NULL),
(40, 4, 'RÍO HURTADO', NULL, NULL),
(41, 5, 'CALLE LARGA', NULL, NULL),
(42, 5, 'LOS ANDES', NULL, NULL),
(43, 5, 'RINCONADA', NULL, NULL),
(44, 5, 'SAN ESTEBAN', NULL, NULL),
(45, 5, 'CABILDO', NULL, NULL),
(46, 5, 'LA LIGUA', NULL, NULL),
(47, 5, 'PAPUDO', NULL, NULL),
(48, 5, 'PETORCA', NULL, NULL),
(49, 5, 'ZAPALLAR', NULL, NULL),
(50, 5, 'HIJUELAS', NULL, NULL),
(51, 5, 'LA CALERA', NULL, NULL),
(52, 5, 'LA CRUZ', NULL, NULL),
(53, 5, 'LIMCHE', NULL, NULL),
(54, 5, 'NOGALES', NULL, NULL),
(55, 5, 'OLMUÉ', NULL, NULL),
(56, 5, 'PUCHUNCAVÍ', NULL, NULL),
(57, 5, 'QUILLOTA', NULL, NULL),
(58, 5, 'ALGARROBO', NULL, NULL),
(59, 5, 'CARTAGENA', NULL, NULL),
(60, 5, 'EL QUISCO', NULL, NULL),
(61, 5, 'EL TABO', NULL, NULL),
(62, 5, 'SAN ANTONIO', NULL, NULL),
(63, 5, 'SANTO DOMINGO', NULL, NULL),
(64, 5, 'CATEMU', NULL, NULL),
(65, 5, 'LLAY LLAY', NULL, NULL),
(66, 5, 'PANQUEHUE', NULL, NULL),
(67, 5, 'PUTAENDO', NULL, NULL),
(68, 5, 'SAN FELIPE', NULL, NULL),
(69, 5, 'SANTA MARIA', NULL, NULL),
(70, 5, 'CASABLANCA', NULL, NULL),
(71, 5, 'CONCÓN', NULL, NULL),
(72, 5, 'JUAN FERNANDEZ', NULL, NULL),
(73, 5, 'QUILPUÉ', NULL, NULL),
(74, 5, 'VALPARAÍSO', NULL, NULL),
(75, 5, 'VILLA ALEMANA', NULL, NULL),
(76, 5, 'VIÑA DEL MAR', NULL, NULL),
(77, 6, 'CODEGUA', NULL, NULL),
(78, 6, 'COINCO', NULL, NULL),
(79, 6, 'COLTAUCO', NULL, NULL),
(80, 6, 'DOÑIHUE', NULL, NULL),
(81, 6, 'GRANEROS', NULL, NULL),
(82, 6, 'MACHALÍ', NULL, NULL),
(83, 6, 'OLIVAR', NULL, NULL),
(84, 6, 'RANCAGUA', NULL, NULL),
(85, 6, 'RENGO', NULL, NULL),
(86, 6, 'REQUINOA', NULL, NULL),
(87, 6, 'SAN FRANCISCO DE MOSTAZAL', NULL, NULL),
(88, 6, 'CHIMBARONGO', NULL, NULL),
(89, 6, 'NANCAGUA', NULL, NULL),
(90, 6, 'PLACILLA', NULL, NULL),
(91, 6, 'SAN FERNANDO', NULL, NULL),
(92, 6, 'LAS CABRAS', NULL, NULL),
(93, 6, 'MALLOA', NULL, NULL),
(94, 6, 'PEUMO', NULL, NULL),
(95, 6, 'PICHIDEGUA', NULL, NULL),
(96, 6, 'QUINTA DE TILCOCO', NULL, NULL),
(97, 6, 'SAN VICENTE', NULL, NULL),
(98, 6, 'CHÉPICA', NULL, NULL),
(99, 6, 'LITUECHE', NULL, NULL),
(100, 6, 'LOLOL', NULL, NULL),
(101, 6, 'MARCHIGUE', NULL, NULL),
(102, 6, 'NAVIDAD', NULL, NULL),
(103, 6, 'PALMILLA', NULL, NULL),
(104, 6, 'PAREDONES', NULL, NULL),
(105, 6, 'PERALILLO', NULL, NULL),
(106, 6, 'PICHILEMU', NULL, NULL),
(107, 6, 'PUMANQUE', NULL, NULL),
(108, 6, 'RAPEL-LA ESTRELLA', NULL, NULL),
(109, 6, 'SANTA CRUZ', NULL, NULL),
(110, 7, 'CAUQUENES', NULL, NULL),
(111, 7, 'CHANCO', NULL, NULL),
(112, 7, 'PELLUHUE', NULL, NULL),
(113, 7, 'CURICÓ', NULL, NULL),
(114, 7, 'HUALAÑÉ', NULL, NULL),
(115, 7, 'LICANTÉN', NULL, NULL),
(116, 7, 'MOLINA', NULL, NULL),
(117, 7, 'ROMERAL', NULL, NULL),
(118, 7, 'SAGRADA FAMILIA', NULL, NULL),
(119, 7, 'TENO', NULL, NULL),
(120, 7, 'VICHUQUÉN', NULL, NULL),
(121, 7, 'COLBÚN', NULL, NULL),
(122, 7, 'LINARES', NULL, NULL),
(123, 7, 'LONGAVÍ', NULL, NULL),
(124, 7, 'SAN JAVIER', NULL, NULL),
(125, 7, 'VILLA ALEGRE', NULL, NULL),
(126, 7, 'YERBAS BUENAS', NULL, NULL),
(127, 7, 'PARRAL', NULL, NULL),
(128, 7, 'RETIRO', NULL, NULL),
(129, 7, 'CONSTITUCIÓN', NULL, NULL),
(130, 7, 'CUREPTO', NULL, NULL),
(131, 7, 'EMPEDRADO', NULL, NULL),
(132, 7, 'MAULE', NULL, NULL),
(133, 7, 'PELARCO', NULL, NULL),
(134, 7, 'PENCAHUE', NULL, NULL),
(135, 7, 'RIO CLARO', NULL, NULL),
(136, 7, 'SAN CLEMENTE', NULL, NULL),
(137, 7, 'SAN RAFAEL', NULL, NULL),
(138, 7, 'TALCA', NULL, NULL),
(139, 8, 'ARAUCO', NULL, NULL),
(140, 8, 'CAÑETE', NULL, NULL),
(141, 8, 'CONTULMO', NULL, NULL),
(142, 8, 'CURANILAHUE', NULL, NULL),
(143, 8, 'LEBU', NULL, NULL),
(144, 8, 'LOS ALAMOS', NULL, NULL),
(145, 8, 'TIRUA', NULL, NULL),
(146, 8, 'CHIGUAYANTE', NULL, NULL),
(147, 8, 'CONCEPCIÓN', NULL, NULL),
(148, 8, 'CORONEL', NULL, NULL),
(149, 8, 'FLORIDA', NULL, NULL),
(150, 8, 'HUALPÉN', NULL, NULL),
(151, 8, 'HUALQUI', NULL, NULL),
(152, 8, 'LOTA', NULL, NULL),
(153, 8, 'PENCO', NULL, NULL),
(154, 8, 'SAN PEDRO DE LA PAZ', NULL, NULL),
(155, 8, 'SANTA JUANA', NULL, NULL),
(156, 8, 'TALCAHUANO', NULL, NULL),
(157, 8, 'TOMÉ', NULL, NULL),
(158, 8, 'ANTUCO', NULL, NULL),
(159, 8, 'CABRERO', NULL, NULL),
(160, 8, 'LAJA', NULL, NULL),
(161, 8, 'LOS ANGELES', NULL, NULL),
(162, 8, 'QUILLECO', NULL, NULL),
(163, 8, 'SAN ROSENDO', NULL, NULL),
(164, 8, 'TUCAPEL', NULL, NULL),
(165, 8, 'YUMBEL', NULL, NULL),
(166, 8, 'ALTO BÍO BÍO', NULL, NULL),
(167, 8, 'MULCHÉN', NULL, NULL),
(168, 8, 'NACIMIENTO', NULL, NULL),
(169, 8, 'NEGRETE', NULL, NULL),
(170, 8, 'QUILACO', NULL, NULL),
(171, 8, 'SANTA BÁRBARA', NULL, NULL),
(172, 9, 'ANGOL', NULL, NULL),
(173, 9, 'COLLIPULLI', NULL, NULL),
(174, 9, 'ERCILLA', NULL, NULL),
(175, 9, 'LOS SAUCES', NULL, NULL),
(176, 9, 'LUMACO', NULL, NULL),
(177, 9, 'PURÉN', NULL, NULL),
(178, 9, 'REINACO', NULL, NULL),
(179, 9, 'CARAHUE', NULL, NULL),
(180, 9, 'CHOLCHOL', NULL, NULL),
(181, 9, 'NUEVA IMPERIAL', NULL, NULL),
(182, 9, 'PUERTO SAAVEDRA', NULL, NULL),
(183, 9, 'TEODORO SCHMIDT', NULL, NULL),
(184, 9, ' TOLTÉN', NULL, NULL),
(185, 9, 'CUNCO', NULL, NULL),
(186, 9, 'FREIRE', NULL, NULL),
(187, 9, 'GALVARINO', NULL, NULL),
(188, 9, 'LAUTARO', NULL, NULL),
(189, 9, 'MELIPEUCO', NULL, NULL),
(190, 9, 'PADRE DE LAS CASAS', NULL, NULL),
(191, 9, 'PERQUENCO', NULL, NULL),
(192, 9, 'TEMUCO', NULL, NULL),
(193, 9, 'VILCÚN', NULL, NULL),
(194, 9, 'CURACAUTÍN', NULL, NULL),
(195, 9, 'LONQUIMAY', NULL, NULL),
(196, 9, 'TRAIGUÉN', NULL, NULL),
(197, 9, 'VICTORIA', NULL, NULL),
(198, 9, 'CURARREHUE', NULL, NULL),
(199, 9, 'GORBEA', NULL, NULL),
(200, 9, 'LONCOCHE', NULL, NULL),
(201, 9, 'PITRUFQUÉN', NULL, NULL),
(202, 9, 'PUCÓN', NULL, NULL),
(203, 9, 'VILLARRICA', NULL, NULL),
(204, 10, 'ANCUD', NULL, NULL),
(205, 10, 'QUEMCHI', NULL, NULL),
(206, 10, 'CASTRO', NULL, NULL),
(207, 10, 'CHONCHI', NULL, NULL),
(208, 10, 'CURACO DE VELEZ', NULL, NULL),
(209, 10, 'DALCAHUE', NULL, NULL),
(210, 10, 'PUQUELDÓN', NULL, NULL),
(211, 10, 'QUEILÉN', NULL, NULL),
(212, 10, 'QUELLÓN', NULL, NULL),
(213, 10, 'QUINCHAO', NULL, NULL),
(214, 10, 'OSORNO', NULL, NULL),
(215, 10, 'PUYEHUE', NULL, NULL),
(216, 10, 'SAN JUAN DE LA COSTA', NULL, NULL),
(217, 10, 'SAN PABLO', NULL, NULL),
(218, 10, 'CHAITÉN', NULL, NULL),
(219, 10, 'FUTALEUFÚ', NULL, NULL),
(220, 10, 'PALENA', NULL, NULL),
(221, 10, 'COCHAMÓ', NULL, NULL),
(222, 10, 'HUALAIHUÉ', NULL, NULL),
(223, 10, 'LOS MUERMOS', NULL, NULL),
(224, 10, 'MAULLÍN', NULL, NULL),
(225, 10, 'PUERTO MONTT', NULL, NULL),
(226, 10, 'FRESIA', NULL, NULL),
(227, 10, 'FRUTILLAR', NULL, NULL),
(228, 10, 'LLANQUIHUE', NULL, NULL),
(229, 10, 'PUERTO VARAS', NULL, NULL),
(230, 10, 'PUERTO OCTAY', NULL, NULL),
(231, 10, 'PURRANQUE', NULL, NULL),
(232, 10, 'RÍO NEGRO', NULL, NULL),
(233, 11, 'CHILE CHICO', NULL, NULL),
(234, 11, 'RÍO IBÁÑEZ', NULL, NULL),
(235, 11, 'COCHRANE', NULL, NULL),
(236, 11, 'O\'HIGGINS', NULL, NULL),
(237, 11, 'TORTEL', NULL, NULL),
(238, 11, 'COYHAIQUE', NULL, NULL),
(239, 11, 'LAGO VERDE', NULL, NULL),
(240, 11, 'AYSÉN', NULL, NULL),
(241, 11, 'CISNES', NULL, NULL),
(242, 11, 'GUAITECAS', NULL, NULL),
(243, 12, 'ANTÁRTICA', NULL, NULL),
(244, 12, 'CABO DE HORNOS', NULL, NULL),
(245, 12, 'LAGUNA BLANCA', NULL, NULL),
(246, 12, 'PUNTA ARENAS', NULL, NULL),
(247, 12, 'RÍO VERDE', NULL, NULL),
(248, 12, 'SAN GREGORIO', NULL, NULL),
(249, 12, 'PORVENIR', NULL, NULL),
(250, 12, 'PRIMAVERA', NULL, NULL),
(251, 12, 'TIMAUKEL', NULL, NULL),
(252, 12, 'NATALES', NULL, NULL),
(253, 12, 'TORRES DEL PAINE', NULL, NULL),
(254, 13, 'CERRILLOS', NULL, NULL),
(255, 13, 'CERRO', NULL, NULL),
(256, 13, 'NAVIA', NULL, NULL),
(257, 13, 'COLINA', NULL, NULL),
(258, 13, 'CONCHALÍ', NULL, NULL),
(259, 13, 'ESTACIÓN', NULL, NULL),
(260, 13, 'CENTRAL', NULL, NULL),
(261, 13, 'HUECHURABA', NULL, NULL),
(262, 13, 'INDEPENDENCIA', NULL, NULL),
(263, 13, 'LA CISTERNA', NULL, NULL),
(264, 13, 'LA FLORIDA', NULL, NULL),
(265, 13, 'LA GRANJA', NULL, NULL),
(266, 13, 'LA REINA', NULL, NULL),
(267, 13, 'LAMPA', NULL, NULL),
(268, 13, 'LAS CONDES', NULL, NULL),
(269, 13, 'LO BARNECHEA', NULL, NULL),
(270, 13, 'LO ESPEJO', NULL, NULL),
(271, 13, 'LO PRADO', NULL, NULL),
(272, 13, 'MACUL', NULL, NULL),
(273, 13, 'MAIPÚ', NULL, NULL),
(274, 13, 'PAINE', NULL, NULL),
(275, 13, 'PEDRO', NULL, NULL),
(276, 13, 'AGUIRRE', NULL, NULL),
(277, 13, 'CERDA', NULL, NULL),
(278, 13, 'PEÑALOLÉN', NULL, NULL),
(279, 13, 'PROVIDENCIA', NULL, NULL),
(280, 13, 'PUDAHUEL', NULL, NULL),
(281, 13, 'QUILICURA', NULL, NULL),
(282, 13, 'QUINTA', NULL, NULL),
(283, 13, 'NORMAL', NULL, NULL),
(284, 13, 'RECOLETA', NULL, NULL),
(285, 13, 'RENCA', NULL, NULL),
(286, 13, 'SAN JOAQUÍN', NULL, NULL),
(287, 13, 'SAN MIGUEL', NULL, NULL),
(288, 13, 'SAN RAMÓN', NULL, NULL),
(289, 13, 'SANTIAGO', NULL, NULL),
(290, 13, 'TIL TIL', NULL, NULL),
(291, 13, 'VITACURA', NULL, NULL),
(292, 13, 'ÑUÑOA', NULL, NULL),
(293, 13, 'BUIN', NULL, NULL),
(294, 13, 'CALERA DE TANGO', NULL, NULL),
(295, 13, 'EL BOSQUE', NULL, NULL),
(296, 13, 'LA PINTANA', NULL, NULL),
(297, 13, 'PAINE', NULL, NULL),
(298, 13, 'PIRQUE', NULL, NULL),
(299, 13, 'PUENTE ALTO', NULL, NULL),
(300, 13, 'SAN BERNARDO', NULL, NULL),
(301, 13, 'SAN JOSE DE MAIPO', NULL, NULL),
(302, 13, 'ALHUÉ', NULL, NULL),
(303, 13, 'CURACAVÍ', NULL, NULL),
(304, 13, 'MARIA PINTO', NULL, NULL),
(305, 13, 'MELIPILLA', NULL, NULL),
(306, 13, 'SAN PEDRO', NULL, NULL),
(307, 13, 'EL MONTE', NULL, NULL),
(308, 13, 'ISLA DE MAIPO', NULL, NULL),
(309, 13, 'PADRE HURTADO', NULL, NULL),
(310, 13, 'PEÑAFLOR', NULL, NULL),
(311, 13, 'TALAGANTE', NULL, NULL),
(312, 14, 'FUTRONO', NULL, NULL),
(313, 14, 'PAILLACO', NULL, NULL),
(314, 14, 'LA UNIÓN', NULL, NULL),
(315, 14, 'LAGO RANCO', NULL, NULL),
(316, 14, 'RÍO BUENO', NULL, NULL),
(317, 14, 'CORRAL', NULL, NULL),
(318, 14, 'MAFIL', NULL, NULL),
(319, 14, 'MARIQUINA', NULL, NULL),
(320, 14, 'VALDIVIA', NULL, NULL),
(321, 14, 'PANGUIPULLI', NULL, NULL),
(322, 14, 'LANCO', NULL, NULL),
(323, 15, 'ARICA', NULL, NULL),
(324, 15, 'CAMARONES', NULL, NULL),
(325, 15, 'GENERAL LAGOS', NULL, NULL),
(326, 15, 'PUTRE', NULL, NULL),
(327, 16, 'EL CARMEN', NULL, NULL),
(328, 16, 'PEMUCO', NULL, NULL),
(329, 16, 'QUILLÓN', NULL, NULL),
(330, 16, 'RANQUIL', NULL, NULL),
(331, 16, 'SAN IGNACIO', NULL, NULL),
(332, 16, 'YUNGAY', NULL, NULL),
(333, 16, 'CHILLÁN', NULL, NULL),
(334, 16, 'CHILLÁN VIEJO', NULL, NULL),
(335, 16, 'COIHUECO', NULL, NULL),
(336, 16, 'PINTO', NULL, NULL),
(337, 16, 'PORTEZUELO', NULL, NULL),
(338, 16, 'COBQUECURA', NULL, NULL),
(339, 16, 'COELEMU', NULL, NULL),
(340, 16, 'NINHUE', NULL, NULL),
(341, 16, 'QUIRIHUE', NULL, NULL),
(342, 16, 'SAN FABIÁN', NULL, NULL),
(343, 16, 'SAN NICOLÁS', NULL, NULL),
(344, 16, 'TREHUACO', NULL, NULL),
(345, 16, 'ÑIQUÉN', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatorias`
--

CREATE TABLE `convocatorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `convocatorias`
--

INSERT INTO `convocatorias` (`id`, `titulo`, `fecha`, `client_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TEST Convocatoria', '05-04-2020', 1, 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_metas`
--

CREATE TABLE `convocatoria_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `convocatoria_id` int(10) UNSIGNED NOT NULL,
  `meta_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `convocatoria_metas`
--

INSERT INTO `convocatoria_metas` (`id`, `convocatoria_id`, `meta_value`, `meta_key`, `status`, `created_at`, `updated_at`, `meta_id`) VALUES
(1, 1, '1', 'productora_id', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 23),
(2, 1, '16-04-2020', 'fecha_prueba', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 24),
(3, 1, '18-04-2020', 'fecha_callback', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 25),
(4, 1, '16-04-2020', 'fecha_ensayo', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 26),
(5, 1, '5', 'duracion', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 27),
(6, 1, '1', 'medio', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 28),
(7, 1, '1', 'nacionalidad', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 29),
(8, 1, 'N', 'tipo', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 30),
(9, 1, 'Prueba', 'producto', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 31),
(10, 1, '23-04-2020', 'dia_casting', 1, '2020-04-15 20:22:12', '2020-04-15 20:22:12', 32),
(11, 1, '40000', 'presupuesto', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13', 33),
(12, 1, 'Av Manquehue Sur 520, Las Condes', 'direccion', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13', 34),
(13, 1, '6', 'region', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13', 35),
(14, 1, '81', 'comuna', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13', 36),
(15, 1, '1', 'competencia', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13', 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_papels`
--

CREATE TABLE `convocatoria_papels` (
  `id` int(10) UNSIGNED NOT NULL,
  `convocatoria_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `convocatoria_papels`
--

INSERT INTO `convocatoria_papels` (`id`, `convocatoria_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rol 1', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_papel_metas`
--

CREATE TABLE `convocatoria_papel_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_id` int(10) UNSIGNED DEFAULT NULL,
  `convocatoria_papel_id` int(10) UNSIGNED NOT NULL,
  `meta_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `convocatoria_papel_metas`
--

INSERT INTO `convocatoria_papel_metas` (`id`, `meta_id`, `convocatoria_papel_id`, `meta_value`, `meta_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 38, 1, 'Rol 1', 'nombre_rol', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13'),
(2, 39, 1, 'Descricpion', 'descripcion_rol', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13'),
(3, 40, 1, '37', 'edad_hasta', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13'),
(4, 41, 1, '30', 'edad_desde', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13'),
(5, 42, 1, 'M', 'sexo', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13'),
(6, 43, 1, '10000', 'presupuesto_papel', 1, '2020-04-15 20:22:13', '2020-04-15 20:22:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_users`
--

CREATE TABLE `convocatoria_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `convocatoria_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `papel` int(10) UNSIGNED DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `confirmation` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_user_pagos`
--

CREATE TABLE `convocatoria_user_pagos` (
  `id` int(10) UNSIGNED NOT NULL,
  `convocatoria_user_id` int(10) UNSIGNED NOT NULL,
  `monto` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE `idiomas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idioma` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`id`, `idioma`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Español', '1', '2020-01-22 18:59:51', '2020-01-22 18:59:51'),
(2, 'Francés', '1', '2020-01-22 19:28:29', '2020-01-22 19:28:29'),
(3, 'Ingles', '1', '2020-01-22 19:28:44', '2020-01-22 19:28:44'),
(4, 'Exclusividad para Chile', '1', '2020-01-29 17:25:03', '2020-01-29 17:25:03'),
(5, 'Alemán', '1', '2020-02-03 18:46:17', '2020-02-03 18:46:17'),
(6, 'Tenis', '1', '2020-03-24 18:38:52', '2020-03-24 18:38:52'),
(7, 'Portugues', '1', '2020-03-24 20:06:28', '2020-03-24 20:06:28'),
(8, 'Alemán', '1', '2020-04-14 19:38:50', '2020-04-14 19:38:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` double(8,2) NOT NULL DEFAULT 0.00,
  `auth_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `title`, `path`, `size`, `auth_by`, `created_at`, `updated_at`) VALUES
(1, 'Patricia-Lobos Rosales', 'images/users/pezcxFDBZWrDEQWTicZ8WB1abCyPGkRZzUB7wxkc.png', 75504.00, 2, '2020-01-22 19:12:12', '2020-01-22 19:12:12'),
(2, 'Herminia-Riera de Tepper', 'images/users/dbsm1vHhs6q07GdEPU8XQXqUo5SktDrt3LYS7Y2x.png', 90674.00, 2, '2020-01-22 19:24:22', '2020-01-22 19:24:22'),
(3, 'Lisson-Rousseaux', 'images/users/IHSaTyCRVwHsu3Tvg1uGVeurtAv1NSpq5vjK4BGB.png', 99647.00, 2, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(4, 'Ana Maria-Salazar Bastidas', 'images/users/86vGa25oOrimmpROolZU72uzHqrMtwgVgiaYEOrd.png', 151057.00, 2, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(5, 'Rosa-Rebolledo Leon', 'images/users/yIKoRO8R1AaiuAOhUcS31B04Hj6KE7Z11Deb1GJ2.png', 180633.00, 2, '2020-01-22 19:57:27', '2020-01-22 19:57:27'),
(6, 'MARÍA ELENA-ORELLANA', 'images/users/pozAnRvhHWPbZfZ3sQaXVLQZP9dxygrDUfoz0N9x.png', 88954.00, 2, '2020-01-31 19:59:32', '2020-01-31 19:59:32'),
(7, 'MARÍA SOFIA-Kritzler', 'images/users/2mE2V68zk2MEVhCaiup8r5HGB6SrK2mH6faEZFOR.png', 71427.00, 2, '2020-01-31 20:02:12', '2020-01-31 20:02:12'),
(8, 'SONIA-VENEGAS', 'images/users/F5Dk1nOWgtIrvalD0gKtJhfwBMJyyH9S7wB7qQaq.png', 87973.00, 2, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(9, 'EMA-PEREZ', 'images/users/enqDMjTryCoXup4DGykv6cSS8RrZZ4eNcsVOKwt0.png', 88955.00, 2, '2020-01-31 20:08:58', '2020-01-31 20:08:58'),
(10, 'MAGALY-Bohringer Bustos', 'images/users/LFSchGTlUndB5GAh61zx9zPnjf8bWgz7Ihm2k9JR.png', 88899.00, 2, '2020-01-31 20:11:06', '2020-01-31 20:11:06'),
(11, 'Consuelo-Prieto', 'images/users/o1923R59USVyMRQvO4nbXz60b0sc3eu3iOErF77v.png', 78569.00, 2, '2020-01-31 20:17:09', '2020-01-31 20:17:09'),
(12, 'Patricia Cecilia del Carmen-Silva Ibarra', 'images/users/hY2ggfLgFG4wbxQLEP7pWKb7FHrenHzas43eEH91.png', 66983.00, 2, '2020-01-31 20:20:36', '2020-01-31 20:20:36'),
(13, 'Varinia-Eluani Alamos', 'images/users/WQjRfsQOIJk6i6zag1VHq1zqYCOss7PMaLJbmMXg.png', 93502.00, 2, '2020-01-31 20:22:32', '2020-01-31 20:22:32'),
(14, 'Carmen-Arce Muñoz', 'images/users/nDHLLUkilSLqTl8gA6614RF182W7lAoMKbOXEVn0.png', 89810.00, 2, '2020-01-31 20:24:48', '2020-01-31 20:24:48'),
(15, 'Marta Virginia-Arellano Aguilar', 'images/users/Zpq1ZwTtcJaG7BlGOrNlElTE4iAzyhAXrF9XpLYr.png', 97770.00, 2, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(16, 'Laura-Caracci Lagos', 'images/users/xYNtKiIlwiNnJPZN7hREq9j4x89PRYVCJ2P4vFuY.png', 112266.00, 2, '2020-01-31 20:32:54', '2020-01-31 20:32:54'),
(17, 'iris-Iglesias', 'images/users/l51mLIvcP7U9vI1jRbel3RRCZp5Dbibv6EQsqXvF.png', 78144.00, 2, '2020-01-31 20:41:03', '2020-01-31 20:41:03'),
(18, 'Pedro-Lobos', 'images/users/NSgffAa03GeReeslSJW0utoU5yPZmafARldyiTpT.png', 77475.00, 2, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(19, 'Horacio-Guzman', 'images/users/lMWSGiRyRn2x9vY158TEETgepClmTr4vTNpehS9U.png', 90413.00, 2, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(20, 'Daniel-Rojas Hernandez', 'images/users/7Z25hT0jncAVUwJYOiZRIG2cL05N5RNXxW2BlUsn.png', 257838.00, 2, '2020-01-31 20:55:12', '2020-01-31 20:55:12'),
(21, 'Juan-Schechner Esplej', 'images/users/HG87MN8UEifBW3pnAwY1M0dG6m6logmmdzXbsLIB.png', 95471.00, 2, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(22, 'MANUEL-CRUZ', 'images/users/ROkONJVZjsMLatw0T75KUSsEd82XaZoC1gi67mI4.png', 113089.00, 2, '2020-01-31 21:03:23', '2020-01-31 21:03:23'),
(23, 'Camila-Cuevas Contreras', 'images/users/9WAFw9ZVkMxFYdzp1jUsgWshMwkG5ctqJSoA7zKA.png', 176002.00, 2, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(24, 'Daniela Paz-Hughes Figueroa ', 'images/users/V9hCApnglmsMSVtLQ3vNasy0bU4NTE1JOxJoBYpH.png', 138559.00, 2, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(25, 'Dannae-Flores Aguirre', 'images/users/E75j75gfjkTPy0ng0fMj3HyYS71HFUAjMxfFFpkv.png', 159486.00, 2, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(26, 'Florencia-Arriagada', 'images/users/8LJVE8XJGvX9CUGnc4zz4Z77QwLREEUJMR7dj9vA.png', 142253.00, 2, '2020-03-24 18:52:30', '2020-03-24 18:52:30'),
(27, 'ines-Donoso', 'images/users/cp7jJ2tPib9PkXFYSiR6G4HLdXGTzHvqHd68ZmSn.png', 169443.00, 2, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(28, 'Javiera-Sandoval', 'images/users/QQFTbaxwkU15wZ066pv1rd78RpUivE7S0K24H36P.png', 140626.00, 2, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(29, 'JULIET-GUERRA SÁNCHEZ', 'images/users/U1654kSuTUaJfs2sEjA3hVLx4tsVtxosI0cV4Nmm.png', 110662.00, 2, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(30, 'Laura-Espinoza Rangel', 'images/users/szWW76VRGam8xkGhdgKnw8Rp1IN4HVcndzAxJPiN.png', 191025.00, 2, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(31, 'LINDA-VALENZUELA', 'images/users/eV8IHJJalJUjMrAPNLyYTGKAcK08dO1OoslGqDYY.png', 109609.00, 2, '2020-03-24 19:24:25', '2020-03-24 19:24:25'),
(32, 'María José-Carpio Jara', 'images/users/BLGRoXzd04RZZZu9MtLJO2QYsyys7AbqdNb4Z95K.png', 124481.00, 2, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(33, 'María Verónica-Noguera Pérez', 'images/users/IOYILs9P37X1KrlhwLyH2qsh8O7g7x2JaOH89KO5.png', 126532.00, 2, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(34, 'Benjamin-Gallo', 'images/users/rwI4dHsaW8nTaUpHH21RGOvZrLjxAWBFzhwKHOTQ.png', 108795.00, 2, '2020-03-24 19:42:48', '2020-03-24 19:42:48'),
(35, 'Carlos Manuel-Simón ', 'images/users/jwv7bGGpfKfKjd4HNNdZ92y1yyMmcvZ7ICPY97d2.png', 125722.00, 2, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(36, 'Cristobal-Campos', 'images/users/yVqRLrbtshXhMB5baQjMdHVx0ighfEIgLAbStKo0.png', 155934.00, 2, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(37, 'Dante-Ruiz Lepiante', 'images/users/dgdyGAV5jHenw04OEGonvz6NXUDF0T2sGWUbUlo5.png', 126916.00, 2, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(38, 'Francisco Antonio-Diaz Tapia', 'images/users/J8wdfNXdHMFozmGcFEqk82aHDEe5Ni1HM8X79cJF.png', 130247.00, 2, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(39, 'Joaquin-Rodriguez', 'images/users/UbzbjGloNoNPHR7DtTVAzY6elW2YMGwurP0dAQF9.png', 108180.00, 2, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(40, 'Kaio-SILVA', 'images/users/JHHwzdgqaEhbYl482uoBL9B2bqVS0RhdvyuFZFwA.png', 141281.00, 2, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(41, 'Anibal-Gonzalez Lobos', 'images/users/6CoUPXxouGH3DJvYCo39K1s5bmLFXrRjM1b3nxri.png', 126965.00, 2, '2020-03-24 20:15:54', '2020-03-24 20:15:54'),
(42, 'CRISTIAN JUAN-CORONADO GARRIDO', 'images/users/UBjxqGwPwKawAVmkfXdvkfYAyCNW8uh3RCjzEwlm.png', 119700.00, 2, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(43, 'Dennis  (Denny)-Yulis', 'images/users/EK8YD1cMB6i44898a5BUBfYV2yH2XzHNd2teQOxn.png', 127036.00, 2, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(44, 'Elio-Moniz', 'images/users/Tm8vEW6zar5BudikakEBltTd8Vuo2W957VlvhX6D.png', 124707.00, 2, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(45, 'Jaime-Godoy', 'images/users/wK8EjVdYV5g7sNU01K92HYKfUVWgAnWW4P1TuoMM.png', 145880.00, 2, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(46, 'JONATHAN-BAYS', 'images/users/dqzllh5BgaHaRpnp1JJwg3HkHGhtqW0iL4oCSB38.png', 132212.00, 2, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(47, 'Nicolas-Rosales Alcayaga', 'images/users/O3tPVCXEaM2fzfqYiGjzWpZu1ET818KOj0a4GUDx.png', 116041.00, 2, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(48, 'Catalina-Leon', 'images/users/KLM2cIE5eaPidJkM1rJxX1Xe4TgieKVRnjg4V9Vm.png', 164424.00, 2, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(49, 'Paz-Vallejos', 'images/users/n6LEFTB7qEO8mNcQPyabzpu48I75PoBcZWod2Ocm.png', 181063.00, 2, '2020-04-14 20:11:47', '2020-04-14 20:11:47'),
(50, 'Rossana-Malchuk', 'images/users/TAhJguhNtokIksFAn09I2PaJM5TEJeR8dXm6k4z4.png', 169710.00, 2, '2020-04-14 20:18:25', '2020-04-14 20:18:25'),
(51, 'Sofia-Pennaroli', 'images/users/3Zpxt2L4jvUsEBZt8aUZjL85BnsuuQTWYd3K3no7.png', 169684.00, 2, '2020-04-14 20:26:18', '2020-04-14 20:26:18'),
(52, 'Ximena-Cifuentes', 'images/users/61LVoWdJQwEPe5bqL4YVLdiE1WahH6yZtoIMRmne.png', 149134.00, 2, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(53, 'Antonia-Haeger', 'images/users/lOV05pfVlTwxXgLKXbMZsoOWQqySDeWonN09xeFP.png', 155382.00, 2, '2020-04-14 20:40:03', '2020-04-14 20:40:03'),
(54, 'JAVIER-MARCERANO', 'images/users/BpwnviYvdG23IhsDODSV66QMULWGvjXMTQr6HcBb.png', 165096.00, 2, '2020-04-14 20:46:19', '2020-04-14 20:46:19'),
(55, 'Alexandra-Muñoz', 'images/users/LqRZyOwMrHapkb0RmKvp6AgrIpssCA1AGkJI2ate.png', 139322.00, 2, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(56, 'Catalina-Silva', 'images/users/734cKEa2NTXGgKo3UGsPZG05uQxCx1a0xbJs6fia.png', 120571.00, 2, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(57, 'Daniella Victoria-Dekowic Herrera', 'images/users/GD3hCr4spSuRIrRq5N8SwCnx7NeS6KQFCBwjQ0bx.png', 118696.00, 2, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(58, 'Maria Francisca-Armstrong Silva', 'images/users/ioYIjEQead2gLQjpTy3ZMggM9FMWq4oLHTIJjNzx.png', 141054.00, 2, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(59, 'Grace Eugenia-Espinoza Henriquez', 'images/users/kO08CXzUIMSw4AeUY3Yqpyb0g1VLlQXVgZaGTzgL.png', 163542.00, 2, '2020-04-14 21:13:34', '2020-04-14 21:13:34'),
(60, 'Isidora-Flores Abarca', 'images/users/eGBx3WbhQ5MUQtevZ3BNsUGgQkQ3a6qORSoNcM4X.png', 158546.00, 2, '2020-04-14 21:17:21', '2020-04-14 21:17:21'),
(61, 'Paula Soledad-Cespedes Sanchez', 'images/users/la4M1I6bUNZjjr6NJ3IF9DBPiZRKqdQrGZyVIdKM.png', 196889.00, 2, '2020-04-14 21:21:49', '2020-04-14 21:21:49'),
(62, 'Seyon-Ko Kim', 'images/users/9u4MlxyMXzN4cDXb9Q2fZVQ89WoLLJao1qbXhV2q.png', 137267.00, 2, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(63, 'Thiara Denisse-Cid Chevecich', 'images/users/TU2lNf34ypF4W5LkQicKaUgQ2FdSwSWtBVQf6bIS.png', 109110.00, 2, '2020-04-14 21:35:38', '2020-04-14 21:35:38'),
(64, 'Valentina-Leiva Alba', 'images/users/ildYnZHXt3eGPBGn2ik89oP8qZYUbJOGBexy8QUq.png', 131546.00, 2, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(65, 'Albert Manuel-guan zhang', 'images/users/NUE3XqcWN8czGM8gSQ4yrDj7S1HZWfy6cM31o1Gh.png', 96586.00, 2, '2020-04-14 21:48:33', '2020-04-14 21:48:33'),
(66, 'Benjamin-Denk', 'images/users/8KdNccEc9LIeATy3ELkktAy1ycX8s1rEz1ibymgM.png', 184075.00, 2, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(67, 'Branco Italo-Tognarelli Thomas', 'images/users/6t9CkBwRLF1dCe27Iv4zPrSiIfPCsOpuIciQZFJ0.png', 95863.00, 2, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(68, 'Christopher-Vasquez Casanelli', 'images/users/FaPpmHoT8DVvVOyisEEuJ6KMiRWIogATO2bW0xB1.png', 132561.00, 2, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(69, 'DIEGO-SILVA', 'images/users/Xn2MOfkUoErYOHQSpK8e97bSUhfhKcPTeM59W2Jv.png', 143065.00, 2, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(70, 'Felipe Ignacio-Martinez San Martin', 'images/users/uwI9NnpvWcBr5DUvngdIc8J3THHsax2M31R6omQp.png', 162072.00, 2, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(71, 'Ismael-Castellon', 'images/users/q7QYzxfzMApK8ReUbtXm37w4NiFk654Qrn5t78RQ.png', 105080.00, 2, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(72, 'Jason-Kang', 'images/users/aKWlnAHAxA5pfjCNanxvOhO67r2FFIaBJdvaUz7B.png', 164842.00, 2, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(73, 'Jaasiel Isai-Hernandez Colmenares', 'images/users/2kE4jx3RZnsB5oKixYcJ9gR1DFy3PfHoWDTbHfvF.png', 105483.00, 2, '2020-04-14 22:29:46', '2020-04-14 22:29:46'),
(74, 'Leonardo-Bastias', 'images/users/pazCZSQ9bssJ3tPwTbU386vf67KUSjJ2B7vGBjSn.png', 123505.00, 2, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(75, 'Lucas-Pamplona', 'images/users/aQRWMPAshk7rN6ZVIfkR65NjtYxEOh9LLaIskE0J.png', 130535.00, 2, '2020-04-14 22:46:34', '2020-04-14 22:46:34'),
(76, 'Carlos-Poblete', 'images/users/YdbYHtVs4GyujaEUhnhbx7SjU1NE3r382d4KcH3g.png', 115793.00, 2, '2020-04-14 22:49:21', '2020-04-14 22:49:21'),
(77, 'Dagoberto Javier-Espinosa Castillo', 'images/users/rUC7F5knWLhIgJPURcpJi6ko9p1T5PlHizHYbZ76.png', 152167.00, 2, '2020-04-14 22:53:57', '2020-04-14 22:53:57'),
(78, 'Francisco-Merino', 'images/users/sExgS2Mh8V2fv1h0c6pLxS3MrQPjq5fobPvSCsGL.png', 122060.00, 2, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(79, 'Felipe-von der Forst', 'images/users/C74E6j4KKdUEiuQa9Dct3Gomtd68nIkRtKJ7tFgQ.png', 85569.00, 2, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(80, 'Herminia-Riera de Tepper', 'images/users/Lg7ZIU8KCqx7x3swxiDdO4W3tJjPeGpslVfbvZdz.jpeg', 110894.00, 1, '2020-04-20 07:16:47', '2020-04-20 07:16:47'),
(81, 'Kaka-Kaka', 'images/users/gmVmuuZlDFXNKmtvDv566WD0HjJXs1x91DjV7kl1.jpeg', 29441.00, 1, '2020-04-20 07:19:13', '2020-04-20 07:19:13'),
(82, 'Kaka-KAka', 'images/users/xcM4LajWOgwS9AAxXmGE5kXhbY2zWUemm3sjcZji.jpeg', 29441.00, 1, '2020-04-20 07:23:01', '2020-04-20 07:23:01'),
(83, 'Kaka-KAka', 'images/users/d02o5T60CNEZMKdl8yklpxjy4MCUV7v2eXexdCsM.jpeg', 29441.00, 1, '2020-04-20 07:24:05', '2020-04-20 07:24:05'),
(84, 'Kaka-KAka', 'images/users/N4RPMLlmnKpdi1zw6txJr83hrOFzOFOcRNidnCTH.jpeg', 29441.00, 1, '2020-04-20 07:25:59', '2020-04-20 07:25:59'),
(85, 'Kaka-KAka', 'images/users/m67eQtarrhA7I5DN6YICS8V4vEWXH3jhyLo16s2t.jpeg', 29441.00, 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(86, 'Kaka-KAka', 'images/users/2UMPD5k6PoZpeBbjEei9LRduFbRlaD0BlNCIsdlZ.jpeg', 29441.00, 1, '2020-04-20 07:33:55', '2020-04-20 07:33:55'),
(87, 'Kaka-KAka', 'images/users/zy3p941SDREAfoZQeXamXKbORUt3WVXEyEgBSE93.jpeg', 29441.00, 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(88, 'Kaka-KAka', 'images/users/pXOri0MAhonsLXe2SBwprPXaXXBbC7ELEL4yKeeA.jpeg', 29441.00, 1, '2020-04-20 07:36:47', '2020-04-20 07:36:47'),
(89, 'Kaka-KAka', 'images/users/EWN8i5UcvMI8M9NaphxwRQUsW8vvthNUK9ScFz9R.jpeg', 29441.00, 1, '2020-04-20 07:37:39', '2020-04-20 07:37:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios`
--

CREATE TABLE `medios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `medios`
--

INSERT INTO `medios` (`id`, `nombre`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Redes Sociales', '1', '2020-04-15 20:21:28', '2020-04-15 20:21:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tabla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metas`
--

INSERT INTO `metas` (`id`, `tabla`, `meta_key`, `descripcion`) VALUES
(1, 'user', 'rut', NULL),
(2, 'user', 'fecha_nac', NULL),
(3, 'user', 'nacionalidad', NULL),
(4, 'user', 'region', NULL),
(5, 'user', 'comuna', NULL),
(6, 'user', 'direccion', NULL),
(7, 'user', 'telefono', NULL),
(8, 'user', 'facebook', NULL),
(9, 'user', 'instagram', NULL),
(10, 'user', 'calzado', NULL),
(11, 'user', 'altura', NULL),
(12, 'user', 'pantalon', NULL),
(13, 'user', 'camisa', NULL),
(14, 'user', 'notas', NULL),
(15, 'user', 'derechos', NULL),
(16, 'user', 'comerciales', NULL),
(17, 'user', 'avatar', NULL),
(18, 'user', 'idiomas', NULL),
(19, 'user', 'ocio', NULL),
(20, 'user', 'ocupacion', NULL),
(21, 'user', 'sexo', NULL),
(22, 'user', 'genero', NULL),
(23, 'convocatoria', 'productora_id', NULL),
(24, 'convocatoria', 'fecha_prueba', NULL),
(25, 'convocatoria', 'fecha_callback', NULL),
(26, 'convocatoria', 'fecha_ensayo', NULL),
(27, 'convocatoria', 'duracion', NULL),
(28, 'convocatoria', 'medio', NULL),
(29, 'convocatoria', 'nacionalidad', NULL),
(30, 'convocatoria', 'tipo', NULL),
(31, 'convocatoria', 'producto', NULL),
(32, 'convocatoria', 'dia_casting', NULL),
(33, 'convocatoria', 'presupuesto', NULL),
(34, 'convocatoria', 'direccion', NULL),
(35, 'convocatoria', 'region', NULL),
(36, 'convocatoria', 'comuna', NULL),
(37, 'convocatoria', 'competencia', NULL),
(38, 'convocatoria_papels', 'nombre_rol', NULL),
(39, 'convocatoria_papels', 'descripcion_rol', NULL),
(40, 'convocatoria_papels', 'edad_hasta', NULL),
(41, 'convocatoria_papels', 'edad_desde', NULL),
(42, 'convocatoria_papels', 'sexo', NULL),
(43, 'convocatoria_papels', 'presupuesto_papel', NULL),
(48, 'idiomas', '87', NULL),
(49, 'idiomas', '89', NULL),
(50, 'idiomas', '91', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_11_18_183158_nacionalidad', 1),
(2, '2014_11_28_125629_create_images_table', 1),
(3, '2014_11_28_160218_create_ocupacions_table', 1),
(4, '2015_10_12_013441_create_regiones_table', 1),
(5, '2015_10_13_104605_create_comunas_table', 1),
(6, '2019_01_01_000000_create_metas_table', 1),
(7, '2019_01_11_000000_create_user_rols_table', 1),
(8, '2019_01_12_000000_create_users_table', 1),
(9, '2019_01_13_000000_create_user_metas_table', 1),
(10, '2019_01_14_000000_create_password_resets_table', 1),
(11, '2019_02_11_000000_create_clients_table', 1),
(12, '2019_02_12_000000_create_notifications_table', 1),
(13, '2019_02_13_000000_create_notification_tipos_table', 1),
(14, '2019_04_01_000000_create_convocatorias_table', 1),
(15, '2019_04_02_000000_create_convocatoria_metas_table', 1),
(16, '2019_04_11_000000_create_convocatoria_papels_table', 1),
(17, '2019_04_12_000000_create_convocatoria_papel_metas_table', 1),
(18, '2019_04_21_000000_create_convocatoria_users_table', 1),
(19, '2019_04_22_000000_create_convocatoria_user_pagos_table', 1),
(20, '2019_09_27_000507_create_notices_table', 1),
(21, '2019_11_18_212422_create_idiomas_table', 1),
(22, '2019_11_18_212653_create_ocios_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 2),
(24, '2020_02_03_231713_create_productoras_table', 2),
(25, '2020_02_03_235906_create_medios_table', 2),
(26, '2020_02_04_002506_create_territorios_table', 2),
(27, '2020_02_04_003641_create_competencias_table', 2),
(28, '2020_02_10_184917_add_metaid_convocatoria', 2),
(30, '2020_02_12_212529_add_status_cargos', 3),
(32, '2020_03_25_190531_add_status_tables', 4),
(33, '2020_04_07_165314_add_metaid_convocatoria_papel', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PAIS_NAC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GENTILICIO_NAC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISO_NAC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`id`, `PAIS_NAC`, `GENTILICIO_NAC`, `ISO_NAC`, `created_at`, `updated_at`) VALUES
(1, 'Afganistán', 'AFGANA', 'AFG', NULL, NULL),
(2, 'Albania', 'ALBANESA', 'ALB', NULL, NULL),
(3, 'Alemania', 'ALEMANA', 'DEU', NULL, NULL),
(4, 'Andorra', 'ANDORRANA', 'AND', NULL, NULL),
(5, 'Angola', 'ANGOLEÑA', 'AGO', NULL, NULL),
(6, 'AntiguayBarbuda', 'ANTIGUANA', 'ATG', NULL, NULL),
(7, 'ArabiaSaudita', 'SAUDÍ', 'SAU', NULL, NULL),
(8, 'Argelia', 'ARGELINA', 'DZA', NULL, NULL),
(9, 'Argentina', 'ARGENTINA', 'ARG', NULL, NULL),
(10, 'Armenia', 'ARMENIA', 'ARM', NULL, NULL),
(11, 'Aruba', 'ARUBEÑA', 'ABW', NULL, NULL),
(12, 'Australia', 'AUSTRALIANA', 'AUS', NULL, NULL),
(13, 'Austria', 'AUSTRIACA', 'AUT', NULL, NULL),
(14, 'Azerbaiyán', 'AZERBAIYANA', 'AZE', NULL, NULL),
(15, 'Bahamas', 'BAHAMEÑA', 'BHS', NULL, NULL),
(16, 'Bangladés', 'BANGLADESÍ', 'BGD', NULL, NULL),
(17, 'Barbados', 'BARBADENSE', 'BRB', NULL, NULL),
(18, 'Baréin', 'BAREINÍ', 'BHR', NULL, NULL),
(19, 'Bélgica', 'BELGA', 'BEL', NULL, NULL),
(20, 'Belice', 'BELICEÑA', 'BLZ', NULL, NULL),
(21, 'Benín', 'BENINÉSA', 'BEN', NULL, NULL),
(22, 'Bielorrusia', 'BIELORRUSA', 'BLR', NULL, NULL),
(23, 'Birmania', 'BIRMANA', 'MMR', NULL, NULL),
(24, 'Bolivia', 'BOLIVIANA', 'BOL', NULL, NULL),
(25, 'BosniayHerzegovina', 'BOSNIA', 'BIH', NULL, NULL),
(26, 'Botsuana', 'BOTSUANA', 'BWA', NULL, NULL),
(27, 'Brasil', 'BRASILEÑA', 'BRA', NULL, NULL),
(28, 'Brunéi', 'BRUNEANA', 'BRN', NULL, NULL),
(29, 'Bulgaria', 'BÚLGARA', 'BGR', NULL, NULL),
(30, 'BurkinaFaso', 'BURKINÉS', 'BFA', NULL, NULL),
(31, 'Burundi', 'BURUNDÉSA', 'BDI', NULL, NULL),
(32, 'Bután', 'BUTANÉSA', 'BTN', NULL, NULL),
(33, 'CaboVerde', 'CABOVERDIANA', 'CPV', NULL, NULL),
(34, 'Camboya', 'CAMBOYANA', 'KHM', NULL, NULL),
(35, 'Camerún', 'CAMERUNESA', 'CMR', NULL, NULL),
(36, 'Canadá', 'CANADIENSE', 'CAN', NULL, NULL),
(37, 'Catar', 'CATARÍ', 'QAT', NULL, NULL),
(38, 'Chad', 'CHADIANA', 'TCD', NULL, NULL),
(39, 'Chile', 'CHILENA', 'CHL', NULL, NULL),
(40, 'China', 'CHINA', 'CHN', NULL, NULL),
(41, 'Chipre', 'CHIPRIOTA', 'CYP', NULL, NULL),
(42, 'CiudaddelVaticano', 'VATICANA', 'VAT', NULL, NULL),
(43, 'Colombia', 'COLOMBIANA', 'COL', NULL, NULL),
(44, 'Comoras', 'COMORENSE', 'COM', NULL, NULL),
(45, 'CoreadelNorte', 'NORCOREANA', 'PRK', NULL, NULL),
(46, 'CoreadelSur', 'SURCOREANA', 'KOR', NULL, NULL),
(47, 'CostadeMarfil', 'MARFILEÑA', 'CIV', NULL, NULL),
(48, 'CostaRica', 'COSTARRICENSE', 'CRI', NULL, NULL),
(49, 'Croacia', 'CROATA', 'HRV', NULL, NULL),
(50, 'Cuba', 'CUBANA', 'CUB', NULL, NULL),
(51, 'Dinamarca', 'DANÉSA', 'DNK', NULL, NULL),
(52, 'Dominica', 'DOMINIQUÉS', 'DMA', NULL, NULL),
(53, 'Ecuador', 'ECUATORIANA', 'ECU', NULL, NULL),
(54, 'Egipto', 'EGIPCIA', 'EGY', NULL, NULL),
(55, 'ElSalvador', 'SALVADOREÑA', 'SLV', NULL, NULL),
(56, 'EmiratosÁrabesUnidos', 'EMIRATÍ', 'ARE', NULL, NULL),
(57, 'Eritrea', 'ERITREA', 'ERI', NULL, NULL),
(58, 'Eslovaquia', 'ESLOVACA', 'SVK', NULL, NULL),
(59, 'Eslovenia', 'ESLOVENA', 'SVN', NULL, NULL),
(60, 'España', 'ESPAÑOLA', 'ESP', NULL, NULL),
(61, 'EstadosUnidos', 'ESTADOUNIDENSE', 'USA', NULL, NULL),
(62, 'Estonia', 'ESTONIA', 'EST', NULL, NULL),
(63, 'Etiopía', 'ETÍOPE', 'ETH', NULL, NULL),
(64, 'Filipinas', 'FILIPINA', 'PHL', NULL, NULL),
(65, 'Finlandia', 'FINLANDÉSA', 'FIN', NULL, NULL),
(66, 'Fiyi', 'FIYIANA', 'FJI', NULL, NULL),
(67, 'Francia', 'FRANCÉSA', 'FRA', NULL, NULL),
(68, 'Gabón', 'GABONÉSA', 'GAB', NULL, NULL),
(69, 'Gambia', 'GAMBIANA', 'GMB', NULL, NULL),
(70, 'Georgia', 'GEORGIANA', 'GEO', NULL, NULL),
(71, 'Gibraltar', 'GIBRALTAREÑA', 'GIB', NULL, NULL),
(72, 'Ghana', 'GHANÉSA', 'GHA', NULL, NULL),
(73, 'Granada', 'GRANADINA', 'GRD', NULL, NULL),
(74, 'Grecia', 'GRIEGA', 'GRC', NULL, NULL),
(75, 'Groenlandia', 'GROENLANDÉSA', 'GRL', NULL, NULL),
(76, 'Guatemala', 'GUATEMALTECA', 'GTM', NULL, NULL),
(77, 'Guineaecuatorial', 'ECUATOGUINEANA', 'GNQ', NULL, NULL),
(78, 'Guinea', 'GUINEANA', 'GIN', NULL, NULL),
(79, 'Guinea-Bisáu', 'GUINEANA', 'GNB', NULL, NULL),
(80, 'Guyana', 'GUYANESA', 'GUY', NULL, NULL),
(81, 'Haití', 'HAITIANA', 'HTI', NULL, NULL),
(82, 'Honduras', 'HONDUREÑA', 'HND', NULL, NULL),
(83, 'Hungría', 'HÚNGARA', 'HUN', NULL, NULL),
(84, 'India', 'HINDÚ', 'IND', NULL, NULL),
(85, 'Indonesia', 'INDONESIA', 'IDN', NULL, NULL),
(86, 'Irak', 'IRAQUÍ', 'IRQ', NULL, NULL),
(87, 'Irán', 'IRANÍ', 'IRN', NULL, NULL),
(88, 'Irlanda', 'IRLANDÉSA', 'IRL', NULL, NULL),
(89, 'Islandia', 'ISLANDÉSA', 'ISL', NULL, NULL),
(90, 'IslasCook', 'COOKIANA', 'COK', NULL, NULL),
(91, 'IslasMarshall', 'MARSHALÉSA', 'MHL', NULL, NULL),
(92, 'IslasSalomón', 'SALOMONENSE', 'SLB', NULL, NULL),
(93, 'Israel', 'ISRAELÍ', 'ISR', NULL, NULL),
(94, 'Italia', 'ITALIANA', 'ITA', NULL, NULL),
(95, 'Jamaica', 'JAMAIQUINA', 'JAM', NULL, NULL),
(96, 'Japón', 'JAPONÉSA', 'JPN', NULL, NULL),
(97, 'Jordania', 'JORDANA', 'JOR', NULL, NULL),
(98, 'Kazajistán', 'KAZAJA', 'KAZ', NULL, NULL),
(99, 'Kenia', 'KENIATA', 'KEN', NULL, NULL),
(100, 'Kirguistán', 'KIRGUISA', 'KGZ', NULL, NULL),
(101, 'Kiribati', 'KIRIBATIANA', 'KIR', NULL, NULL),
(102, 'Kuwait', 'KUWAITÍ', 'KWT', NULL, NULL),
(103, 'Laos', 'LAOSIANA', 'LAO', NULL, NULL),
(104, 'Lesoto', 'LESOTENSE', 'LSO', NULL, NULL),
(105, 'Letonia', 'LETÓNA', 'LVA', NULL, NULL),
(106, 'Líbano', 'LIBANÉSA', 'LBN', NULL, NULL),
(107, 'Liberia', 'LIBERIANA', 'LBR', NULL, NULL),
(108, 'Libia', 'LIBIA', 'LBY', NULL, NULL),
(109, 'Liechtenstein', 'LIECHTENSTEINIANA', 'LIE', NULL, NULL),
(110, 'Lituania', 'LITUANA', 'LTU', NULL, NULL),
(111, 'Luxemburgo', 'LUXEMBURGUÉSA', 'LUX', NULL, NULL),
(112, 'Madagascar', 'MALGACHE', 'MDG', NULL, NULL),
(113, 'Malasia', 'MALASIA', 'MYS', NULL, NULL),
(114, 'Malaui', 'MALAUÍ', 'MWI', NULL, NULL),
(115, 'Maldivas', 'MALDIVA', 'MDV', NULL, NULL),
(116, 'Malí', 'MALIENSE', 'MLI', NULL, NULL),
(117, 'Malta', 'MALTÉSA', 'MLT', NULL, NULL),
(118, 'Marruecos', 'MARROQUÍ', 'MAR', NULL, NULL),
(119, 'Martinica', 'MARTINIQUÉS', 'MTQ', NULL, NULL),
(120, 'Mauricio', 'MAURICIANA', 'MUS', NULL, NULL),
(121, 'Mauritania', 'MAURITANA', 'MRT', NULL, NULL),
(122, 'México', 'MEXICANA', 'MEX', NULL, NULL),
(123, 'Micronesia', 'MICRONESIA', 'FSM', NULL, NULL),
(124, 'Moldavia', 'MOLDAVA', 'MDA', NULL, NULL),
(125, 'Mónaco', 'MONEGASCA', 'MCO', NULL, NULL),
(126, 'Mongolia', 'MONGOLA', 'MNG', NULL, NULL),
(127, 'Montenegro', 'MONTENEGRINA', 'MNE', NULL, NULL),
(128, 'Mozambique', 'MOZAMBIQUEÑA', 'MOZ', NULL, NULL),
(129, 'Namibia', 'NAMIBIA', 'NAM', NULL, NULL),
(130, 'Nauru', 'NAURUANA', 'NRU', NULL, NULL),
(131, 'Nepal', 'NEPALÍ', 'NPL', NULL, NULL),
(132, 'Nicaragua', 'NICARAGÜENSE', 'NIC', NULL, NULL),
(133, 'Níger', 'NIGERINA', 'NER', NULL, NULL),
(134, 'Nigeria', 'NIGERIANA', 'NGA', NULL, NULL),
(135, 'Noruega', 'NORUEGA', 'NOR', NULL, NULL),
(136, 'NuevaZelanda', 'NEOZELANDÉSA', 'NZL', NULL, NULL),
(137, 'Omán', 'OMANÍ', 'OMN', NULL, NULL),
(138, 'PaísesBajos', 'NEERLANDÉSA', 'NLD', NULL, NULL),
(139, 'Pakistán', 'PAKISTANÍ', 'PAK', NULL, NULL),
(140, 'Palaos', 'PALAUANA', 'PLW', NULL, NULL),
(141, 'Palestina', 'PALESTINA', 'PSE', NULL, NULL),
(142, 'Panamá', 'PANAMEÑA', 'PAN', NULL, NULL),
(143, 'PapúaNuevaGuinea', 'PAPÚ', 'PNG', NULL, NULL),
(144, 'Paraguay', 'PARAGUAYA', 'PRY', NULL, NULL),
(145, 'Perú', 'PERUANA', 'PER', NULL, NULL),
(146, 'Polonia', 'POLACA', 'POL', NULL, NULL),
(147, 'Portugal', 'PORTUGUÉSA', 'PRT', NULL, NULL),
(148, 'PuertoRico', 'PUERTORRIQUEÑA', 'PRI', NULL, NULL),
(149, 'ReinoUnido', 'BRITÁNICA', 'GBR', NULL, NULL),
(150, 'RepúblicaCentroafricana', 'CENTROAFRICANA', 'CAF', NULL, NULL),
(151, 'RepúblicaCheca', 'CHECA', 'CZE', NULL, NULL),
(152, 'RepúblicadeMacedonia', 'MACEDONIA', 'MKD', NULL, NULL),
(153, 'RepúblicadelCongo', 'CONGOLEÑA', 'COG', NULL, NULL),
(154, 'RepúblicaDemocráticadelCongo', 'CONGOLEÑA', 'COD', NULL, NULL),
(155, 'RepúblicaDominicana', 'DOMINICANA', 'DOM', NULL, NULL),
(156, 'RepúblicaSudafricana', 'SUDAFRICANA', 'ZAF', NULL, NULL),
(157, 'Ruanda', 'RUANDÉSA', 'RWA', NULL, NULL),
(158, 'Rumanía', 'RUMANA', 'ROU', NULL, NULL),
(159, 'Rusia', 'RUSA', 'RUS', NULL, NULL),
(160, 'Samoa', 'SAMOANA', 'WSM', NULL, NULL),
(161, 'SanCristóbalyNieves', 'CRISTOBALEÑA', 'KNA', NULL, NULL),
(162, 'SanMarino', 'SANMARINENSE', 'SMR', NULL, NULL),
(163, 'SanVicenteylasGranadinas', 'SANVICENTINA', 'VCT', NULL, NULL),
(164, 'SantaLucía', 'SANTALUCENSE', 'LCA', NULL, NULL),
(165, 'SantoToméyPríncipe', 'SANTOTOMENSE', 'STP', NULL, NULL),
(166, 'Senegal', 'SENEGALÉSA', 'SEN', NULL, NULL),
(167, 'Serbia', 'SERBIA', 'SRB', NULL, NULL),
(168, 'Seychelles', 'SEYCHELLENSE', 'SYC', NULL, NULL),
(169, 'SierraLeona', 'SIERRALEONÉSA', 'SLE', NULL, NULL),
(170, 'Singapur', 'SINGAPURENSE', 'SGP', NULL, NULL),
(171, 'Siria', 'SIRIA', 'SYR', NULL, NULL),
(172, 'Somalia', 'SOMALÍ', 'SOM', NULL, NULL),
(173, 'SriLanka', 'CEILANÉSA', 'LKA', NULL, NULL),
(174, 'Suazilandia', 'SUAZI', 'SWZ', NULL, NULL),
(175, 'SudándelSur', 'SURSUDANÉSA', 'SSD', NULL, NULL),
(176, 'Sudán', 'SUDANÉSA', 'SDN', NULL, NULL),
(177, 'Suecia', 'SUECA', 'SWE', NULL, NULL),
(178, 'Suiza', 'SUIZA', 'CHE', NULL, NULL),
(179, 'Surinam', 'SURINAMESA', 'SUR', NULL, NULL),
(180, 'Tailandia', 'TAILANDÉSA', 'THA', NULL, NULL),
(181, 'Tanzania', 'TANZANA', 'TZA', NULL, NULL),
(182, 'Tayikistán', 'TAYIKA', 'TJK', NULL, NULL),
(183, 'TimorOriental', 'TIMORENSE', 'TLS', NULL, NULL),
(184, 'Togo', 'TOGOLÉSA', 'TGO', NULL, NULL),
(185, 'Tonga', 'TONGANA', 'TON', NULL, NULL),
(186, 'TrinidadyTobago', 'TRINITENSE', 'TTO', NULL, NULL),
(187, 'Túnez', 'TUNECINA', 'TUN', NULL, NULL),
(188, 'Turkmenistán', 'TURCOMANA', 'TKM', NULL, NULL),
(189, 'Turquía', 'TURCA', 'TUR', NULL, NULL),
(190, 'Tuvalu', 'TUVALUANA', 'TUV', NULL, NULL),
(191, 'Ucrania', 'UCRANIANA', 'UKR', NULL, NULL),
(192, 'Uganda', 'UGANDÉSA', 'UGA', NULL, NULL),
(193, 'Uruguay', 'URUGUAYA', 'URY', NULL, NULL),
(194, 'Uzbekistán', 'UZBEKA', 'UZB', NULL, NULL),
(195, 'Vanuatu', 'VANUATUENSE', 'VUT', NULL, NULL),
(196, 'Venezuela', 'VENEZOLANA', 'VEN', NULL, NULL),
(197, 'Vietnam', 'VIETNAMITA', 'VNM', NULL, NULL),
(198, 'Yemen', 'YEMENÍ', 'YEM', NULL, NULL),
(199, 'Yibuti', 'YIBUTIANA', 'DJI', NULL, NULL),
(200, 'Zambia', 'ZAMBIANA', 'ZMB', NULL, NULL),
(201, 'Zimbabue', 'ZIMBABUENSE', 'ZWE', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` smallint(6) NOT NULL DEFAULT 1,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_tipos`
--

CREATE TABLE `notification_tipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocios`
--

CREATE TABLE `ocios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ocio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ocios`
--

INSERT INTO `ocios` (`id`, `ocio`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bailar tango', '1', '2020-01-22 19:10:37', '2020-01-22 19:10:37'),
(2, 'Tai Chi', '1', '2020-01-22 19:16:14', '2020-01-22 19:16:14'),
(3, 'Chile Ocios', '1', '2020-01-29 17:24:12', '2020-03-25 18:35:26'),
(4, 'Bailar tango', '1', '2020-01-31 20:37:04', '2020-01-31 20:37:04'),
(5, 'Bailar Cueca', '1', '2020-01-31 20:44:15', '2020-01-31 20:44:15'),
(6, 'Baritono', '1', '2020-01-31 20:48:32', '2020-01-31 20:48:32'),
(7, 'Motoquero', '1', '2020-01-31 20:55:06', '2020-01-31 20:55:06'),
(8, 'Nadador', '1', '2020-01-31 21:03:03', '2020-01-31 21:03:03'),
(9, 'Tenis', '1', '2020-03-24 18:39:40', '2020-03-24 18:39:40'),
(10, 'running', '1', '2020-03-24 18:40:03', '2020-03-24 18:40:03'),
(11, 'Rollers street', '1', '2020-03-24 19:23:55', '2020-03-24 19:23:55'),
(12, 'Ciclismo', '1', '2020-03-24 20:21:10', '2020-03-24 20:21:10'),
(13, 'Trekking', '1', '2020-03-24 20:38:19', '2020-03-24 20:38:19'),
(14, 'Artes Marciales', '1', '2020-03-24 20:51:55', '2020-03-24 20:51:55'),
(15, 'Futbol', '1', '2020-04-14 19:28:42', '2020-04-14 19:28:42'),
(16, 'Voley', '1', '2020-04-14 19:29:14', '2020-04-14 19:29:14'),
(17, 'Bateria', '1', '2020-04-14 19:29:42', '2020-04-14 19:29:42'),
(18, 'Ski', '1', '2020-04-14 19:40:02', '2020-04-14 19:40:02'),
(19, 'Violín', '1', '2020-04-14 20:34:46', '2020-04-14 20:34:46'),
(20, 'Yoga', '1', '2020-04-14 20:35:26', '2020-04-14 20:35:26'),
(21, 'Guitarra', '1', '2020-04-14 20:35:49', '2020-04-14 20:35:49'),
(22, 'okis', '1', '2020-04-20 04:41:02', '2020-04-20 04:41:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacions`
--

CREATE TABLE `ocupacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ocupacions`
--

INSERT INTO `ocupacions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Dueña de casa', '2020-01-22 19:10:16', '2020-01-22 19:10:16'),
(2, 'Científica', '2020-01-22 19:15:35', '2020-01-22 19:15:35'),
(3, 'Relaciones Públicas', '2020-01-22 19:35:53', '2020-01-22 19:35:53'),
(4, 'Jubilado', '2020-01-31 20:37:54', '2020-01-31 20:37:54'),
(5, 'Actor', '2020-01-31 20:47:54', '2020-01-31 20:47:54'),
(6, 'Sociologo', '2020-02-06 18:09:51', '2020-02-06 18:09:51'),
(7, 'Profesor', '2020-02-06 18:10:12', '2020-02-06 18:10:12'),
(8, 'Bailarina', '2020-03-24 18:47:26', '2020-03-24 18:47:26'),
(9, 'Modelo', '2020-03-24 19:05:13', '2020-03-24 19:05:13'),
(10, 'Estudiante', '2020-03-24 19:13:05', '2020-03-24 19:13:05'),
(11, 'Actriz', '2020-03-24 19:27:24', '2020-03-24 19:27:24'),
(12, 'Bailarín', '2020-03-24 19:54:27', '2020-03-24 19:54:27'),
(13, 'Artista escénico circense', '2020-03-24 19:54:57', '2020-03-24 19:54:57'),
(14, 'Psicologo', '2020-03-24 20:25:21', '2020-03-24 20:25:21'),
(15, 'Tripulante de cabina', '2020-03-24 20:33:10', '2020-03-24 20:33:10'),
(16, 'Comunicador Social', '2020-04-14 19:27:06', '2020-04-14 19:27:06'),
(17, 'Kinisiologa', '2020-04-14 20:17:14', '2020-04-14 20:17:14'),
(18, 'Kinesiologa', '2020-04-14 20:17:50', '2020-04-14 20:17:50'),
(19, 'Ingeniero Comercial', '2020-04-14 20:25:42', '2020-04-14 20:25:42'),
(20, 'Médico', '2020-04-14 20:33:27', '2020-04-14 20:33:27'),
(21, 'Yoga', '2020-04-14 20:34:31', '2020-04-14 20:34:31'),
(22, 'Baterista', '2020-04-14 21:21:13', '2020-04-14 21:21:13'),
(23, 'Técnico en turismo', '2020-04-14 22:53:35', '2020-04-14 22:53:35'),
(24, 'Arquitecto', '2020-04-14 23:01:58', '2020-04-14 23:01:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoras`
--

CREATE TABLE `productoras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productoras`
--

INSERT INTO `productoras` (`id`, `nombre`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Productora Prueba', '1', '2020-04-15 20:21:07', '2020-04-15 20:21:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nacionalidad_id` bigint(20) UNSIGNED NOT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id`, `nacionalidad_id`, `region`, `created_at`, `updated_at`) VALUES
(1, 39, 'Tarapacá', NULL, NULL),
(2, 39, 'Antofagasta', NULL, NULL),
(3, 39, 'Atacama', NULL, NULL),
(4, 39, 'Coquimbo', NULL, NULL),
(5, 39, 'Valparaíso', NULL, NULL),
(6, 39, 'Libertador General Bernardo O\'Higgins', NULL, NULL),
(7, 39, 'Maule', NULL, NULL),
(8, 39, 'Bío-Bío', NULL, NULL),
(9, 39, 'Araucanía', NULL, NULL),
(10, 39, 'Los Lagos', NULL, NULL),
(11, 39, 'Aysén del General Carlos Ibañez del Campo', NULL, NULL),
(12, 39, 'Magallanes y de la Antártica Chilena', NULL, NULL),
(13, 39, 'Metropolitana de Santiago', NULL, NULL),
(14, 39, 'Los Ríos', NULL, NULL),
(15, 39, 'Arica y Parinacota', NULL, NULL),
(16, 39, 'Ñuble', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `territorios`
--

CREATE TABLE `territorios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `territorios`
--

INSERT INTO `territorios` (`id`, `nombre`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chile', '1', '2020-02-19 13:43:49', '2020-02-19 13:43:49'),
(2, 'Argentina', '1', '2020-02-19 13:43:58', '2020-02-19 13:43:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `auth_token` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `email_verified_at`, `password`, `rol_id`, `status`, `auth_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrator', 'admin@admin.com', NULL, '$2y$10$pgGcjKOEUJUwqilC90N4G.JSC.FfhIG87PmAm9.fH1BsSyCS//GQi', 1, 1, NULL, NULL, '2020-01-22 18:59:51', '2020-01-22 18:59:51'),
(2, 'Leo', 'Basso', 'leobassom@gmail.com', NULL, '$2y$10$pgGcjKOEUJUwqilC90N4G.JSC.FfhIG87PmAm9.fH1BsSyCS//GQi', 1, 1, NULL, NULL, '2020-01-22 18:59:51', '2020-01-22 18:59:51'),
(3, 'Vivi', 'Lobos', 'vivianalobos@gmail.com', NULL, '$2y$10$pgGcjKOEUJUwqilC90N4G.JSC.FfhIG87PmAm9.fH1BsSyCS//GQi', 1, 1, NULL, NULL, '2020-01-22 18:59:51', '2020-01-22 18:59:51'),
(4, 'Patricia', 'Lobos Rosales', 'rrojas@vtr.net', NULL, '$2y$10$mf2NKn7cgTDs65pru3dgleA/vJnCDY18i6X9sjKJH9Hs.xAipbf2O', 2, 1, NULL, NULL, '2020-01-22 19:12:12', '2020-04-20 06:17:09'),
(5, 'Herminia', 'Riera de Tepper', 'teppher@gmail.com', NULL, '$2y$10$ixnrm.btqfL5lSqjm9SVk.CyRQ501BRM7DfnOGsP30a6eo9PQxyVi', 2, 1, NULL, NULL, '2020-01-22 19:24:23', '2020-04-20 07:16:47'),
(6, 'Francisco', 'Hernandez', 'jeansonie@yahoo.com', NULL, '$2y$10$0nWhnNQRgpUXbXWZcdqn8OxYk9H0qvtMRH4lBwzEBTLq6ejulkeI2', 2, 1, NULL, NULL, '2020-01-22 19:31:07', '2020-04-20 06:45:16'),
(7, 'Ana Maria', 'Salazar Bastidas', 'anisalazarb@gmail.com', NULL, '$2y$10$7fetzwApN2bStPzPLlxIW.RVSHzDAM8WESyKfADtVXFC6qBy98wyW', 2, 1, NULL, NULL, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(8, 'Rosa', 'Rebolledo Leon', 'roin47@hotmail.com', NULL, '$2y$10$2b1mcMzHEqiSAsWkfIrALuz7x45qCgamGMRXbi9YUu.SGVm9KNz62', 2, 1, NULL, NULL, '2020-01-22 19:57:27', '2020-01-22 19:57:27'),
(9, 'MARÍA ELENA', 'ORELLANA', 'administracion@cmarka.cl', NULL, '$2y$10$9sEeDnM7RhfHn1ubU2wMJ.bi0OVr1JGDHv.ajcTyUduZJQGitwqCS', 2, 1, NULL, NULL, '2020-01-31 19:59:32', '2020-01-31 19:59:32'),
(10, 'MARÍA SOFIA', 'Kritzler', 'mariasofiakritzler@yahoo.com', NULL, '$2y$10$KKpWcBHV99OFbt6aDy3/auDiIKmrW16X35ew/RFCJIA8E3o9fZo5i', 2, 1, NULL, NULL, '2020-01-31 20:02:12', '2020-04-20 06:56:57'),
(11, 'SONIA', 'VENEGAS', 'Soniavene@gmsil.com', NULL, '$2y$10$SqMnJHNFT1tKLf7IFGnjru2Smml8G7mz8ddw1fBX52tlT2MeWP0kW', 2, 1, NULL, NULL, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(12, 'EMA', 'PEREZ', 'ecpm403@hotmail.com', NULL, '$2y$10$HQqJ.noHijjdKDwpbZWmQuAKlAQ5amFiLE.xtgnqjLkqzvAvoq9Xe', 2, 1, NULL, NULL, '2020-01-31 20:08:58', '2020-01-31 20:08:58'),
(13, 'MAGALY', 'Bohringer Bustos', 'margaritabistos@gmail.com', NULL, '$2y$10$iObOZm39lAa6q3ByIhm5Uupj9gdJiWpItVUQ18sSN4LSRaNSUBZe2', 2, 1, NULL, NULL, '2020-01-31 20:11:06', '2020-01-31 20:11:06'),
(14, 'Consuelo', 'Prieto', 'coteprieto@yahoo.com', NULL, '$2y$10$MUfRPC2WM1jiatwEn3wsk.egkcXmaqYqaFXjrejDI9ygg0oMUBCG.', 2, 1, NULL, NULL, '2020-01-31 20:17:09', '2020-01-31 20:17:09'),
(15, 'Patricia Cecilia del Carmen', 'Silva Ibarra', 'gatitapatty@gmail.com', NULL, '$2y$10$1B5iLycoSQ8Rz4AxJJ7APuZtMnj71cbl163qoqR.r/3xEDJdOV/Nm', 2, 1, NULL, NULL, '2020-01-31 20:20:36', '2020-01-31 20:20:36'),
(16, 'Varinia', 'Eluani Alamos', 'veluani@gmail.com', NULL, '$2y$10$2Qom/5QUmJnvXUvB28huM.24m/BL6Ekif9PbDCW9iYxReIip4YRGW', 2, 1, NULL, NULL, '2020-01-31 20:22:32', '2020-01-31 20:22:32'),
(17, 'Carmen', 'Arce Muñoz', 'Crosaarmu@gmail.com', NULL, '$2y$10$jdkP8MY1hsdhkm8DZjpmLeVDeFgsJMVvWhSt966SMz7BxqEj/vtHC', 2, 1, NULL, NULL, '2020-01-31 20:24:49', '2020-01-31 20:24:49'),
(18, 'Marta Virginia', 'Arellano Aguilar', 'marta.arellano@gmail.com', NULL, '$2y$10$c9Gw7pKShnwAaVcihm3EnecgWr62msMvOZVvfgeDz9KcWHwnz/Oa6', 2, 1, NULL, NULL, '2020-01-31 20:27:36', '2020-04-20 07:14:05'),
(19, 'Laura', 'Caracci Lagos', 'laura.caracci@gmail.com', NULL, '$2y$10$vYoVCyBSQ09ClMR3UwAd/O5UlwXqZyAY70VO4/3nSd3wbYHlqH3cu', 2, 1, NULL, NULL, '2020-01-31 20:32:54', '2020-01-31 20:32:54'),
(20, 'iris', 'Iglesias', 'avriglesias@gmail.com', NULL, '$2y$10$yzSJrw07deTySM1VRJoc7ePKzmbTUAHZdRHsvJ8IL4NtEmc9tPk.2', 2, 1, NULL, NULL, '2020-01-31 20:41:03', '2020-01-31 20:41:03'),
(21, 'Pedro', 'Lobos', 'pelluco.pedro@gmail.com', NULL, '$2y$10$/oESfny5/81SPwamIWa2zuVQcYWkzPkIYxXyPmGl1p6osNIyWtZ0e', 2, 1, NULL, NULL, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(22, 'Horacio', 'Guzman', 'horacioalfredoguzmangaete@gmail.com', NULL, '$2y$10$QX9A0Z5YtqjCZK6i5g//euUFrv.D6P5VMbtLy5mqPIp9Kync.fmaK', 2, 1, NULL, NULL, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(23, 'Daniel', 'Rojas Hernandez', 'danielbuenaventurar@gmail.com', NULL, '$2y$10$iOqvOxHijXkxLWVu7zrVE.JKVL2iV0JiPXdYluYCBQmiEtfZbur6.', 2, 1, NULL, NULL, '2020-01-31 20:55:12', '2020-01-31 20:55:12'),
(24, 'Juan', 'Schechner Esplej', 'juan.schechner@gmail.com', NULL, '$2y$10$QAZXO0dq7x1UmHQPTlIdh.11gygAbmbQ8u70ABxvXWLA98K.mNGP6', 2, 1, NULL, NULL, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(25, 'MANUEL', 'CRUZ', 'MCRUZ@CNTV.CL', NULL, '$2y$10$z4KOpGTb7lKMOst1tpjNyeTio2kikRzqusFoNU63mJFbcZTEuEAlO', 2, 1, NULL, NULL, '2020-01-31 21:03:23', '2020-01-31 21:03:23'),
(26, 'Camila', 'Cuevas Contreras', 'camicuevas@hotmail.cl', NULL, '$2y$10$FIAMNj38u4woF9/k6HnFB.r8zAQBqbvsAoawqGUFE5UPnGNirty2.', 2, 1, NULL, NULL, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(27, 'Daniela Paz', 'Hughes Figueroa ', 'Danielapazhf@gmail.com', NULL, '$2y$10$9j/5UvU7oimn/ITYIHr8qOrwvBwudGwGUSh63/xBtptqssVtK9Gqi', 2, 1, NULL, NULL, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(28, 'Dannae', 'Flores Aguirre', 'dannaeflores.c@gmail.com', NULL, '$2y$10$7y6XXv3I4Suw4if3NqUNBeUH8xdInV3htX2xlVpbMpsN70yBATT4q', 2, 1, NULL, NULL, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(29, 'Florencia', 'Arriagada', 'florenciaarriagada4@gmail.com', NULL, '$2y$10$JgL3uthuOHbkpdhdjrh.COLOqb99EJb2VdsxTATj5SdDf7DgLMo72', 2, 1, NULL, NULL, '2020-03-24 18:52:30', '2020-03-24 18:52:30'),
(30, 'ines', 'Donoso', 'inesdonosobarthe@gmail.com', NULL, '$2y$10$uFk30H0ErD2vdsjMxZKkVuceHYL6DYCtDYJF.Eo6KXIfUGH5khy9u', 2, 1, NULL, NULL, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(31, 'Javiera', 'Sandoval', 'javierasandovalosses@gmail.com', NULL, '$2y$10$/HxTgXqfpyUdxtK5lgPIoOzf9X98INpTtNG0oR5eRAA7tK.Fz/kBm', 2, 1, NULL, NULL, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(32, 'JULIET', 'GUERRA SÁNCHEZ', 'julietgs18@gmail.com', NULL, '$2y$10$HpVfQDXcss1tq6GRBrxCWurc54yVa.8YrpsgWTJU0QkGNK4DbcG0y', 2, 1, NULL, NULL, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(33, 'Laura', 'Espinoza Rangel', 'lauravalentinaespinoza@gmail.com', NULL, '$2y$10$CWKXRzti21L8bxIxP770ku/PryfaK4rdsayODPYqxnSOH2x0n9Udu', 2, 1, NULL, NULL, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(34, 'LINDA', 'VALENZUELA', 'lindavalenzuela01@gmail.com', NULL, '$2y$10$L0nC0nHGP26K5s585lBzYOR4R1OYI/LmwJQQlN/3S2lwWHyDKJ2My', 2, 1, NULL, NULL, '2020-03-24 19:24:25', '2020-03-24 19:24:25'),
(35, 'María José', 'Carpio Jara', 'cotecarpio@gmail.com', NULL, '$2y$10$uEef0JozxJr1SLWn.TO4Oec7PdbEnYwcDmyO0kgYv4NwevFFRFV8.', 2, 1, NULL, NULL, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(36, 'María Verónica', 'Noguera Pérez', 'm.veroxd@gmail.com', NULL, '$2y$10$bfsdaIaE7dUZHfWh9M5gZuw9c6mjhxm66CfSLi5iDWKfERpprzNpy', 2, 1, NULL, NULL, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(37, 'Benjamin', 'Gallo', 'benja.gallo2013@gmail.com', NULL, '$2y$10$6wNFylnBlaOvebaMeQ/RTe0Fi6pMmtEdlEqvmhRAT40ipOhurdzqm', 2, 1, NULL, NULL, '2020-03-24 19:42:48', '2020-03-24 19:42:48'),
(38, 'Carlos Manuel', 'Simón ', 'manuelsimon045@gmail.com', NULL, '$2y$10$lzI7k9.uDUXsEk75z1An6u/G7EjE5hxsKDkOtvWI/SAbbDap1Jdu2', 2, 1, NULL, NULL, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(39, 'Cristobal', 'Campos', 'cristobalcamposjauregui@gmail.com', NULL, '$2y$10$R9r3w54Kw8rwJXtqZziwQubxOqFgR1kgQ4MFo4jOwTzH3g0YNWThC', 2, 1, NULL, NULL, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(40, 'Dante', 'Ruiz Lepiante', 'Danteruizzabala@Gmail.com', NULL, '$2y$10$JiAEfMqDnE1GbIaC.UbOuuHeJTTDQ2h.PEIBsF6l/mn4AHWH1hNRO', 2, 1, NULL, NULL, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(41, 'Francisco Antonio', 'Diaz Tapia', 'fcodiaztapia@gmail.com', NULL, '$2y$10$iK/wSxaMXGG0SKQiTXeGqekgLJj2p7vRarBkZxes1y/hImolZ5X8e', 2, 1, NULL, NULL, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(42, 'Joaquin', 'Rodriguez', 'caco.jdri@gmail.com', NULL, '$2y$10$EgCwD/RkNk6/54s7DVJJJuHS3OtqIFw8TuIlAVEndR69KjLFAILPm', 2, 1, NULL, NULL, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(43, 'Kaio', 'SILVA', 'kaiow-silva@hotmail.com', NULL, '$2y$10$FZYsMpek/331ix7vPSBc.uC2ygYdQA17z01idwmrUPzg5tFOaGnkq', 2, 1, NULL, NULL, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(44, 'Anibal', 'Gonzalez Lobos', 'agonzalezloboscontacto@gmail.com', NULL, '$2y$10$dpBY1RA6Dl3BGtkiuayf4eJp7edsHIyfALQFiakCzn97HLqep3sj6', 2, 1, NULL, NULL, '2020-03-24 20:15:54', '2020-03-24 20:15:54'),
(45, 'CRISTIAN JUAN', 'CORONADO GARRIDO', 'ccoronado@demasmedios.cl', NULL, '$2y$10$TSEWSXby8LsRTsWB9k8CCuRm5KQMDarakoikyZJNLALzNw69i2Cr6', 2, 1, NULL, NULL, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(46, 'Dennis  (Denny)', 'Yulis', 'denny.ahora@gmail.com', NULL, '$2y$10$xf2s5evC8kgu7ugudcikSeYZwMU1TVpCj2qLUO5SILJwHNaec7Ki2', 2, 1, NULL, NULL, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(47, 'Elio', 'Moniz', 'eliomoniz@gmail.com', NULL, '$2y$10$FMS7ATsA8Oj0SRcoLV4Ntu5TeLLRgtRV8ahRUVqjzDP1JUCQCcx/u', 2, 1, NULL, NULL, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(48, 'Jaime', 'Godoy', 'arboldejosue@yahoo.es', NULL, '$2y$10$qlp3hT476MjexqTyLW1DduTWM5VFe9CvsrUbpe/qaBMCl.We9Qkky', 2, 1, NULL, NULL, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(49, 'JONATHAN', 'BAYS', 'jonbays82@gmail.com', NULL, '$2y$10$15ZmYroWnzNcShIE8LHbxuIdnGuh1n3IMEga7tyE0I1oE./OmLR4G', 2, 1, NULL, NULL, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(50, 'Nicolas', 'Rosales Alcayaga', 'nico.rosayaga@gmail.com', NULL, '$2y$10$DHi2YTom69q.0SECbXoiq.q43laCQCyVIwfNG4rcqYPUoXKFenaZe', 2, 1, NULL, NULL, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(51, 'Catalina', 'Leon', 'catalina.leon24@gmail.com', NULL, '$2y$10$/YTfgiJHvE1Ba2r74u8aKeMMh9aJ5DGJpo6ky2JAN8mh0ofBMVRvC', 2, 1, NULL, NULL, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(52, 'Paz', 'Vallejos', 'Pazvallejoslazo@gmail.com', NULL, '$2y$10$.nQBbrD/cZjgxurPujXgNOZ7gzGVNxFfCiWrmTMnSSLCnLMoLTlG.', 2, 1, NULL, NULL, '2020-04-14 20:11:47', '2020-04-14 20:11:47'),
(53, 'Rossana', 'Malchuk', 'malchuk.espinosa@gmail.com', NULL, '$2y$10$eE/tPhA3UNiex7YiW6pyl.JbGYTgCwMR/0NIyMRTAykqAyGiQ4t8i', 2, 1, NULL, NULL, '2020-04-14 20:18:25', '2020-04-14 20:18:25'),
(54, 'Sofia', 'Pennaroli', 'sofiapennaroli@gmail.com', NULL, '$2y$10$xKCkaiNeSvaYgHVCDtlHF.UQ5xYmlMjBR0uTNyN0A7f0NR0qLY2pu', 2, 1, NULL, NULL, '2020-04-14 20:26:18', '2020-04-14 20:26:18'),
(55, 'Ximena', 'Cifuentes', 'ximecifuentes.monasterio@gmail.com', NULL, '$2y$10$eKnZc8.l0c6upRq8xEDb2eek9BB0UjI1L4GTEsL/IMddP5sBxN0R.', 2, 1, NULL, NULL, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(56, 'Antonia', 'Haeger', 'antohaeger@gmail.com', NULL, '$2y$10$KuikRcuFSMLheY1jud/freN3UNMWFxtPiZ8tQYQ1WjT0a44OLym9S', 2, 1, NULL, NULL, '2020-04-14 20:40:03', '2020-04-14 20:40:03'),
(57, 'JAVIER', 'MARCERANO', 'kabachile@yahoo.com', NULL, '$2y$10$CvCfEkHWLhYmYG45/eyjPOYKX8VstnqFPYaAR2Rj//I1fnNgqOQTK', 2, 1, NULL, NULL, '2020-04-14 20:46:19', '2020-04-14 20:46:19'),
(58, 'Alexandra', 'Muñoz', 'Alexcaromz@gmail.com', NULL, '$2y$10$ykUWaB/TgtZksnKqMr2upukW/1x3UgDrwlM2jnCRhLT75ZjhOxgdW', 2, 1, NULL, NULL, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(59, 'Catalina', 'Silva', 'catasilvavon@gmail.com', NULL, '$2y$10$I9LveiKnCef3q29Zbq3stODBps8bvey4LnTlyze1qtZ0FpdrUrHEG', 2, 1, NULL, NULL, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(60, 'Daniella Victoria', 'Dekowic Herrera', 'dekovic.herrera@homail.cl', NULL, '$2y$10$lSjWYKeLzCGSOM1Y/LC9..YIlPe68IqbvbdPgtVhj9ZHJRAXwfTaO', 2, 1, NULL, NULL, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(61, 'Maria Francisca', 'Armstrong Silva', 'francisca.armstrong@uc.cl', NULL, '$2y$10$rqHPrv8P5lbP549ydD.8BOdFK6q8Grv5/wQYEK78dostj4Ru5Smx6', 2, 1, NULL, NULL, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(62, 'Grace Eugenia', 'Espinoza Henriquez', 'graceeugenia@gmail.com', NULL, '$2y$10$H5DtZOr9rf.sPkgfq1quVumVHSxVWr7iQ8VWxAhg3UHXY.7xD/yaG', 2, 1, NULL, NULL, '2020-04-14 21:13:34', '2020-04-14 21:13:34'),
(63, 'Isidora', 'Flores Abarca', 'isidoraflores1507@gmail.com', NULL, '$2y$10$boR0XMiULKlpivShfDWqiOonryhn5dK5nT5YjgO05G3DjGH3XSlJe', 2, 1, NULL, NULL, '2020-04-14 21:17:21', '2020-04-14 21:17:21'),
(64, 'Paula Soledad', 'Cespedes Sanchez', 'paucespedessanchez@gmail.com', NULL, '$2y$10$g4o5ZH72jkhFKeAXPQUH3uNfKMR8hE8yisYaiHcsV0jgFW2b.AxqS', 2, 1, NULL, NULL, '2020-04-14 21:21:49', '2020-04-14 21:21:49'),
(65, 'Seyon', 'Ko Kim', 'snk240900@gmail.com', NULL, '$2y$10$xYNyukGJ5ke27B/SepjowOeLUxHfHEOpYn18TFgN.7EuVcdu.KloG', 2, 1, NULL, NULL, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(66, 'Thiara Denisse', 'Cid Chevecich', 'thiaracid@gmail.com', NULL, '$2y$10$6OqLnsHHy4GKf0j1gDV9/O7TU14Q5H/VLBQ5S1lDzZa4katDjAngC', 2, 1, NULL, NULL, '2020-04-14 21:35:38', '2020-04-14 21:35:38'),
(67, 'Valentina', 'Leiva Alba', 'leivaalba.valentina@gmail.com', NULL, '$2y$10$d4NhbzbxxWNG2WKVr0twSe0NdZjSoiN2vJqLPf/IVLelumCP92toS', 2, 1, NULL, NULL, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(68, 'Albert Manuel', 'guan zhang', 'manuel.zg@hotmail.com', NULL, '$2y$10$1scQ0kaeFxPPRo12zi8MEO47RaIAlWe4dDAmE5zfDw4IYkmYYNd9O', 2, 1, NULL, NULL, '2020-04-14 21:48:33', '2020-04-14 21:48:33'),
(69, 'Benjamin', 'Denk', 'benjamin.denk@hotmail.com', NULL, '$2y$10$sHLy5485vsja6PmwLC.9GO4gWD5JceI4KebwOW1J1yHfwln0gC2hm', 2, 1, NULL, NULL, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(70, 'Branco Italo', 'Tognarelli Thomas', 'tojnarelli.shark@gmail.com', NULL, '$2y$10$B5h3qYDE/75Dy6fMmTioPeJY96iSjRD8qvGNo2OfCvrQxigHxlhn2', 2, 1, NULL, NULL, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(71, 'Christopher', 'Vasquez Casanelli', 'criscasanelli@gmail.com', NULL, '$2y$10$8yymJNrtoX7OvzBPHgx23uv98oSGHVTUjgIfskoal45HfFzgaB.16', 2, 1, NULL, NULL, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(72, 'DIEGO', 'SILVA', 'DIEGOPAVATTY@GMAIL.COM', NULL, '$2y$10$GltfYuqUYG7uVMWkOhXLzuesoftMPTFgnieD5wde2L98G1bfgSGq.', 2, 1, NULL, NULL, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(73, 'Felipe Ignacio', 'Martinez San Martin', 'martinez.san.martin.felipe@gmail.com', NULL, '$2y$10$XzqczLbxxKdPhuX3VB9TTebmDtSIh94Jn/l9t6DJUmeT4iw.5dt86', 2, 1, NULL, NULL, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(74, 'Ismael', 'Castellon', 'icastellon@uc.cl', NULL, '$2y$10$mKMsQTlZ8QPsWHjW5UP3guD8DiHtW3obCi10F.bEAk.Z4WDrMpCQO', 2, 1, NULL, NULL, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(75, 'Jason', 'Kang', 'jasonkagmoon10@gmail.com', NULL, '$2y$10$WER131XXGjrzYWJ2.TlXtemTvLl55NubP5vca8I43Ge8QUaL2vQeO', 2, 1, NULL, NULL, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(76, 'Jaasiel Isai', 'Hernandez Colmenares', 'jaasiis1502@gmail.com', NULL, '$2y$10$ATnPTXgZwZvyCjEUDFX6NOg5FufUZWQFZVVTF3hn/K28evBpT3t/e', 2, 1, NULL, NULL, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(77, 'Leonardo', 'Bastias', 'bastias.leonardo1998@gmail.com', NULL, '$2y$10$1XgpndzUyCMolrZ81.BzVOWd6MM/1Rxg6LmqZpp4koThQFoCLFYL6', 2, 1, NULL, NULL, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(78, 'Lucas', 'Pamplona', 'Pamplicista@gmail.com', NULL, '$2y$10$mE83tmsX67vamIBAHonrkeO/svSFSpkgUjFEALA0azqcfN3LIgvMq', 2, 1, NULL, NULL, '2020-04-14 22:46:34', '2020-04-14 22:46:34'),
(79, 'Carlos', 'Poblete', 'carlpoblete@gmail.com', NULL, '$2y$10$efleNnzJ12FIMXXmTYUbResVugjPe4l32B5t/70eAFIiNXmhCJ6L6', 2, 1, NULL, NULL, '2020-04-14 22:49:21', '2020-04-14 22:49:21'),
(80, 'Dagoberto Javier', 'Espinosa Castillo', 'dagobertocl@gmail.com', NULL, '$2y$10$cGyUbJhDQG5DrzwFWPSZ2ujgbwrv.T9rk5umzvZG9bVHUoRQW2YiO', 2, 1, NULL, NULL, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(81, 'Francisco', 'Merino', 'fcomerinom@hotmail.com', NULL, '$2y$10$6h3h4GRihn9OeLwNqvY0susLE6xWq4Tp.gMkM2pQYx4JV3Me/gexW', 2, 1, NULL, NULL, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(82, 'Felipe', 'von der Forst', 'felipe.vdf@gmail.com', NULL, '$2y$10$ffl9R4dWBpSvrO3xl791Z.AGLf324kWPUSEwzUMonOMxwFgj.VAH2', 2, 1, NULL, NULL, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(87, 'Kaka', 'KAka', 'kaka8787@gmail.com', NULL, '$2y$10$tJCsRHa1a6kXlm3cOcvLg.DRDSPRaGlDrb7/LY0kzOYkr2N04UsVe', 2, 1, NULL, NULL, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(89, 'Kaka', 'KAka', 'kaka888765@gmail.com', NULL, '$2y$10$QLiMQY5va4lioN6.mxftlObw13eJgU.QlPC8ay.s1rJsftgTYDmH2', 2, 1, NULL, NULL, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(90, 'Kaka', 'KAka', 'pipi@gmail.com', NULL, '$2y$10$wOq7ogzHKKmRnjMdpk4Hje1NR1LE/rn2yhwqTZre8nLNHZIDbfjEa', 2, 1, NULL, NULL, '2020-04-20 07:36:47', '2020-04-20 07:36:47'),
(91, 'Kaka', 'KAka', 'papa@gmail.com', NULL, '$2y$10$KjDwcKOUkAR.vtWfMXBNxu/HeX/gP5veIUMzo3utAVIqZu1oA587a', 2, 1, NULL, NULL, '2020-04-20 07:37:40', '2020-04-20 07:37:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_metas`
--

CREATE TABLE `user_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `meta_id` int(10) UNSIGNED NOT NULL,
  `tabla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_metas`
--

INSERT INTO `user_metas` (`id`, `user_id`, `meta_id`, `tabla`, `meta_value`, `meta_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'user', '5123975-K', 'rut', 1, '2020-01-22 19:12:12', '2020-01-22 19:12:12'),
(2, 4, 2, 'user', '17-03-1944', 'fecha_nac', 1, '2020-01-22 19:12:12', '2020-01-22 19:12:12'),
(3, 4, 3, 'user', '39', 'nacionalidad', 1, '2020-01-22 19:12:12', '2020-04-20 06:15:56'),
(4, 4, 4, 'user', '13', 'region', 1, '2020-01-22 19:12:12', '2020-04-20 06:15:56'),
(5, 4, 5, 'user', '273', 'comuna', 1, '2020-01-22 19:12:12', '2020-04-20 06:15:56'),
(6, 4, 6, 'user', 'Del Rey 1761', 'direccion', 1, '2020-01-22 19:12:12', '2020-01-22 19:12:12'),
(7, 4, 7, 'user', '224197266', 'telefono', 1, '2020-01-22 19:12:12', '2020-01-22 19:12:12'),
(8, 4, 10, 'user', '36', 'calzado', 1, '2020-01-22 19:12:12', '2020-01-22 19:12:12'),
(9, 4, 11, 'user', '1.55', 'altura', 1, '2020-01-22 19:12:13', '2020-01-22 19:12:13'),
(10, 4, 12, 'user', '46', 'pantalon', 1, '2020-01-22 19:12:13', '2020-01-22 19:12:13'),
(11, 4, 13, 'user', '46', 'camisa', 1, '2020-01-22 19:12:13', '2020-01-22 19:12:13'),
(12, 4, 17, 'user', '1', 'avatar', 1, '2020-01-22 19:12:13', '2020-01-22 19:12:13'),
(13, 4, 18, 'user', 'Español', 'idiomas', 1, '2020-01-22 19:12:13', '2020-01-22 19:12:13'),
(14, 4, 19, 'user', '1', 'ocio', 1, '2020-01-22 19:12:13', '2020-01-22 19:12:13'),
(15, 4, 20, 'user', '1', 'ocupacion', 1, '2020-01-22 19:12:13', '2020-01-22 19:12:13'),
(16, 5, 1, 'user', '24994203-0', 'rut', 1, '2020-01-22 19:24:23', '2020-01-22 19:24:23'),
(17, 5, 2, 'user', '29-11-1936', 'fecha_nac', 1, '2020-01-22 19:24:23', '2020-01-22 19:24:23'),
(18, 5, 3, 'user', '3', 'nacionalidad', 1, '2020-01-22 19:24:23', '2020-01-22 19:24:23'),
(19, 5, 4, 'user', '2', 'region', 1, '2020-01-22 19:24:23', '2020-01-22 19:24:23'),
(20, 5, 5, 'user', '8', 'comuna', 1, '2020-01-22 19:24:23', '2020-04-20 06:07:33'),
(21, 5, 6, 'user', 'Camino del Roble 1769', 'direccion', 1, '2020-01-22 19:24:23', '2020-01-22 19:24:23'),
(22, 5, 7, 'user', '56967689329', 'telefono', 1, '2020-01-22 19:24:23', '2020-01-22 19:24:23'),
(23, 5, 17, 'user', '80', 'avatar', 1, '2020-01-22 19:24:23', '2020-04-20 07:16:47'),
(24, 5, 18, 'user', 'Francés', 'idiomas', 1, '2020-01-22 19:24:23', '2020-01-22 19:24:23'),
(27, 6, 1, 'user', '22016718-6', 'rut', 1, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(28, 6, 2, 'user', '02-02-1951', 'fecha_nac', 1, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(29, 6, 3, 'user', '67', 'nacionalidad', 1, '2020-01-22 19:31:07', '2020-04-20 06:24:44'),
(30, 6, 7, 'user', '56973988606', 'telefono', 1, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(31, 6, 10, 'user', '38', 'calzado', 1, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(32, 6, 12, 'user', '40', 'pantalon', 1, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(33, 6, 13, 'user', '40', 'camisa', 1, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(34, 6, 16, 'user', 'Johnson (2017)', 'comerciales', 1, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(35, 6, 17, 'user', '3', 'avatar', 1, '2020-01-22 19:31:07', '2020-01-22 19:31:07'),
(39, 7, 1, 'user', '6782997-2', 'rut', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(40, 7, 2, 'user', '03-11-1947', 'fecha_nac', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(41, 7, 3, 'user', 'CHILENA', 'nacionalidad', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(42, 7, 4, 'user', 'Libertador General Bernardo O\'Higgins', 'region', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(43, 7, 5, 'user', 'COINCO', 'comuna', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(44, 7, 6, 'user', 'Cerro El Tayen', 'direccion', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(45, 7, 7, 'user', '56989710906', 'telefono', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(46, 7, 17, 'user', '4', 'avatar', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(47, 7, 18, 'user', 'Español', 'idiomas', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(48, 7, 20, 'user', 'Relaciones Públicas', 'ocupacion', 1, '2020-01-22 19:52:55', '2020-01-22 19:52:55'),
(49, 8, 1, 'user', '4481567-2', 'rut', 1, '2020-01-22 19:57:27', '2020-01-22 19:57:27'),
(50, 8, 2, 'user', '21-01-1947', 'fecha_nac', 1, '2020-01-22 19:57:27', '2020-01-22 19:57:27'),
(51, 8, 3, 'user', 'CHILENA', 'nacionalidad', 1, '2020-01-22 19:57:27', '2020-01-22 19:57:27'),
(52, 8, 7, 'user', '56992368004', 'telefono', 1, '2020-01-22 19:57:27', '2020-01-22 19:57:27'),
(53, 8, 17, 'user', '5', 'avatar', 1, '2020-01-22 19:57:27', '2020-01-22 19:57:27'),
(54, 8, 18, 'user', 'Español', 'idiomas', 1, '2020-01-22 19:57:27', '2020-01-22 19:57:27'),
(55, 9, 21, 'user', 'F', 'sexo', 1, '2020-01-31 19:59:32', '2020-01-31 19:59:32'),
(56, 9, 2, 'user', '24-12-1957', 'fecha_nac', 1, '2020-01-31 19:59:32', '2020-01-31 19:59:32'),
(57, 9, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 19:59:32', '2020-01-31 19:59:32'),
(58, 9, 7, 'user', '56997523815', 'telefono', 1, '2020-01-31 19:59:32', '2020-01-31 19:59:32'),
(59, 9, 17, 'user', '6', 'avatar', 1, '2020-01-31 19:59:32', '2020-01-31 19:59:32'),
(60, 10, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:02:12', '2020-01-31 20:02:12'),
(61, 10, 2, 'user', '05-08-1948', 'fecha_nac', 1, '2020-01-31 20:02:12', '2020-01-31 20:02:12'),
(62, 10, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:02:12', '2020-01-31 20:02:12'),
(63, 10, 7, 'user', '56992323930', 'telefono', 1, '2020-01-31 20:02:13', '2020-01-31 20:02:13'),
(64, 10, 17, 'user', '7', 'avatar', 1, '2020-01-31 20:02:13', '2020-01-31 20:02:13'),
(65, 11, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(66, 11, 2, 'user', '26-09-1947', 'fecha_nac', 1, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(67, 11, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(68, 11, 4, 'user', '13', 'region', 1, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(69, 11, 5, 'user', '276', 'comuna', 1, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(70, 11, 6, 'user', 'Avda Francisco Bilbao 3517', 'direccion', 1, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(71, 11, 7, 'user', '56989756025', 'telefono', 1, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(72, 11, 17, 'user', '8', 'avatar', 1, '2020-01-31 20:06:55', '2020-01-31 20:06:55'),
(73, 12, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:08:58', '2020-01-31 20:08:58'),
(74, 12, 2, 'user', '15-05-1949', 'fecha_nac', 1, '2020-01-31 20:08:58', '2020-01-31 20:08:58'),
(75, 12, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:08:58', '2020-01-31 20:08:58'),
(76, 12, 17, 'user', '9', 'avatar', 1, '2020-01-31 20:08:58', '2020-01-31 20:08:58'),
(77, 13, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:11:06', '2020-01-31 20:11:06'),
(78, 13, 2, 'user', '06-07-1942', 'fecha_nac', 1, '2020-01-31 20:11:06', '2020-01-31 20:11:06'),
(79, 13, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:11:06', '2020-01-31 20:11:06'),
(80, 13, 17, 'user', '10', 'avatar', 1, '2020-01-31 20:11:06', '2020-01-31 20:11:06'),
(81, 14, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:17:09', '2020-01-31 20:17:09'),
(82, 14, 2, 'user', '26-08-1951', 'fecha_nac', 1, '2020-01-31 20:17:09', '2020-01-31 20:17:09'),
(83, 14, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:17:09', '2020-01-31 20:17:09'),
(84, 14, 9, 'user', '@consueloprietoest', 'instagram', 1, '2020-01-31 20:17:09', '2020-01-31 20:17:09'),
(85, 14, 17, 'user', '11', 'avatar', 1, '2020-01-31 20:17:09', '2020-01-31 20:17:09'),
(86, 15, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:20:36', '2020-01-31 20:20:36'),
(87, 15, 2, 'user', '21-10-1958', 'fecha_nac', 1, '2020-01-31 20:20:36', '2020-01-31 20:20:36'),
(88, 15, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:20:36', '2020-01-31 20:20:36'),
(89, 15, 9, 'user', '@patita.cecilia', 'instagram', 1, '2020-01-31 20:20:36', '2020-01-31 20:20:36'),
(90, 15, 17, 'user', '12', 'avatar', 1, '2020-01-31 20:20:36', '2020-01-31 20:20:36'),
(91, 16, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:22:32', '2020-01-31 20:22:32'),
(92, 16, 2, 'user', '06-10-1959', 'fecha_nac', 1, '2020-01-31 20:22:32', '2020-01-31 20:22:32'),
(93, 16, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:22:32', '2020-01-31 20:22:32'),
(94, 16, 17, 'user', '13', 'avatar', 1, '2020-01-31 20:22:32', '2020-01-31 20:22:32'),
(95, 17, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:24:49', '2020-01-31 20:24:49'),
(96, 17, 1, 'user', '6625724-K', 'rut', 1, '2020-01-31 20:24:49', '2020-01-31 20:24:49'),
(97, 17, 2, 'user', '06-07-1957', 'fecha_nac', 1, '2020-01-31 20:24:49', '2020-01-31 20:24:49'),
(98, 17, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:24:49', '2020-01-31 20:24:49'),
(99, 17, 17, 'user', '14', 'avatar', 1, '2020-01-31 20:24:49', '2020-01-31 20:24:49'),
(100, 18, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(101, 18, 1, 'user', '8429313-K', 'rut', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(102, 18, 2, 'user', '25-08-1957', 'fecha_nac', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(103, 18, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(104, 18, 4, 'user', '13', 'region', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(105, 18, 5, 'user', '267', 'comuna', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(106, 18, 6, 'user', 'Camino Santa Rosa 3040', 'direccion', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(107, 18, 7, 'user', '56998738072', 'telefono', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(108, 18, 17, 'user', '15', 'avatar', 1, '2020-01-31 20:27:36', '2020-01-31 20:27:36'),
(109, 19, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:32:54', '2020-01-31 20:32:54'),
(110, 19, 2, 'user', '03-03-1945', 'fecha_nac', 1, '2020-01-31 20:32:54', '2020-01-31 20:32:54'),
(111, 19, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:32:54', '2020-01-31 20:32:54'),
(112, 19, 17, 'user', '16', 'avatar', 1, '2020-01-31 20:32:54', '2020-01-31 20:32:54'),
(113, 20, 21, 'user', 'F', 'sexo', 1, '2020-01-31 20:41:03', '2020-01-31 20:41:03'),
(114, 20, 1, 'user', '4016686-6', 'rut', 1, '2020-01-31 20:41:03', '2020-01-31 20:41:03'),
(115, 20, 2, 'user', '18-02-1939', 'fecha_nac', 1, '2020-01-31 20:41:03', '2020-01-31 20:41:03'),
(116, 20, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:41:03', '2020-01-31 20:41:03'),
(117, 20, 17, 'user', '17', 'avatar', 1, '2020-01-31 20:41:03', '2020-01-31 20:41:03'),
(118, 21, 21, 'user', 'M', 'sexo', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(119, 21, 1, 'user', '5076524-5', 'rut', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(120, 21, 2, 'user', '11-12-1946', 'fecha_nac', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(121, 21, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(122, 21, 4, 'user', '13', 'region', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(123, 21, 5, 'user', '273', 'comuna', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(124, 21, 6, 'user', 'Las Reinas 890', 'direccion', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(125, 21, 7, 'user', '950027678', 'telefono', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(126, 21, 16, 'user', 'Cocacola, Sky, Gillete, Provida, Minsal', 'comerciales', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(127, 21, 17, 'user', '18', 'avatar', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(128, 21, 19, 'user', '5', 'ocio', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(129, 21, 20, 'user', 'Jubilado', 'ocupacion', 1, '2020-01-31 20:45:36', '2020-01-31 20:45:36'),
(130, 22, 21, 'user', 'M', 'sexo', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(131, 22, 2, 'user', '20-10-1948', 'fecha_nac', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(132, 22, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(133, 22, 4, 'user', '13', 'region', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(134, 22, 5, 'user', '279', 'comuna', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(135, 22, 6, 'user', 'Suecia 1223 Depto 703', 'direccion', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(136, 22, 7, 'user', '56999555965', 'telefono', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(137, 22, 16, 'user', 'ENTEL LUNA, LATAM', 'comerciales', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(138, 22, 17, 'user', '19', 'avatar', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(139, 22, 18, 'user', 'Ingles', 'idiomas', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(140, 22, 19, 'user', '6', 'ocio', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(141, 22, 20, 'user', '5', 'ocupacion', 1, '2020-01-31 20:50:14', '2020-01-31 20:50:14'),
(142, 23, 21, 'user', 'M', 'sexo', 1, '2020-01-31 20:55:12', '2020-01-31 20:55:12'),
(143, 23, 2, 'user', '27-07-1946', 'fecha_nac', 1, '2020-01-31 20:55:12', '2020-01-31 20:55:12'),
(144, 23, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 20:55:12', '2020-01-31 20:55:12'),
(145, 23, 17, 'user', '20', 'avatar', 1, '2020-01-31 20:55:12', '2020-01-31 20:55:12'),
(146, 24, 21, 'user', 'M', 'sexo', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(147, 24, 1, 'user', '26180393-3', 'rut', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(148, 24, 2, 'user', '01-03-1958', 'fecha_nac', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(149, 24, 3, 'user', '9', 'nacionalidad', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(150, 24, 4, 'user', '13', 'region', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(151, 24, 5, 'user', '279', 'comuna', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(152, 24, 6, 'user', 'Sucre 2970 Depto 803', 'direccion', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(153, 24, 7, 'user', '569963800111', 'telefono', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(154, 24, 17, 'user', '21', 'avatar', 1, '2020-01-31 21:01:06', '2020-01-31 21:01:06'),
(155, 25, 21, 'user', 'M', 'sexo', 1, '2020-01-31 21:03:23', '2020-01-31 21:03:23'),
(156, 25, 1, 'user', '7206577-8', 'rut', 1, '2020-01-31 21:03:23', '2020-01-31 21:03:23'),
(157, 25, 2, 'user', '21-02-1956', 'fecha_nac', 1, '2020-01-31 21:03:23', '2020-01-31 21:03:23'),
(158, 25, 3, 'user', '39', 'nacionalidad', 1, '2020-01-31 21:03:23', '2020-01-31 21:03:23'),
(159, 25, 7, 'user', '56997991817', 'telefono', 1, '2020-01-31 21:03:23', '2020-01-31 21:03:23'),
(160, 25, 17, 'user', '22', 'avatar', 1, '2020-01-31 21:03:23', '2020-01-31 21:03:23'),
(161, 26, 21, 'user', 'F', 'sexo', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(162, 26, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(163, 26, 1, 'user', '19091765-7', 'rut', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(164, 26, 2, 'user', '12-04-1995', 'fecha_nac', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(165, 26, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(166, 26, 4, 'user', '13', 'region', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(167, 26, 5, 'user', '268', 'comuna', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(168, 26, 6, 'user', 'Av Cristobal Colon 3336 depto 1101', 'direccion', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(169, 26, 7, 'user', '56981374126', 'telefono', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(170, 26, 17, 'user', '23', 'avatar', 1, '2020-03-24 18:25:25', '2020-03-24 18:25:25'),
(171, 27, 21, 'user', 'F', 'sexo', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(172, 27, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(173, 27, 1, 'user', '20163722-8', 'rut', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(174, 27, 2, 'user', '23-02-1999', 'fecha_nac', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(175, 27, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(176, 27, 7, 'user', '56978766884', 'telefono', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(177, 27, 17, 'user', '24', 'avatar', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(178, 27, 19, 'user', '9', 'ocio', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(179, 27, 19, 'user', '10', 'ocio', 1, '2020-03-24 18:43:34', '2020-03-24 18:43:34'),
(180, 28, 21, 'user', 'F', 'sexo', 1, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(181, 28, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(182, 28, 1, 'user', '19517607-8', 'rut', 1, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(183, 28, 2, 'user', '16-12-1996', 'fecha_nac', 1, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(184, 28, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(185, 28, 17, 'user', '25', 'avatar', 1, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(186, 28, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(187, 28, 20, 'user', '8', 'ocupacion', 1, '2020-03-24 18:48:02', '2020-03-24 18:48:02'),
(188, 29, 21, 'user', 'F', 'sexo', 1, '2020-03-24 18:52:30', '2020-03-24 18:52:30'),
(189, 29, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 18:52:31', '2020-03-24 18:52:31'),
(190, 29, 1, 'user', '20809319-3', 'rut', 1, '2020-03-24 18:52:31', '2020-03-24 18:52:31'),
(191, 29, 2, 'user', '17-12-2001', 'fecha_nac', 1, '2020-03-24 18:52:31', '2020-03-24 18:52:31'),
(192, 29, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 18:52:31', '2020-03-24 18:52:31'),
(193, 29, 17, 'user', '26', 'avatar', 1, '2020-03-24 18:52:31', '2020-03-24 18:52:31'),
(194, 29, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 18:52:31', '2020-03-24 18:52:31'),
(195, 30, 21, 'user', 'F', 'sexo', 1, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(196, 30, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(197, 30, 1, 'user', '20164853-K', 'rut', 1, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(198, 30, 2, 'user', '06-08-1999', 'fecha_nac', 1, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(199, 30, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(200, 30, 17, 'user', '27', 'avatar', 1, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(201, 30, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(202, 30, 20, 'user', 'Modelo', 'ocupacion', 1, '2020-03-24 19:08:51', '2020-03-24 19:08:51'),
(203, 31, 21, 'user', 'F', 'sexo', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(204, 31, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(205, 31, 1, 'user', '20432039-K', 'rut', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(206, 31, 2, 'user', '18-10-2000', 'fecha_nac', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(207, 31, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(208, 31, 4, 'user', '13', 'region', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(209, 31, 5, 'user', '273', 'comuna', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(210, 31, 17, 'user', '28', 'avatar', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(211, 31, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(212, 31, 20, 'user', '10', 'ocupacion', 1, '2020-03-24 19:13:43', '2020-03-24 19:13:43'),
(213, 32, 21, 'user', 'F', 'sexo', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(214, 32, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(215, 32, 1, 'user', '25907258-1', 'rut', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(216, 32, 2, 'user', '18-06-1993', 'fecha_nac', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(217, 32, 3, 'user', '196', 'nacionalidad', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(218, 32, 4, 'user', '13', 'region', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(219, 32, 5, 'user', '292', 'comuna', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(220, 32, 17, 'user', '29', 'avatar', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(221, 32, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:17:27', '2020-03-24 19:17:27'),
(222, 33, 21, 'user', 'F', 'sexo', 1, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(223, 33, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(224, 33, 1, 'user', '19889550-4', 'rut', 1, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(225, 33, 2, 'user', '12-04-1997', 'fecha_nac', 1, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(226, 33, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(227, 33, 7, 'user', '56984179259', 'telefono', 1, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(228, 33, 17, 'user', '30', 'avatar', 1, '2020-03-24 19:20:09', '2020-03-24 19:20:09'),
(229, 34, 21, 'user', 'F', 'sexo', 1, '2020-03-24 19:24:25', '2020-03-24 19:24:25'),
(230, 34, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:24:26', '2020-03-24 19:24:26'),
(231, 34, 1, 'user', '25402671-9', 'rut', 1, '2020-03-24 19:24:26', '2020-03-24 19:24:26'),
(232, 34, 2, 'user', '11-11-1999', 'fecha_nac', 1, '2020-03-24 19:24:26', '2020-03-24 19:24:26'),
(233, 34, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:24:26', '2020-03-24 19:24:26'),
(234, 34, 7, 'user', '56974557208', 'telefono', 1, '2020-03-24 19:24:26', '2020-03-24 19:24:26'),
(235, 34, 17, 'user', '31', 'avatar', 1, '2020-03-24 19:24:26', '2020-03-24 19:24:26'),
(236, 34, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:24:26', '2020-03-24 19:24:26'),
(237, 34, 19, 'user', '11', 'ocio', 1, '2020-03-24 19:24:26', '2020-03-24 19:24:26'),
(238, 35, 21, 'user', 'F', 'sexo', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(239, 35, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(240, 35, 1, 'user', '20675905-4', 'rut', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(241, 35, 2, 'user', '30-01-2001', 'fecha_nac', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(242, 35, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(243, 35, 7, 'user', '56932537561', 'telefono', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(244, 35, 17, 'user', '32', 'avatar', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(245, 35, 18, 'user', 'Ingles', 'idiomas', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(246, 35, 20, 'user', '11', 'ocupacion', 1, '2020-03-24 19:28:25', '2020-03-24 19:28:25'),
(247, 36, 21, 'user', 'F', 'sexo', 1, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(248, 36, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(249, 36, 1, 'user', '100456655-2', 'rut', 1, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(250, 36, 2, 'user', '05-05-2003', 'fecha_nac', 1, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(251, 36, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(252, 36, 7, 'user', '56964194528', 'telefono', 1, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(253, 36, 17, 'user', '33', 'avatar', 1, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(254, 36, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:31:49', '2020-03-24 19:31:49'),
(255, 37, 21, 'user', 'M', 'sexo', 1, '2020-03-24 19:42:48', '2020-03-24 19:42:48'),
(256, 37, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:42:48', '2020-03-24 19:42:48'),
(257, 37, 1, 'user', '20012739-0', 'rut', 1, '2020-03-24 19:42:48', '2020-03-24 19:42:48'),
(258, 37, 2, 'user', '21-10-1998', 'fecha_nac', 1, '2020-03-24 19:42:48', '2020-03-24 19:42:48'),
(259, 37, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:42:49', '2020-03-24 19:42:49'),
(260, 37, 4, 'user', '13', 'region', 1, '2020-03-24 19:42:49', '2020-03-24 19:42:49'),
(261, 37, 5, 'user', '279', 'comuna', 1, '2020-03-24 19:42:49', '2020-03-24 19:42:49'),
(262, 37, 6, 'user', 'Doctor Pedro Lautaro Ferrer 3381, depto 405,', 'direccion', 1, '2020-03-24 19:42:49', '2020-03-24 19:42:49'),
(263, 37, 7, 'user', '56959769735', 'telefono', 1, '2020-03-24 19:42:49', '2020-03-24 19:42:49'),
(264, 37, 17, 'user', '34', 'avatar', 1, '2020-03-24 19:42:49', '2020-03-24 19:42:49'),
(265, 37, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:42:49', '2020-03-24 19:42:49'),
(266, 37, 20, 'user', 'Actor', 'ocupacion', 1, '2020-03-24 19:42:49', '2020-03-24 19:42:49'),
(267, 38, 21, 'user', 'M', 'sexo', 1, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(268, 38, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(269, 38, 1, 'user', '25593080-K', 'rut', 1, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(270, 38, 2, 'user', '07-02-2001', 'fecha_nac', 1, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(271, 38, 3, 'user', '81', 'nacionalidad', 1, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(272, 38, 7, 'user', '569933536667', 'telefono', 1, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(273, 38, 17, 'user', '35', 'avatar', 1, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(274, 38, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:46:44', '2020-03-24 19:46:44'),
(275, 39, 21, 'user', 'M', 'sexo', 1, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(276, 39, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(277, 39, 1, 'user', '20011430-2', 'rut', 1, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(278, 39, 2, 'user', '23-07-1998', 'fecha_nac', 1, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(279, 39, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(280, 39, 7, 'user', '56961447162', 'telefono', 1, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(281, 39, 17, 'user', '36', 'avatar', 1, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(282, 39, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:50:31', '2020-03-24 19:50:31'),
(283, 40, 21, 'user', 'M', 'sexo', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(284, 40, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(285, 40, 1, 'user', '18624128-2', 'rut', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(286, 40, 2, 'user', '27-09-1993', 'fecha_nac', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(287, 40, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(288, 40, 7, 'user', '56995017254', 'telefono', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(289, 40, 17, 'user', '37', 'avatar', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(290, 40, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(291, 40, 20, 'user', '12', 'ocupacion', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(292, 40, 20, 'user', '13', 'ocupacion', 1, '2020-03-24 19:55:24', '2020-03-24 19:55:24'),
(293, 41, 21, 'user', 'M', 'sexo', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(294, 41, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(295, 41, 1, 'user', '19100734-4', 'rut', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(296, 41, 2, 'user', '03-03-1995', 'fecha_nac', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(297, 41, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(298, 41, 7, 'user', '56944557312', 'telefono', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(299, 41, 17, 'user', '38', 'avatar', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(300, 41, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(301, 41, 20, 'user', 'Actor', 'ocupacion', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(302, 41, 20, 'user', 'Bailarín', 'ocupacion', 1, '2020-03-24 19:59:23', '2020-03-24 19:59:23'),
(303, 42, 21, 'user', 'M', 'sexo', 1, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(304, 42, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(305, 42, 1, 'user', '19153687-8', 'rut', 1, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(306, 42, 2, 'user', '21-04-1996', 'fecha_nac', 1, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(307, 42, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(308, 42, 7, 'user', '56963503610', 'telefono', 1, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(309, 42, 17, 'user', '39', 'avatar', 1, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(310, 42, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 20:02:49', '2020-03-24 20:02:49'),
(311, 43, 21, 'user', 'M', 'sexo', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(312, 43, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(313, 43, 1, 'user', '12263464-7', 'rut', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(314, 43, 2, 'user', '03-11-1997', 'fecha_nac', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(315, 43, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(316, 43, 4, 'user', '13', 'region', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(317, 43, 5, 'user', '279', 'comuna', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(318, 43, 6, 'user', 'Román Díaz 41', 'direccion', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(319, 43, 7, 'user', '56973281637', 'telefono', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(320, 43, 17, 'user', '40', 'avatar', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(321, 43, 18, 'user', '1', 'idiomas', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(322, 43, 18, 'user', '7', 'idiomas', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(323, 43, 20, 'user', 'Actor', 'ocupacion', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(324, 43, 20, 'user', 'Modelo', 'ocupacion', 1, '2020-03-24 20:08:16', '2020-03-24 20:08:16'),
(325, 44, 21, 'user', 'M', 'sexo', 1, '2020-03-24 20:15:54', '2020-03-24 20:15:54'),
(326, 44, 22, 'user', 'Gay', 'genero', 1, '2020-03-24 20:15:54', '2020-03-24 20:15:54'),
(327, 44, 1, 'user', '17184687-0', 'rut', 1, '2020-03-24 20:15:54', '2020-03-24 20:15:54'),
(328, 44, 2, 'user', '27-02-1989', 'fecha_nac', 1, '2020-03-24 20:15:54', '2020-03-24 20:15:54'),
(329, 44, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 20:15:54', '2020-03-24 20:15:54'),
(330, 44, 7, 'user', '56978043624', 'telefono', 1, '2020-03-24 20:15:54', '2020-03-24 20:15:54'),
(331, 44, 17, 'user', '41', 'avatar', 1, '2020-03-24 20:15:55', '2020-03-24 20:15:55'),
(332, 44, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 20:15:55', '2020-03-24 20:15:55'),
(333, 45, 21, 'user', 'M', 'sexo', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(334, 45, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(335, 45, 1, 'user', '8545884-1', 'rut', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(336, 45, 2, 'user', '22-09-1967', 'fecha_nac', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(337, 45, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(338, 45, 4, 'user', '13', 'region', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(339, 45, 5, 'user', '268', 'comuna', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(340, 45, 6, 'user', 'Calle aticano 4378', 'direccion', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(341, 45, 7, 'user', '56978677833', 'telefono', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(342, 45, 17, 'user', '42', 'avatar', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(343, 45, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(344, 45, 18, 'user', 'Ingles', 'idiomas', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(345, 45, 19, 'user', '12', 'ocio', 1, '2020-03-24 20:22:15', '2020-03-24 20:22:15'),
(346, 46, 21, 'user', 'M', 'sexo', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(347, 46, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(348, 46, 1, 'user', '15363485-8', 'rut', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(349, 46, 2, 'user', '01-11-1981', 'fecha_nac', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(350, 46, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(351, 46, 4, 'user', '13', 'region', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(352, 46, 5, 'user', '266', 'comuna', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(353, 46, 6, 'user', 'Vía Regina 6886', 'direccion', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(354, 46, 7, 'user', '56999491966', 'telefono', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(355, 46, 10, 'user', '42', 'calzado', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(356, 46, 11, 'user', '1.70', 'altura', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(357, 46, 12, 'user', '40', 'pantalon', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(358, 46, 13, 'user', 's', 'camisa', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(359, 46, 16, 'user', 'LIDER', 'comerciales', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(360, 46, 17, 'user', '43', 'avatar', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(361, 46, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(362, 46, 20, 'user', '14', 'ocupacion', 1, '2020-03-24 20:28:15', '2020-03-24 20:28:15'),
(363, 47, 21, 'user', 'M', 'sexo', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(364, 47, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(365, 47, 1, 'user', '25704010-0', 'rut', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(366, 47, 2, 'user', '23-01-1982', 'fecha_nac', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(367, 47, 3, 'user', '196', 'nacionalidad', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(368, 47, 4, 'user', '13', 'region', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(369, 47, 5, 'user', '276', 'comuna', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(370, 47, 7, 'user', '56949542355', 'telefono', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(371, 47, 17, 'user', '44', 'avatar', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(372, 47, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(373, 47, 18, 'user', 'Ingles', 'idiomas', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(374, 47, 20, 'user', '15', 'ocupacion', 1, '2020-03-24 20:34:18', '2020-03-24 20:34:18'),
(375, 48, 21, 'user', 'M', 'sexo', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(376, 48, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(377, 48, 1, 'user', '12043057-2', 'rut', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(378, 48, 2, 'user', '25-12-1967', 'fecha_nac', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(379, 48, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(380, 48, 4, 'user', '13', 'region', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(381, 48, 5, 'user', '259', 'comuna', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(382, 48, 6, 'user', 'Las Sophoras 65, block 17 Dpto. 419', 'direccion', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(383, 48, 7, 'user', '56992410922', 'telefono', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(384, 48, 17, 'user', '45', 'avatar', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(385, 48, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(386, 48, 19, 'user', '13', 'ocio', 1, '2020-03-24 20:39:58', '2020-03-24 20:39:58'),
(387, 49, 21, 'user', 'M', 'sexo', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(388, 49, 22, 'user', 'N/A', 'genero', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(389, 49, 1, 'user', '25228798-1', 'rut', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(390, 49, 2, 'user', '05-10-1982', 'fecha_nac', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(391, 49, 3, 'user', '39', 'nacionalidad', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(392, 49, 4, 'user', '13', 'region', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(393, 49, 5, 'user', '297', 'comuna', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(394, 49, 6, 'user', 'Parcela 59, Lomas de Águila,', 'direccion', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(395, 49, 7, 'user', '56991625820', 'telefono', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(396, 49, 17, 'user', '46', 'avatar', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(397, 49, 18, 'user', 'Español', 'idiomas', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(398, 49, 18, 'user', 'Ingles', 'idiomas', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(399, 49, 19, 'user', '14', 'ocio', 1, '2020-03-24 20:54:50', '2020-03-24 20:54:50'),
(400, 50, 21, 'user', 'M', 'sexo', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(401, 50, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(402, 50, 1, 'user', '15472143-6', 'rut', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(403, 50, 2, 'user', '20-08-1982', 'fecha_nac', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(404, 50, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(405, 50, 4, 'user', '13', 'region', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(406, 50, 5, 'user', '279', 'comuna', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(407, 50, 6, 'user', 'Darío Urzúa 1825, Depto 33', 'direccion', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(408, 50, 7, 'user', '56965967718', 'telefono', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(409, 50, 10, 'user', '40', 'calzado', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(410, 50, 11, 'user', '1.75', 'altura', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(411, 50, 12, 'user', '42', 'pantalon', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(412, 50, 13, 'user', 'S', 'camisa', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(413, 50, 16, 'user', 'nubox, falabella, movistar, ccu', 'comerciales', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(414, 50, 17, 'user', '47', 'avatar', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(415, 50, 18, 'user', 'Ingles', 'idiomas', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(416, 50, 18, 'user', 'Ingles', 'idiomas', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(417, 50, 19, 'user', '15', 'ocio', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(418, 50, 19, 'user', '16', 'ocio', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(419, 50, 19, 'user', '17', 'ocio', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(420, 50, 20, 'user', '16', 'ocupacion', 1, '2020-04-14 19:35:35', '2020-04-14 19:35:35'),
(421, 51, 21, 'user', 'F', 'sexo', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(422, 51, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(423, 51, 2, 'user', '10-09-1985', 'fecha_nac', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(424, 51, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(425, 51, 7, 'user', '56958363043', 'telefono', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(426, 51, 17, 'user', '48', 'avatar', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(427, 51, 18, 'user', '3', 'idiomas', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(428, 51, 18, 'user', '5', 'idiomas', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(429, 51, 18, 'user', '3', 'idiomas', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(430, 51, 18, 'user', '5', 'idiomas', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(431, 51, 19, 'user', '10', 'ocio', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(432, 51, 19, 'user', '18', 'ocio', 1, '2020-04-14 19:41:07', '2020-04-14 19:41:07'),
(433, 52, 21, 'user', 'F', 'sexo', 1, '2020-04-14 20:11:47', '2020-04-14 20:11:47'),
(434, 52, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 20:11:47', '2020-04-14 20:11:47'),
(435, 52, 2, 'user', '22-05-1999', 'fecha_nac', 1, '2020-04-14 20:11:47', '2020-04-14 20:11:47'),
(436, 52, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 20:11:47', '2020-04-14 20:11:47'),
(437, 52, 7, 'user', '56962538917', 'telefono', 1, '2020-04-14 20:11:47', '2020-04-14 20:11:47'),
(438, 52, 17, 'user', '49', 'avatar', 1, '2020-04-14 20:11:47', '2020-04-14 20:11:47'),
(439, 53, 21, 'user', 'F', 'sexo', 1, '2020-04-14 20:18:25', '2020-04-14 20:18:25'),
(440, 53, 22, 'user', 'Lesbiana', 'genero', 1, '2020-04-14 20:18:25', '2020-04-14 20:18:25'),
(441, 53, 2, 'user', '12-06-1980', 'fecha_nac', 1, '2020-04-14 20:18:25', '2020-04-14 20:18:25'),
(442, 53, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 20:18:25', '2020-04-14 20:18:25'),
(443, 53, 7, 'user', '569998799257', 'telefono', 1, '2020-04-14 20:18:25', '2020-04-14 20:18:25'),
(444, 53, 17, 'user', '50', 'avatar', 1, '2020-04-14 20:18:25', '2020-04-14 20:18:25'),
(445, 54, 21, 'user', 'F', 'sexo', 1, '2020-04-14 20:26:18', '2020-04-14 20:26:18'),
(446, 54, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 20:26:18', '2020-04-14 20:26:18'),
(447, 54, 2, 'user', '09-02-1983', 'fecha_nac', 1, '2020-04-14 20:26:18', '2020-04-14 20:26:18'),
(448, 54, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 20:26:18', '2020-04-14 20:26:18'),
(449, 54, 7, 'user', '56998275212', 'telefono', 1, '2020-04-14 20:26:18', '2020-04-14 20:26:18'),
(450, 54, 17, 'user', '51', 'avatar', 1, '2020-04-14 20:26:18', '2020-04-14 20:26:18'),
(451, 55, 21, 'user', 'F', 'sexo', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(452, 55, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(453, 55, 2, 'user', '11-04-1995', 'fecha_nac', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(454, 55, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(455, 55, 7, 'user', '56977663681', 'telefono', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(456, 55, 9, 'user', '@ximecifuentes', 'instagram', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(457, 55, 17, 'user', '52', 'avatar', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(458, 55, 18, 'user', 'Español', 'idiomas', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(459, 55, 18, 'user', 'Ingles', 'idiomas', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(460, 55, 18, 'user', 'Español', 'idiomas', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(461, 55, 18, 'user', 'Ingles', 'idiomas', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(462, 55, 19, 'user', '13', 'ocio', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(463, 55, 19, 'user', '19', 'ocio', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(464, 55, 19, 'user', '20', 'ocio', 1, '2020-04-14 20:36:52', '2020-04-14 20:36:52'),
(465, 56, 21, 'user', 'F', 'sexo', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(466, 56, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(467, 56, 1, 'user', '19953831-4', 'rut', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(468, 56, 2, 'user', '21-03-1998', 'fecha_nac', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(469, 56, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(470, 56, 4, 'user', '13', 'region', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(471, 56, 5, 'user', '266', 'comuna', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(472, 56, 6, 'user', 'Av Alcalde Fernando Castillo Velasco 8150', 'direccion', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(473, 56, 7, 'user', '56953724205', 'telefono', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(474, 56, 9, 'user', '@antohaeger', 'instagram', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(475, 56, 17, 'user', '53', 'avatar', 1, '2020-04-14 20:40:04', '2020-04-14 20:40:04'),
(476, 57, 21, 'user', 'M', 'sexo', 1, '2020-04-14 20:46:19', '2020-04-14 20:46:19'),
(477, 57, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 20:46:19', '2020-04-14 20:46:19'),
(478, 57, 1, 'user', '21527803-4', 'rut', 1, '2020-04-14 20:46:19', '2020-04-14 20:46:19'),
(479, 57, 2, 'user', '15-12-2004', 'fecha_nac', 1, '2020-04-14 20:46:19', '2020-04-14 20:46:19'),
(480, 57, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 20:46:19', '2020-04-14 20:46:19'),
(481, 57, 17, 'user', '54', 'avatar', 1, '2020-04-14 20:46:19', '2020-04-14 20:46:19'),
(482, 58, 21, 'user', 'F', 'sexo', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(483, 58, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(484, 58, 1, 'user', '26750089-4', 'rut', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(485, 58, 2, 'user', '25-10-1996', 'fecha_nac', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(486, 58, 3, 'user', '196', 'nacionalidad', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(487, 58, 4, 'user', '13', 'region', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(488, 58, 5, 'user', '289', 'comuna', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(489, 58, 6, 'user', 'Lord Corhane 209', 'direccion', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(490, 58, 7, 'user', '56978732521', 'telefono', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(491, 58, 10, 'user', '36', 'calzado', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(492, 58, 11, 'user', '1.56', 'altura', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(493, 58, 12, 'user', '34', 'pantalon', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(494, 58, 13, 'user', 'xs', 'camisa', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(495, 58, 17, 'user', '55', 'avatar', 1, '2020-04-14 20:52:10', '2020-04-14 20:52:10'),
(496, 59, 21, 'user', 'F', 'sexo', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(497, 59, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(498, 59, 1, 'user', '17599801-2', 'rut', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(499, 59, 2, 'user', '05-09-1990', 'fecha_nac', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(500, 59, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(501, 59, 7, 'user', '56993579199', 'telefono', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(502, 59, 10, 'user', '37', 'calzado', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(503, 59, 11, 'user', '1.64', 'altura', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(504, 59, 12, 'user', '36', 'pantalon', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(505, 59, 13, 'user', 'S', 'camisa', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(506, 59, 17, 'user', '56', 'avatar', 1, '2020-04-14 20:57:37', '2020-04-14 20:57:37'),
(507, 60, 21, 'user', 'F', 'sexo', 1, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(508, 60, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(509, 60, 1, 'user', '20704317-6', 'rut', 1, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(510, 60, 2, 'user', '23-11-2000', 'fecha_nac', 1, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(511, 60, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(512, 60, 7, 'user', '56992348872', 'telefono', 1, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(513, 60, 17, 'user', '57', 'avatar', 1, '2020-04-14 21:00:42', '2020-04-14 21:00:42'),
(514, 61, 21, 'user', 'F', 'sexo', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(515, 61, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(516, 61, 1, 'user', '20283049-8', 'rut', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(517, 61, 2, 'user', '17-06-1999', 'fecha_nac', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(518, 61, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(519, 61, 4, 'user', '13', 'region', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(520, 61, 5, 'user', '291', 'comuna', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(521, 61, 6, 'user', 'Las Hualtatas 10074,', 'direccion', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(522, 61, 7, 'user', '56962706945', 'telefono', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(523, 61, 17, 'user', '58', 'avatar', 1, '2020-04-14 21:10:32', '2020-04-14 21:10:32'),
(524, 62, 21, 'user', 'F', 'sexo', 1, '2020-04-14 21:13:34', '2020-04-14 21:13:34'),
(525, 62, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:13:34', '2020-04-14 21:13:34'),
(526, 62, 2, 'user', '03-06-2000', 'fecha_nac', 1, '2020-04-14 21:13:34', '2020-04-14 21:13:34'),
(527, 62, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 21:13:34', '2020-04-14 21:13:34'),
(528, 62, 7, 'user', '56958513012', 'telefono', 1, '2020-04-14 21:13:34', '2020-04-14 21:13:34'),
(529, 62, 17, 'user', '59', 'avatar', 1, '2020-04-14 21:13:34', '2020-04-14 21:13:34'),
(530, 63, 21, 'user', 'F', 'sexo', 1, '2020-04-14 21:17:21', '2020-04-14 21:17:21'),
(531, 63, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:17:21', '2020-04-14 21:17:21'),
(532, 63, 2, 'user', '15-07-1999', 'fecha_nac', 1, '2020-04-14 21:17:21', '2020-04-14 21:17:21'),
(533, 63, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 21:17:21', '2020-04-14 21:17:21'),
(534, 63, 7, 'user', '56997040187', 'telefono', 1, '2020-04-14 21:17:21', '2020-04-14 21:17:21'),
(535, 63, 17, 'user', '60', 'avatar', 1, '2020-04-14 21:17:21', '2020-04-14 21:17:21'),
(536, 64, 21, 'user', 'F', 'sexo', 1, '2020-04-14 21:21:49', '2020-04-14 21:21:49'),
(537, 64, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:21:50', '2020-04-14 21:21:50'),
(538, 64, 1, 'user', '18777171-4', 'rut', 1, '2020-04-14 21:21:50', '2020-04-14 21:21:50'),
(539, 64, 2, 'user', '05-06-1994', 'fecha_nac', 1, '2020-04-14 21:21:50', '2020-04-14 21:21:50'),
(540, 64, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 21:21:50', '2020-04-14 21:21:50'),
(541, 64, 7, 'user', '569954301979', 'telefono', 1, '2020-04-14 21:21:50', '2020-04-14 21:21:50'),
(542, 64, 17, 'user', '61', 'avatar', 1, '2020-04-14 21:21:50', '2020-04-14 21:21:50'),
(543, 65, 21, 'user', 'F', 'sexo', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(544, 65, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(545, 65, 2, 'user', '24-09-2000', 'fecha_nac', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(546, 65, 3, 'user', '40', 'nacionalidad', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(547, 65, 4, 'user', '13', 'region', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(548, 65, 5, 'user', '289', 'comuna', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(549, 65, 6, 'user', 'Santo Domingo 1364,', 'direccion', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(550, 65, 7, 'user', '56973325505', 'telefono', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(551, 65, 10, 'user', '38', 'calzado', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(552, 65, 11, 'user', '1.65', 'altura', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(553, 65, 12, 'user', '38', 'pantalon', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(554, 65, 13, 'user', 'S', 'camisa', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(555, 65, 17, 'user', '62', 'avatar', 1, '2020-04-14 21:26:59', '2020-04-14 21:26:59'),
(556, 66, 21, 'user', 'F', 'sexo', 1, '2020-04-14 21:35:38', '2020-04-14 21:35:38'),
(557, 66, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:35:38', '2020-04-14 21:35:38'),
(558, 66, 1, 'user', '20099755-7', 'rut', 1, '2020-04-14 21:35:38', '2020-04-14 21:35:38');
INSERT INTO `user_metas` (`id`, `user_id`, `meta_id`, `tabla`, `meta_value`, `meta_key`, `status`, `created_at`, `updated_at`) VALUES
(559, 66, 2, 'user', '02-02-1999', 'fecha_nac', 1, '2020-04-14 21:35:38', '2020-04-14 21:35:38'),
(560, 66, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 21:35:38', '2020-04-14 21:35:38'),
(561, 66, 7, 'user', '56962712323', 'telefono', 1, '2020-04-14 21:35:38', '2020-04-14 21:35:38'),
(562, 66, 17, 'user', '63', 'avatar', 1, '2020-04-14 21:35:38', '2020-04-14 21:35:38'),
(563, 67, 21, 'user', 'F', 'sexo', 1, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(564, 67, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(565, 67, 1, 'user', '20075333-K', 'rut', 1, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(566, 67, 2, 'user', '15-04-1999', 'fecha_nac', 1, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(567, 67, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(568, 67, 7, 'user', '56994394177', 'telefono', 1, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(569, 67, 17, 'user', '64', 'avatar', 1, '2020-04-14 21:44:13', '2020-04-14 21:44:13'),
(570, 68, 21, 'user', 'M', 'sexo', 1, '2020-04-14 21:48:33', '2020-04-14 21:48:33'),
(571, 68, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:48:33', '2020-04-14 21:48:33'),
(572, 68, 1, 'user', '26320191-4', 'rut', 1, '2020-04-14 21:48:33', '2020-04-14 21:48:33'),
(573, 68, 2, 'user', '03-08-1999', 'fecha_nac', 1, '2020-04-14 21:48:33', '2020-04-14 21:48:33'),
(574, 68, 3, 'user', '40', 'nacionalidad', 1, '2020-04-14 21:48:33', '2020-04-14 21:48:33'),
(575, 68, 7, 'user', '56962645238', 'telefono', 1, '2020-04-14 21:48:33', '2020-04-14 21:48:33'),
(576, 68, 17, 'user', '65', 'avatar', 1, '2020-04-14 21:48:34', '2020-04-14 21:48:34'),
(577, 69, 21, 'user', 'M', 'sexo', 1, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(578, 69, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(579, 69, 1, 'user', '20282867-1', 'rut', 1, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(580, 69, 2, 'user', '10-10-1995', 'fecha_nac', 1, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(581, 69, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(582, 69, 7, 'user', '56976644348', 'telefono', 1, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(583, 69, 17, 'user', '66', 'avatar', 1, '2020-04-14 21:57:43', '2020-04-14 21:57:43'),
(584, 70, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(585, 70, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(586, 70, 1, 'user', '20199156-0', 'rut', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(587, 70, 2, 'user', '30-03-1999', 'fecha_nac', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(588, 70, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(589, 70, 4, 'user', '13', 'region', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(590, 70, 5, 'user', '289', 'comuna', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(591, 70, 6, 'user', 'Vicuña Mackenna 625,', 'direccion', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(592, 70, 7, 'user', '56957916150', 'telefono', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(593, 70, 17, 'user', '67', 'avatar', 1, '2020-04-14 22:03:08', '2020-04-14 22:03:08'),
(594, 71, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(595, 71, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(596, 71, 1, 'user', '20237449-2', 'rut', 1, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(597, 71, 2, 'user', '24-04-1999', 'fecha_nac', 1, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(598, 71, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(599, 71, 7, 'user', '56954218159', 'telefono', 1, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(600, 71, 17, 'user', '68', 'avatar', 1, '2020-04-14 22:10:24', '2020-04-14 22:10:24'),
(601, 72, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(602, 72, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(603, 72, 2, 'user', '31-05-1992', 'fecha_nac', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(604, 72, 3, 'user', '27', 'nacionalidad', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(605, 72, 4, 'user', '13', 'region', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(606, 72, 5, 'user', '273', 'comuna', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(607, 72, 6, 'user', 'Bambu Cuatro 517', 'direccion', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(608, 72, 7, 'user', '56993166058', 'telefono', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(609, 72, 10, 'user', '41', 'calzado', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(610, 72, 11, 'user', '1.69', 'altura', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(611, 72, 12, 'user', '40', 'pantalon', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(612, 72, 13, 'user', 'M', 'camisa', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(613, 72, 17, 'user', '69', 'avatar', 1, '2020-04-14 22:14:58', '2020-04-14 22:14:58'),
(614, 73, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(615, 73, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(616, 73, 1, 'user', '20080964-5', 'rut', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(617, 73, 2, 'user', '17-05-1999', 'fecha_nac', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(618, 73, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(619, 73, 4, 'user', '13', 'region', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(620, 73, 5, 'user', '282', 'comuna', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(621, 73, 6, 'user', 'Villa Sana 2039,', 'direccion', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(622, 73, 7, 'user', '56950891675', 'telefono', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(623, 73, 17, 'user', '70', 'avatar', 1, '2020-04-14 22:19:50', '2020-04-14 22:19:50'),
(624, 74, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(625, 74, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(626, 74, 2, 'user', '22-01-1995', 'fecha_nac', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(627, 74, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(628, 74, 4, 'user', '13', 'region', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(629, 74, 5, 'user', '279', 'comuna', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(630, 74, 6, 'user', 'Av. Nueva de Lyon 0170', 'direccion', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(631, 74, 7, 'user', '56994997636', 'telefono', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(632, 74, 10, 'user', '41', 'calzado', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(633, 74, 11, 'user', '1.72', 'altura', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(634, 74, 12, 'user', '34', 'pantalon', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(635, 74, 13, 'user', 'M', 'camisa', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(636, 74, 17, 'user', '71', 'avatar', 1, '2020-04-14 22:22:54', '2020-04-14 22:22:54'),
(637, 75, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(638, 75, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(639, 75, 1, 'user', '21529975-9', 'rut', 1, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(640, 75, 2, 'user', '17-06-1998', 'fecha_nac', 1, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(641, 75, 3, 'user', '46', 'nacionalidad', 1, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(642, 75, 7, 'user', '56951964591', 'telefono', 1, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(643, 75, 17, 'user', '72', 'avatar', 1, '2020-04-14 22:26:16', '2020-04-14 22:26:16'),
(644, 76, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(645, 76, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(646, 76, 1, 'user', '26899083-6', 'rut', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(647, 76, 2, 'user', '15-02-1995', 'fecha_nac', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(648, 76, 3, 'user', '122', 'nacionalidad', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(649, 76, 7, 'user', '56998551959', 'telefono', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(650, 76, 10, 'user', '42', 'calzado', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(651, 76, 11, 'user', '1.74', 'altura', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(652, 76, 12, 'user', '36', 'pantalon', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(653, 76, 13, 'user', '42', 'camisa', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(654, 76, 17, 'user', '73', 'avatar', 1, '2020-04-14 22:29:47', '2020-04-14 22:29:47'),
(655, 77, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(656, 77, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(657, 77, 1, 'user', '19860271-K', 'rut', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(658, 77, 2, 'user', '05-01-1998', 'fecha_nac', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(659, 77, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(660, 77, 4, 'user', '13', 'region', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(661, 77, 5, 'user', '276', 'comuna', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(662, 77, 6, 'user', 'Los filósofos 5058', 'direccion', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(663, 77, 7, 'user', '56935595493', 'telefono', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(664, 77, 17, 'user', '74', 'avatar', 1, '2020-04-14 22:43:55', '2020-04-14 22:43:55'),
(665, 78, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:46:34', '2020-04-14 22:46:34'),
(666, 78, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:46:34', '2020-04-14 22:46:34'),
(667, 78, 2, 'user', '04-07-1997', 'fecha_nac', 1, '2020-04-14 22:46:34', '2020-04-14 22:46:34'),
(668, 78, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:46:34', '2020-04-14 22:46:34'),
(669, 78, 7, 'user', '56965438840', 'telefono', 1, '2020-04-14 22:46:34', '2020-04-14 22:46:34'),
(670, 78, 17, 'user', '75', 'avatar', 1, '2020-04-14 22:46:34', '2020-04-14 22:46:34'),
(671, 79, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:49:21', '2020-04-14 22:49:21'),
(672, 79, 22, 'user', 'Gay', 'genero', 1, '2020-04-14 22:49:21', '2020-04-14 22:49:21'),
(673, 79, 2, 'user', '12-06-1982', 'fecha_nac', 1, '2020-04-14 22:49:21', '2020-04-14 22:49:21'),
(674, 79, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:49:21', '2020-04-14 22:49:21'),
(675, 79, 7, 'user', '56974087877', 'telefono', 1, '2020-04-14 22:49:21', '2020-04-14 22:49:21'),
(676, 79, 17, 'user', '76', 'avatar', 1, '2020-04-14 22:49:21', '2020-04-14 22:49:21'),
(677, 80, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(678, 80, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(679, 80, 2, 'user', '08-09-1968', 'fecha_nac', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(680, 80, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(681, 80, 4, 'user', '13', 'region', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(682, 80, 5, 'user', '299', 'comuna', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(683, 80, 6, 'user', 'Jose Luis Coo 0117, depto 12', 'direccion', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(684, 80, 7, 'user', '56977796047', 'telefono', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(685, 80, 17, 'user', '77', 'avatar', 1, '2020-04-14 22:53:58', '2020-04-14 22:53:58'),
(686, 81, 21, 'user', 'M', 'sexo', 1, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(687, 81, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(688, 81, 1, 'user', '15642349-1', 'rut', 1, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(689, 81, 2, 'user', '11-04-1984', 'fecha_nac', 1, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(690, 81, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(691, 81, 7, 'user', '56988477017', 'telefono', 1, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(692, 81, 17, 'user', '78', 'avatar', 1, '2020-04-14 22:57:25', '2020-04-14 22:57:25'),
(693, 82, 21, 'user', 'M', 'sexo', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(694, 82, 22, 'user', 'N/A', 'genero', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(695, 82, 1, 'user', '14118431-8', 'rut', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(696, 82, 2, 'user', '22-01-1981', 'fecha_nac', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(697, 82, 3, 'user', '39', 'nacionalidad', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(698, 82, 4, 'user', '13', 'region', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(699, 82, 5, 'user', '292', 'comuna', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(700, 82, 6, 'user', 'Montenegro 2355', 'direccion', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(701, 82, 7, 'user', '56982568271', 'telefono', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(702, 82, 17, 'user', '79', 'avatar', 1, '2020-04-14 23:03:37', '2020-04-14 23:03:37'),
(705, 5, 18, 'user', 'Español', 'idiomas', 1, '2020-01-22 19:24:23', '2020-01-22 19:24:23'),
(706, 5, 21, 'user', 'F', 'sexo', 1, '2020-04-20 06:07:32', '2020-04-20 06:07:32'),
(707, 5, 22, 'user', 'Lesbiana', 'genero', 1, '2020-04-20 06:07:32', '2020-04-20 07:16:47'),
(708, 5, 8, 'user', 'ffdffdfd', 'facebook', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(709, 5, 14, 'user', 'vxvxxv', 'notas', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(710, 5, 18, 'user', '1', 'idiomas', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(711, 5, 18, 'user', '2', 'idiomas', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(712, 5, 18, 'user', '1', 'idiomas', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(713, 5, 18, 'user', '2', 'idiomas', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(714, 5, 19, 'user', '2', 'ocio', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(715, 5, 19, 'user', '3', 'ocio', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(716, 5, 20, 'user', '3', 'ocupacion', 1, '2020-04-20 06:07:33', '2020-04-20 06:07:33'),
(717, 4, 21, 'user', 'F', 'sexo', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(718, 4, 22, 'user', 'Trans', 'genero', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(719, 4, 8, 'user', 'fabriola', 'facebook', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(720, 4, 14, 'user', 'sddsds', 'notas', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(721, 4, 18, 'user', '1', 'idiomas', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(722, 4, 18, 'user', '1', 'idiomas', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(723, 4, 19, 'user', '1', 'ocio', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(724, 4, 19, 'user', '4', 'ocio', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(725, 4, 20, 'user', '1', 'ocupacion', 1, '2020-04-20 06:15:56', '2020-04-20 06:15:56'),
(726, 4, 18, 'user', 'Español', 'idiomas', 1, '2020-04-20 06:17:09', '2020-04-20 06:17:09'),
(727, 4, 18, 'user', 'Español', 'idiomas', 1, '2020-04-20 06:17:09', '2020-04-20 06:17:09'),
(728, 4, 19, 'user', '1', 'ocio', 1, '2020-04-20 06:17:09', '2020-04-20 06:17:09'),
(729, 4, 19, 'user', '4', 'ocio', 1, '2020-04-20 06:17:09', '2020-04-20 06:17:09'),
(730, 4, 20, 'user', '1', 'ocupacion', 1, '2020-04-20 06:17:09', '2020-04-20 06:17:09'),
(731, 6, 21, 'user', 'F', 'sexo', 1, '2020-04-20 06:24:44', '2020-04-20 06:24:44'),
(732, 6, 22, 'user', 'Gay', 'genero', 1, '2020-04-20 06:24:44', '2020-04-20 06:24:44'),
(733, 6, 5, 'user', '1', 'comuna', 1, '2020-04-20 06:24:44', '2020-04-20 06:24:44'),
(734, 6, 6, 'user', 'Manualita Saenz calle 11 casa nro 43', 'direccion', 1, '2020-04-20 06:24:44', '2020-04-20 06:24:44'),
(735, 6, 18, 'user', 'Ingles', 'idiomas', 1, '2020-04-20 06:24:44', '2020-04-20 06:32:03'),
(745, 6, 19, 'user', '4', 'ocio', 1, '2020-04-20 06:29:38', '2020-04-20 06:33:09'),
(746, 6, 19, 'user', '2', 'ocio', 1, '2020-04-20 06:29:38', '2020-04-20 06:29:38'),
(750, 6, 14, 'user', 'ninguna', 'notas', 1, '2020-04-20 06:31:12', '2020-04-20 06:31:12'),
(751, 6, 15, 'user', 'fsfffd', 'derechos', 1, '2020-04-20 06:33:09', '2020-04-20 06:33:09'),
(752, 6, 20, 'user', '2', 'ocupacion', 1, '2020-04-20 06:45:16', '2020-04-20 06:45:16'),
(753, 6, 20, 'user', '3', 'ocupacion', 1, '2020-04-20 06:45:16', '2020-04-20 06:45:16'),
(754, 18, 18, 'user', 'Español', 'idiomas', 1, '2020-04-20 06:50:15', '2020-04-20 06:50:15'),
(755, 18, 18, 'user', 'Francés', 'idiomas', 1, '2020-04-20 06:50:15', '2020-04-20 06:50:15'),
(756, 18, 19, 'user', '2', 'ocio', 1, '2020-04-20 06:50:15', '2020-04-20 06:50:15'),
(757, 18, 19, 'user', '5', 'ocio', 1, '2020-04-20 06:50:15', '2020-04-20 06:50:15'),
(758, 18, 20, 'user', '2', 'ocupacion', 1, '2020-04-20 06:50:15', '2020-04-20 06:50:15'),
(759, 18, 18, 'user', 'Gay', 'idiomas', 1, '2020-04-20 06:59:30', '2020-04-20 06:59:30'),
(760, 18, 22, 'user', 'Gay', 'genero', 1, '2020-04-20 07:14:05', '2020-04-20 07:14:05'),
(761, 18, 18, 'user', 'Español', 'idiomas', 1, '2020-04-20 07:14:05', '2020-04-20 07:14:05'),
(762, 18, 18, 'user', 'Francés', 'idiomas', 1, '2020-04-20 07:14:05', '2020-04-20 07:14:05'),
(763, 18, 19, 'user', '2', 'ocio', 1, '2020-04-20 07:14:05', '2020-04-20 07:14:05'),
(764, 18, 19, 'user', '5', 'ocio', 1, '2020-04-20 07:14:05', '2020-04-20 07:14:05'),
(765, 18, 20, 'user', '2', 'ocupacion', 1, '2020-04-20 07:14:05', '2020-04-20 07:14:05'),
(766, 5, 9, 'user', 'okidoki', 'instagram', 1, '2020-04-20 07:16:47', '2020-04-20 07:16:47'),
(767, 5, 18, 'user', '1', 'idiomas', 1, '2020-04-20 07:16:47', '2020-04-20 07:16:47'),
(768, 5, 18, 'user', '2', 'idiomas', 1, '2020-04-20 07:16:47', '2020-04-20 07:16:47'),
(769, 5, 18, 'user', '5', 'idiomas', 1, '2020-04-20 07:16:47', '2020-04-20 07:16:47'),
(770, 5, 19, 'user', '2', 'ocio', 1, '2020-04-20 07:16:47', '2020-04-20 07:16:47'),
(771, 5, 19, 'user', '3', 'ocio', 1, '2020-04-20 07:16:47', '2020-04-20 07:16:47'),
(772, 5, 20, 'user', '3', 'ocupacion', 1, '2020-04-20 07:16:47', '2020-04-20 07:16:47'),
(773, 87, 21, 'user', 'F', 'sexo', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(774, 87, 22, 'user', 'Trans', 'genero', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(775, 87, 1, 'user', '24994203-0', 'rut', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(776, 87, 2, 'user', '05-04-2002', 'fecha_nac', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(777, 87, 3, 'user', '39', 'nacionalidad', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(778, 87, 4, 'user', '4', 'region', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(779, 87, 5, 'user', '30', 'comuna', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(780, 87, 6, 'user', 'Manualita Saenz calle 11 casa nro 43', 'direccion', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(781, 87, 7, 'user', '04269328863', 'telefono', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(782, 87, 8, 'user', 'fabriola', 'facebook', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(783, 87, 9, 'user', 'fran', 'instagram', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(784, 87, 10, 'user', '12', 'calzado', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(785, 87, 11, 'user', '2', 'altura', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(786, 87, 12, 'user', '12', 'pantalon', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(787, 87, 13, 'user', '2', 'camisa', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(788, 87, 14, 'user', 'fdgfg', 'notas', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(789, 87, 15, 'user', 'gv', 'derechos', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(790, 87, 16, 'user', 'jbn,', 'comerciales', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(791, 87, 17, 'user', '85', 'avatar', 1, '2020-04-20 07:26:16', '2020-04-20 07:26:16'),
(792, 89, 21, 'user', 'F', 'sexo', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(793, 89, 22, 'user', 'Trans', 'genero', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(794, 89, 1, 'user', '24994203-0', 'rut', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(795, 89, 2, 'user', '05-04-2002', 'fecha_nac', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(796, 89, 3, 'user', '39', 'nacionalidad', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(797, 89, 6, 'user', 'Manualita Saenz calle 11 casa nro 43', 'direccion', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(798, 89, 7, 'user', '04269328863', 'telefono', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(799, 89, 8, 'user', 'fabriola', 'facebook', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(800, 89, 9, 'user', 'fran', 'instagram', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(801, 89, 10, 'user', '12', 'calzado', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(802, 89, 11, 'user', '2', 'altura', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(803, 89, 12, 'user', '12', 'pantalon', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(804, 89, 13, 'user', '2', 'camisa', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(805, 89, 14, 'user', 'fdgfg', 'notas', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(806, 89, 15, 'user', 'gv', 'derechos', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(807, 89, 16, 'user', 'jbn,', 'comerciales', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(808, 89, 17, 'user', '87', 'avatar', 1, '2020-04-20 07:34:17', '2020-04-20 07:34:17'),
(809, 91, 21, 'user', 'F', 'sexo', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(810, 91, 22, 'user', 'Trans', 'genero', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(811, 91, 1, 'user', '24994203-0', 'rut', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(812, 91, 2, 'user', '05-04-2002', 'fecha_nac', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(813, 91, 3, 'user', '39', 'nacionalidad', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(814, 91, 4, 'user', '5', 'region', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(815, 91, 5, 'user', '58', 'comuna', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(816, 91, 6, 'user', 'Manualita Saenz calle 11 casa nro 43', 'direccion', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(817, 91, 7, 'user', '04269328863', 'telefono', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(818, 91, 8, 'user', 'fabriola', 'facebook', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(819, 91, 9, 'user', 'fran', 'instagram', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(820, 91, 10, 'user', '12', 'calzado', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(821, 91, 11, 'user', '2', 'altura', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(822, 91, 12, 'user', '12', 'pantalon', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(823, 91, 13, 'user', '2', 'camisa', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(824, 91, 14, 'user', 'fdgfg', 'notas', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(825, 91, 15, 'user', 'gv', 'derechos', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(826, 91, 16, 'user', 'jbn,', 'comerciales', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40'),
(827, 91, 17, 'user', '89', 'avatar', 1, '2020-04-20 07:37:40', '2020-04-20 07:37:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_rols`
--

CREATE TABLE `user_rols` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_rols`
--

INSERT INTO `user_rols` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, '2020-01-22 18:59:50', '2020-01-22 18:59:50'),
(2, 'Modelo', 1, '2020-01-22 18:59:50', '2020-01-22 18:59:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comunas_region_id_foreign` (`region_id`);

--
-- Indices de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convocatorias_client_id_foreign` (`client_id`);

--
-- Indices de la tabla `convocatoria_metas`
--
ALTER TABLE `convocatoria_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convocatoria_metas_convocatoria_id_foreign` (`convocatoria_id`),
  ADD KEY `convocatoria_metas_meta_id_foreign` (`meta_id`);

--
-- Indices de la tabla `convocatoria_papels`
--
ALTER TABLE `convocatoria_papels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convocatoria_papels_convocatoria_id_foreign` (`convocatoria_id`);

--
-- Indices de la tabla `convocatoria_papel_metas`
--
ALTER TABLE `convocatoria_papel_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convocatoria_papel_metas_convocatoria_papel_id_foreign` (`convocatoria_papel_id`),
  ADD KEY `convocatoria_papel_metas_meta_id_foreign` (`meta_id`);

--
-- Indices de la tabla `convocatoria_users`
--
ALTER TABLE `convocatoria_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convocatoria_users_convocatoria_id_foreign` (`convocatoria_id`),
  ADD KEY `convocatoria_users_user_id_foreign` (`user_id`),
  ADD KEY `convocatoria_users_papel_foreign` (`papel`);

--
-- Indices de la tabla `convocatoria_user_pagos`
--
ALTER TABLE `convocatoria_user_pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convocatoria_user_pagos_convocatoria_user_id_foreign` (`convocatoria_user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medios`
--
ALTER TABLE `medios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `notification_tipos`
--
ALTER TABLE `notification_tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ocios`
--
ALTER TABLE `ocios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ocupacions`
--
ALTER TABLE `ocupacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productoras`
--
ALTER TABLE `productoras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regiones_region_unique` (`region`),
  ADD KEY `regiones_nacionalidad_id_foreign` (`nacionalidad_id`);

--
-- Indices de la tabla `territorios`
--
ALTER TABLE `territorios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rol_id_foreign` (`rol_id`);

--
-- Indices de la tabla `user_metas`
--
ALTER TABLE `user_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_metas_user_id_foreign` (`user_id`),
  ADD KEY `user_metas_meta_id_foreign` (`meta_id`);

--
-- Indices de la tabla `user_rols`
--
ALTER TABLE `user_rols`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `competencias`
--
ALTER TABLE `competencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `convocatoria_metas`
--
ALTER TABLE `convocatoria_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `convocatoria_papels`
--
ALTER TABLE `convocatoria_papels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `convocatoria_papel_metas`
--
ALTER TABLE `convocatoria_papel_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `convocatoria_users`
--
ALTER TABLE `convocatoria_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `convocatoria_user_pagos`
--
ALTER TABLE `convocatoria_user_pagos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `medios`
--
ALTER TABLE `medios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notification_tipos`
--
ALTER TABLE `notification_tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ocios`
--
ALTER TABLE `ocios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `ocupacions`
--
ALTER TABLE `ocupacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `productoras`
--
ALTER TABLE `productoras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `territorios`
--
ALTER TABLE `territorios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `user_metas`
--
ALTER TABLE `user_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT de la tabla `user_rols`
--
ALTER TABLE `user_rols`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`);

--
-- Filtros para la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  ADD CONSTRAINT `convocatorias_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`);

--
-- Filtros para la tabla `convocatoria_metas`
--
ALTER TABLE `convocatoria_metas`
  ADD CONSTRAINT `convocatoria_metas_convocatoria_id_foreign` FOREIGN KEY (`convocatoria_id`) REFERENCES `convocatorias` (`id`),
  ADD CONSTRAINT `convocatoria_metas_meta_id_foreign` FOREIGN KEY (`meta_id`) REFERENCES `metas` (`id`);

--
-- Filtros para la tabla `convocatoria_papels`
--
ALTER TABLE `convocatoria_papels`
  ADD CONSTRAINT `convocatoria_papels_convocatoria_id_foreign` FOREIGN KEY (`convocatoria_id`) REFERENCES `convocatorias` (`id`);

--
-- Filtros para la tabla `convocatoria_papel_metas`
--
ALTER TABLE `convocatoria_papel_metas`
  ADD CONSTRAINT `convocatoria_papel_metas_convocatoria_papel_id_foreign` FOREIGN KEY (`convocatoria_papel_id`) REFERENCES `convocatoria_papels` (`id`),
  ADD CONSTRAINT `convocatoria_papel_metas_meta_id_foreign` FOREIGN KEY (`meta_id`) REFERENCES `metas` (`id`);

--
-- Filtros para la tabla `convocatoria_users`
--
ALTER TABLE `convocatoria_users`
  ADD CONSTRAINT `convocatoria_users_convocatoria_id_foreign` FOREIGN KEY (`convocatoria_id`) REFERENCES `convocatorias` (`id`),
  ADD CONSTRAINT `convocatoria_users_papel_foreign` FOREIGN KEY (`papel`) REFERENCES `convocatoria_papels` (`id`),
  ADD CONSTRAINT `convocatoria_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `convocatoria_user_pagos`
--
ALTER TABLE `convocatoria_user_pagos`
  ADD CONSTRAINT `convocatoria_user_pagos_convocatoria_user_id_foreign` FOREIGN KEY (`convocatoria_user_id`) REFERENCES `convocatoria_users` (`id`);

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD CONSTRAINT `regiones_nacionalidad_id_foreign` FOREIGN KEY (`nacionalidad_id`) REFERENCES `nacionalidad` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rol_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `user_rols` (`id`);

--
-- Filtros para la tabla `user_metas`
--
ALTER TABLE `user_metas`
  ADD CONSTRAINT `user_metas_meta_id_foreign` FOREIGN KEY (`meta_id`) REFERENCES `metas` (`id`),
  ADD CONSTRAINT `user_metas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
