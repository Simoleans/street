-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2020 a las 03:31:49
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
-- Base de datos: `street`
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
(1, 'Kiko', NULL, 1, '2020-05-02 01:18:43', '2020-05-02 01:18:43');

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
(1, 'RCTV', '1', '2020-05-02 01:20:03', '2020-05-02 01:20:03'),
(2, 'Televen', '1', '2020-05-02 01:20:09', '2020-05-02 01:20:09'),
(3, 'Canal I', '1', '2020-05-02 02:11:08', '2020-05-02 02:11:08');

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
  `client_id` int(10) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha_filmacion` date NOT NULL,
  `fecha_prueba` date NOT NULL,
  `fecha_callback` date NOT NULL,
  `fecha_ensayo` date NOT NULL,
  `duracion` int(11) NOT NULL,
  `medio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `productora_id` bigint(20) UNSIGNED DEFAULT NULL,
  `territorio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `competencia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `producto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dia_casting` date DEFAULT NULL,
  `presupuesto` int(11) DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comuna_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `convocatorias`
--

INSERT INTO `convocatorias` (`id`, `titulo`, `client_id`, `status`, `created_at`, `updated_at`, `fecha_filmacion`, `fecha_prueba`, `fecha_callback`, `fecha_ensayo`, `duracion`, `medio_id`, `productora_id`, `territorio_id`, `competencia_id`, `tipo`, `producto`, `dia_casting`, `presupuesto`, `direccion`, `region_id`, `comuna_id`) VALUES
(9, 'francisco', 1, 1, '2020-05-02 02:10:17', '2020-05-02 02:10:17', '2020-05-15', '2020-05-09', '2020-05-03', '2020-05-03', 3, 1, 1, 1, NULL, 'N', 'Novela', '2020-05-23', 12345, 'Manualita Saenz calle 11 casa nro 43', 11, 240),
(10, 'Calle luna calle sol', 1, 1, '2020-05-02 02:12:05', '2020-05-02 02:12:05', '2020-05-30', '2020-05-15', '2020-05-10', '2020-05-14', 12, 1, 1, 1, NULL, 'N', 'novela', '2020-05-14', 12300, 'Manualita Saenz calle 11 casa nro 43', 8, 166),
(12, 'Convcatoria a usuarios', 1, 1, '2020-05-02 03:27:22', '2020-05-02 03:27:22', '2020-05-09', '2020-05-08', '2020-05-10', '2020-05-08', 23, 1, 1, 1, NULL, 'N', 'Show', '2020-05-16', 123456, 'Manualita Saenz calle 11 casa nro 43', 6, 98),
(13, 'Usuarios', 1, 1, '2020-05-02 04:24:05', '2020-05-02 04:24:05', '2020-05-16', '2020-05-15', '2020-05-09', '2020-05-15', 24, 1, 1, 1, NULL, 'N', 'Radionovela', '2020-05-16', 12300, 'Manualita Saenz calle 11 casa nro 43', 5, 58),
(14, 'francisco', 1, 1, '2020-05-02 04:29:55', '2020-05-02 04:29:55', '2020-05-22', '2020-05-14', '2020-05-22', '2020-05-14', 1221, 1, 1, 1, NULL, 'I', 'dssdds', '2020-05-16', 12331, 'Manualita Saenz calle 11 casa nro 43', 6, 98),
(15, 'pruebas', 1, 1, '2020-05-02 04:31:08', '2020-05-02 04:31:08', '2020-05-15', '2020-05-14', '2020-05-16', '2020-05-22', 24, 1, 1, 1, NULL, 'I', 'dsffsfs', '2020-05-22', 12, 'Manualita Saenz calle 11 casa nro 43', 5, 58),
(16, 'pruebas', 1, 1, '2020-05-02 04:31:44', '2020-05-02 04:31:44', '2020-05-15', '2020-05-14', '2020-05-16', '2020-05-22', 24, 1, 1, 1, NULL, 'I', 'dsffsfs', '2020-05-22', 12, 'Manualita Saenz calle 11 casa nro 43', 5, 58),
(17, 'prueba', 1, 1, '2020-05-02 23:00:41', '2020-05-02 23:00:41', '2020-05-15', '2020-05-14', '2020-05-16', '2020-05-08', 21, 1, 1, 1, NULL, 'I', NULL, '2020-05-15', 123, 'dsdds', 14, 313),
(20, 'prueba', 1, 1, '2020-05-02 23:03:40', '2020-05-02 23:03:40', '2020-05-15', '2020-05-14', '2020-05-16', '2020-05-08', 21, 1, 1, 1, NULL, 'I', NULL, '2020-05-15', 123, 'dsdds', 14, 313),
(21, 'Madculinos', 1, 1, '2020-05-02 23:05:38', '2020-05-02 23:05:38', '2020-05-14', '2020-05-30', '2020-05-23', '2020-05-15', 123, 1, 1, 1, NULL, 'N', 'dssdds', '2020-05-22', 323, 'Manualita Saenz calle 11 casa nro 43', 13, 276),
(22, 'Todosiid', 1, 1, '2020-05-02 23:12:41', '2020-05-02 23:12:41', '2020-05-07', '2020-05-21', '2020-05-29', '2020-05-14', 323, 1, 1, 1, NULL, 'N', 'fsgfs', '2020-05-23', 2324242, 'Manualita Saenz calle 11 casa nro 43', 13, 276);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_competencias`
--

CREATE TABLE `convocatoria_competencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `convocatoria_id` int(10) UNSIGNED NOT NULL,
  `competencia_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `convocatoria_competencias`
--

INSERT INTO `convocatoria_competencias` (`id`, `convocatoria_id`, `competencia_id`, `created_at`, `updated_at`) VALUES
(12, 9, 1, '2020-05-02 02:10:17', '2020-05-02 02:10:17'),
(13, 9, 2, '2020-05-02 02:10:17', '2020-05-02 02:10:17'),
(14, 10, 1, '2020-05-02 02:12:05', '2020-05-02 02:12:05'),
(15, 10, 2, '2020-05-02 02:12:05', '2020-05-02 02:12:05'),
(16, 10, 3, '2020-05-02 02:12:05', '2020-05-02 02:12:05'),
(20, 12, 1, '2020-05-02 03:27:22', '2020-05-02 03:27:22'),
(21, 12, 2, '2020-05-02 03:27:22', '2020-05-02 03:27:22'),
(22, 12, 3, '2020-05-02 03:27:22', '2020-05-02 03:27:22'),
(23, 13, 2, '2020-05-02 04:24:05', '2020-05-02 04:24:05'),
(24, 14, 2, '2020-05-02 04:29:55', '2020-05-02 04:29:55'),
(25, 15, 2, '2020-05-02 04:31:08', '2020-05-02 04:31:08'),
(26, 16, 2, '2020-05-02 04:31:44', '2020-05-02 04:31:44'),
(27, 17, 1, '2020-05-02 23:00:41', '2020-05-02 23:00:41'),
(28, 17, 2, '2020-05-02 23:00:41', '2020-05-02 23:00:41'),
(33, 20, 1, '2020-05-02 23:03:40', '2020-05-02 23:03:40'),
(34, 20, 2, '2020-05-02 23:03:40', '2020-05-02 23:03:40'),
(35, 21, 2, '2020-05-02 23:05:38', '2020-05-02 23:05:38'),
(36, 22, 2, '2020-05-02 23:12:42', '2020-05-02 23:12:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_papels`
--

CREATE TABLE `convocatoria_papels` (
  `id` int(10) UNSIGNED NOT NULL,
  `convocatoria_id` int(10) UNSIGNED NOT NULL,
  `presupuesto_papel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad_hasta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad_desde` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `convocatoria_papels`
--

INSERT INTO `convocatoria_papels` (`id`, `convocatoria_id`, `presupuesto_papel`, `sexo`, `edad_hasta`, `edad_desde`, `descripcion_rol`, `nombre_rol`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, '1200', 'M', '24', '10', 'sffsfsfsfsfs', 'Dexter', 1, '2020-05-02 02:10:17', '2020-05-02 02:10:17'),
(2, 10, '1234', 'F', '28', '4', 'kgkj', 'Iron man', 1, '2020-05-02 02:12:05', '2020-05-02 02:12:05'),
(3, 10, '6700', 'M', '25', '16', 'kgkj', 'Dexter', 1, '2020-05-02 02:12:05', '2020-05-02 02:12:05'),
(5, 12, '3546', 'F', '14', '2', 'kgkj', 'kaka', 1, '2020-05-02 03:27:22', '2020-05-02 03:27:22'),
(6, 12, '89600', 'F', '25', '7', 'kgkj', 'Iron man', 1, '2020-05-02 03:27:22', '2020-05-02 03:27:22'),
(7, 13, '12400', 'F', '14', '4', 'kgkj', 'Dexter', 1, '2020-05-02 04:24:05', '2020-05-02 04:24:05'),
(8, 13, '34600', 'F', '24', '13', 'sffsfsfsfsfs', 'Iron man', 1, '2020-05-02 04:24:05', '2020-05-02 04:24:05'),
(9, 14, '313131', 'F', '27', '7', 'kgkj', 'kaka', 1, '2020-05-02 04:29:55', '2020-05-02 04:29:55'),
(10, 15, '123', 'F', '32', '5', 'sfsfs', 'kaka', 1, '2020-05-02 04:31:08', '2020-05-02 04:31:08'),
(11, 16, '123', 'F', '32', '5', 'sfsfs', 'kaka', 1, '2020-05-02 04:31:44', '2020-05-02 04:31:44'),
(12, 20, '433443', 'F', '29', '1', 'kgkj', 'Dexter', 1, '2020-05-02 23:03:40', '2020-05-02 23:03:40'),
(13, 21, '4343', 'M', '46', '15', 'kgkj', 'Mascu', 1, '2020-05-02 23:05:38', '2020-05-02 23:05:38'),
(14, 22, '24444242', 'F', '52', '1', 'kgkj', 'Femenino', 1, '2020-05-02 23:12:42', '2020-05-02 23:12:42'),
(15, 22, '2342424', 'F', '16', '2', 'wrwrw', 'Edad de 14', 1, '2020-05-02 23:12:42', '2020-05-02 23:12:42'),
(16, 22, '43244243', 'F', '49', '16', 'kgkj', 'Edades', 1, '2020-05-02 23:12:42', '2020-05-02 23:12:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatoria_users_papel`
--

CREATE TABLE `convocatoria_users_papel` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `papel` int(10) UNSIGNED DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `confirmation` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `convocatoria_users_papel`
--

INSERT INTO `convocatoria_users_papel` (`id`, `user_id`, `papel`, `status`, `confirmation`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 1, 1, '2020-05-02 03:27:22', '2020-05-02 03:27:22'),
(2, 3, 6, 1, 1, '2020-05-02 03:27:22', '2020-05-02 03:27:22'),
(3, 2, 6, 1, 1, '2020-05-02 03:27:22', '2020-05-02 03:27:22'),
(4, 2, 7, 1, 1, '2020-05-02 04:24:05', '2020-05-02 04:24:05'),
(5, 1, 8, 1, 1, '2020-05-02 04:24:05', '2020-05-02 04:24:05'),
(6, 2, 8, 1, 1, '2020-05-02 04:24:05', '2020-05-02 04:24:05'),
(7, 1, 9, 1, 1, '2020-05-02 04:29:55', '2020-05-02 04:29:55'),
(8, 2, 9, 1, 1, '2020-05-02 04:29:55', '2020-05-02 04:29:55'),
(9, 2, 11, 1, 0, '2020-05-02 04:31:44', '2020-05-02 04:55:55'),
(10, 3, 11, 1, 1, '2020-05-02 04:31:44', '2020-05-02 04:31:44'),
(11, 2, 12, 1, 1, '2020-05-02 23:03:40', '2020-05-02 23:03:40'),
(12, 3, 12, 1, 1, '2020-05-02 23:03:40', '2020-05-02 23:03:40'),
(13, 2, 14, 1, 1, '2020-05-02 23:12:42', '2020-05-02 23:12:42'),
(14, 3, 14, 1, 1, '2020-05-02 23:12:42', '2020-05-02 23:12:42'),
(15, 2, 15, 1, 1, '2020-05-02 23:12:42', '2020-05-02 23:12:42'),
(16, 3, 15, 1, 1, '2020-05-02 23:12:42', '2020-05-02 23:12:42');

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
(1, 'Español', '1', '2020-05-01 02:14:24', '2020-05-01 02:14:24'),
(2, 'fsfsfs', '1', '2020-05-01 02:16:04', '2020-05-01 02:16:04');

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
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `title`, `path`, `size`, `auth_by`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Francisco-Hernandez', 'images/users/6nlMpKohbvA0cwxlyL5VsmtOZuLnyHqG6DLtamwq.jpeg', 134189.00, 1, 2, '2020-05-01 02:16:57', '2020-05-01 02:16:57'),
(2, 'MAria-Cordero', 'images/users/jtlecyLrsBqjXW9H5qJuEPf8PBSXxKgW0PIsWNgp.jpeg', 650046.00, 1, 3, '2020-05-02 02:37:11', '2020-05-02 02:37:11');

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
(1, 'radio', '1', '2020-05-02 01:19:41', '2020-05-02 01:19:41');

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
(1, '2012_01_11_000000_create_user_rols_table', 1),
(2, '2013_01_12_000000_create_users_table', 1),
(3, '2014_11_18_183158_nacionalidad', 1),
(4, '2014_11_28_125629_create_images_table', 1),
(5, '2014_11_28_160218_create_ocupacions_table', 1),
(6, '2015_10_12_013441_create_regiones_table', 1),
(7, '2015_10_13_104605_create_comunas_table', 1),
(8, '2019_01_14_000000_create_password_resets_table', 1),
(9, '2019_02_11_000000_create_clients_table', 1),
(10, '2019_02_12_000000_create_notifications_table', 1),
(11, '2019_02_13_000000_create_notification_tipos_table', 1),
(12, '2019_04_01_000000_create_convocatorias_table', 1),
(13, '2019_04_11_000000_create_convocatoria_papels_table', 1),
(14, '2019_04_21_000000_create_convocatoria_users_table', 1),
(15, '2019_04_22_000000_create_convocatoria_user_pagos_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_09_27_000507_create_notices_table', 1),
(18, '2019_11_18_212422_create_idiomas_table', 1),
(19, '2019_11_18_212653_create_ocios_table', 1),
(20, '2020_02_03_231713_create_productoras_table', 1),
(21, '2020_02_03_235906_create_medios_table', 1),
(22, '2020_02_04_002506_create_territorios_table', 1),
(23, '2020_02_04_003641_create_competencias_table', 1),
(24, '2020_03_25_190531_add_status_tables', 1),
(25, '2020_04_27_004827_user_perfil_table', 1),
(26, '2020_04_27_010250_user_ocupacion_table', 1),
(27, '2020_04_27_010306_user_idiomas_table', 1),
(28, '2020_04_27_010317_user_ocio_table', 1),
(29, '2020_04_30_213218_add_columns_convocatorias', 1),
(30, '2020_05_01_211309_create_convocatoria_competencias_table', 2),
(31, '2020_05_01_212408_add_field_convocatoria_papel', 3),
(32, '2020_05_01_222731_add_field_user_perfi', 4),
(33, '2020_05_02_184544_modify_db', 5);

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
(1, 'fsffsfs', '1', '2020-05-01 02:16:12', '2020-05-01 02:16:12'),
(2, 'fsfsfs', '1', '2020-05-01 02:16:19', '2020-05-01 02:16:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacions`
--

CREATE TABLE `ocupacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ocupacions`
--

INSERT INTO `ocupacions` (`id`, `nombre`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ssfsfs', '1', '2020-05-01 02:15:58', '2020-05-01 02:15:58');

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
(1, 'Venevisión', '1', '2020-05-02 01:18:55', '2020-05-02 01:18:55');

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
(1, 'Cagua', '1', '2020-05-02 01:19:54', '2020-05-02 01:19:54');

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
(1, 'Admin', 'Administrator', 'admin@admin.com', NULL, '$2y$10$EqOBRgaJC2RwcEdpz19mn.KL8JQhP0KaR6ti/7jDxIL8cCYYKNtY.', 1, 1, NULL, NULL, '2020-05-01 02:14:24', '2020-05-01 02:14:24'),
(2, 'Francisco', 'Hernandez', 'francisco20990@gmail.com', NULL, '$2y$10$jXJmW/0VEdACmdOoJWK6Jeza4eZUWMnKI/mii735mjr1MtUCDiCc.', 2, 1, NULL, NULL, '2020-05-01 02:16:48', '2020-05-01 02:16:48'),
(3, 'MAria', 'Cordero', 'maria@gmail.com', NULL, '$2y$10$C5odIdkRloCcC52w9JhN3O3.E9GNy760hx/vljGiQTTtXpTS67JRi', 2, 1, NULL, NULL, '2020-05-02 02:36:48', '2020-05-02 02:36:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_idiomas`
--

CREATE TABLE `user_idiomas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `idioma_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_idiomas`
--

INSERT INTO `user_idiomas` (`id`, `user_id`, `idioma_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2020-05-01 02:16:57', '2020-05-01 02:16:57'),
(2, 2, 2, '2020-05-01 02:16:57', '2020-05-01 02:16:57'),
(3, 3, 1, '2020-05-02 02:37:11', '2020-05-02 02:37:11'),
(4, 3, 2, '2020-05-02 02:37:11', '2020-05-02 02:37:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_ocio`
--

CREATE TABLE `user_ocio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ocio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_ocio`
--

INSERT INTO `user_ocio` (`id`, `user_id`, `ocio_id`, `created_at`, `updated_at`) VALUES
(4, 3, 1, '2020-05-02 02:37:11', '2020-05-02 02:37:11'),
(5, 3, 2, '2020-05-02 02:37:11', '2020-05-02 02:37:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_ocupacion`
--

CREATE TABLE `user_ocupacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ocupacion_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_ocupacion`
--

INSERT INTO `user_ocupacion` (`id`, `user_id`, `ocupacion_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2020-05-01 02:16:57', '2020-05-01 02:16:57'),
(2, 3, 1, '2020-05-02 02:37:11', '2020-05-02 02:37:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_perfil`
--

CREATE TABLE `user_perfil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sexo` enum('M','F') COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rut` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nac` date NOT NULL,
  `nacionalidad_id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comuna_id` bigint(20) UNSIGNED DEFAULT NULL,
  `direccion` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calzado` int(11) DEFAULT NULL,
  `altura` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `talla_pantalon` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `talla_camisa` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notas` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `derechos` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comerciales` varchar(170) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_perfil`
--

INSERT INTO `user_perfil` (`id`, `user_id`, `sexo`, `genero`, `rut`, `fecha_nac`, `nacionalidad_id`, `region_id`, `comuna_id`, `direccion`, `telefono`, `facebook`, `instagram`, `calzado`, `altura`, `talla_pantalon`, `talla_camisa`, `notas`, `derechos`, `comerciales`, `created_at`, `updated_at`) VALUES
(1, 2, 'F', 'Trans', '16201206-1', '2017-04-14', 39, 12, 243, 'Manualita Saenz calle 11 casa nro 43', '04269328863', 'fabriola', 'fran', 12, '2', '12', '2', 'fdfdfd', 'fdfdfd', 'fdfdfdfd', '2020-05-01 02:16:48', '2020-05-01 02:16:48'),
(2, 3, 'F', 'N/A', '19587070-5', '2005-05-13', 39, 3, 22, 'Manualita Saenz calle 11 casa nro 43', '04269328863', 'fabriola', 'fran', 12, '2', '12', '2', 'sf', 'fsfs', 'dfsfs', '2020-05-02 02:36:48', '2020-05-02 02:36:48');

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
(1, 'Admin', 1, '2020-05-01 02:14:23', '2020-05-01 02:14:23'),
(2, 'Modelo', 1, '2020-05-01 02:14:24', '2020-05-01 02:14:24');

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
  ADD KEY `convocatorias_client_id_foreign` (`client_id`),
  ADD KEY `convocatorias_medio_id_foreign` (`medio_id`),
  ADD KEY `convocatorias_productora_id_foreign` (`productora_id`),
  ADD KEY `convocatorias_territorio_id_foreign` (`territorio_id`),
  ADD KEY `convocatorias_competencia_id_foreign` (`competencia_id`),
  ADD KEY `convocatorias_region_id_foreign` (`region_id`),
  ADD KEY `convocatorias_comuna_id_foreign` (`comuna_id`);

--
-- Indices de la tabla `convocatoria_competencias`
--
ALTER TABLE `convocatoria_competencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convocatoria_competencias_convocatoria_id_foreign` (`convocatoria_id`),
  ADD KEY `convocatoria_competencias_competencia_id_foreign` (`competencia_id`);

--
-- Indices de la tabla `convocatoria_papels`
--
ALTER TABLE `convocatoria_papels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convocatoria_papels_convocatoria_id_foreign` (`convocatoria_id`);

--
-- Indices de la tabla `convocatoria_users_papel`
--
ALTER TABLE `convocatoria_users_papel`
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `medios`
--
ALTER TABLE `medios`
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
-- Indices de la tabla `user_idiomas`
--
ALTER TABLE `user_idiomas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_idiomas_user_id_foreign` (`user_id`),
  ADD KEY `user_idiomas_idioma_id_foreign` (`idioma_id`);

--
-- Indices de la tabla `user_ocio`
--
ALTER TABLE `user_ocio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ocio_user_id_foreign` (`user_id`),
  ADD KEY `user_ocio_ocio_id_foreign` (`ocio_id`);

--
-- Indices de la tabla `user_ocupacion`
--
ALTER TABLE `user_ocupacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ocupacion_user_id_foreign` (`user_id`),
  ADD KEY `user_ocupacion_ocupacion_id_foreign` (`ocupacion_id`);

--
-- Indices de la tabla `user_perfil`
--
ALTER TABLE `user_perfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_perfil_user_id_foreign` (`user_id`),
  ADD KEY `user_perfil_nacionalidad_id_foreign` (`nacionalidad_id`),
  ADD KEY `user_perfil_region_id_foreign` (`region_id`),
  ADD KEY `user_perfil_comuna_id_foreign` (`comuna_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `convocatoria_competencias`
--
ALTER TABLE `convocatoria_competencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `convocatoria_papels`
--
ALTER TABLE `convocatoria_papels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `convocatoria_users_papel`
--
ALTER TABLE `convocatoria_users_papel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `medios`
--
ALTER TABLE `medios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ocupacions`
--
ALTER TABLE `ocupacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `user_idiomas`
--
ALTER TABLE `user_idiomas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user_ocio`
--
ALTER TABLE `user_ocio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `user_ocupacion`
--
ALTER TABLE `user_ocupacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user_perfil`
--
ALTER TABLE `user_perfil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  ADD CONSTRAINT `convocatorias_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `convocatorias_competencia_id_foreign` FOREIGN KEY (`competencia_id`) REFERENCES `competencias` (`id`),
  ADD CONSTRAINT `convocatorias_comuna_id_foreign` FOREIGN KEY (`comuna_id`) REFERENCES `comunas` (`id`),
  ADD CONSTRAINT `convocatorias_medio_id_foreign` FOREIGN KEY (`medio_id`) REFERENCES `medios` (`id`),
  ADD CONSTRAINT `convocatorias_productora_id_foreign` FOREIGN KEY (`productora_id`) REFERENCES `productoras` (`id`),
  ADD CONSTRAINT `convocatorias_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`),
  ADD CONSTRAINT `convocatorias_territorio_id_foreign` FOREIGN KEY (`territorio_id`) REFERENCES `territorios` (`id`);

--
-- Filtros para la tabla `convocatoria_competencias`
--
ALTER TABLE `convocatoria_competencias`
  ADD CONSTRAINT `convocatoria_competencias_competencia_id_foreign` FOREIGN KEY (`competencia_id`) REFERENCES `competencias` (`id`),
  ADD CONSTRAINT `convocatoria_competencias_convocatoria_id_foreign` FOREIGN KEY (`convocatoria_id`) REFERENCES `convocatorias` (`id`);

--
-- Filtros para la tabla `convocatoria_papels`
--
ALTER TABLE `convocatoria_papels`
  ADD CONSTRAINT `convocatoria_papels_convocatoria_id_foreign` FOREIGN KEY (`convocatoria_id`) REFERENCES `convocatorias` (`id`);

--
-- Filtros para la tabla `convocatoria_users_papel`
--
ALTER TABLE `convocatoria_users_papel`
  ADD CONSTRAINT `convocatoria_users_papel_foreign` FOREIGN KEY (`papel`) REFERENCES `convocatoria_papels` (`id`),
  ADD CONSTRAINT `convocatoria_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `convocatoria_user_pagos`
--
ALTER TABLE `convocatoria_user_pagos`
  ADD CONSTRAINT `convocatoria_user_pagos_convocatoria_user_id_foreign` FOREIGN KEY (`convocatoria_user_id`) REFERENCES `convocatoria_users_papel` (`id`);

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
-- Filtros para la tabla `user_idiomas`
--
ALTER TABLE `user_idiomas`
  ADD CONSTRAINT `user_idiomas_idioma_id_foreign` FOREIGN KEY (`idioma_id`) REFERENCES `idiomas` (`id`),
  ADD CONSTRAINT `user_idiomas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_ocio`
--
ALTER TABLE `user_ocio`
  ADD CONSTRAINT `user_ocio_ocio_id_foreign` FOREIGN KEY (`ocio_id`) REFERENCES `ocios` (`id`),
  ADD CONSTRAINT `user_ocio_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_ocupacion`
--
ALTER TABLE `user_ocupacion`
  ADD CONSTRAINT `user_ocupacion_ocupacion_id_foreign` FOREIGN KEY (`ocupacion_id`) REFERENCES `ocupacions` (`id`),
  ADD CONSTRAINT `user_ocupacion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_perfil`
--
ALTER TABLE `user_perfil`
  ADD CONSTRAINT `user_perfil_comuna_id_foreign` FOREIGN KEY (`comuna_id`) REFERENCES `comunas` (`id`),
  ADD CONSTRAINT `user_perfil_nacionalidad_id_foreign` FOREIGN KEY (`nacionalidad_id`) REFERENCES `nacionalidad` (`id`),
  ADD CONSTRAINT `user_perfil_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`id`),
  ADD CONSTRAINT `user_perfil_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
