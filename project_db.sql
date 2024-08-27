-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 06, 2023 at 03:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_master`
--

DROP TABLE IF EXISTS `block_master`;
CREATE TABLE IF NOT EXISTS `block_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOCK_CODE` varchar(10) NOT NULL,
  `DISTRICT_CODE` varchar(10) NOT NULL,
  `BLOCK_NAME` varchar(50) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BLOCK_CODE` (`BLOCK_CODE`),
  KEY `DISTRICT_CODE` (`DISTRICT_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `block_master`
--

INSERT INTO `block_master` (`ID`, `BLOCK_CODE`, `DISTRICT_CODE`, `BLOCK_NAME`, `USER_ID`) VALUES
(1, '2723', '303', 'AMDANGA', 'admin'),
(2, '2724', '303', 'BADURIA', 'admin'),
(3, '2725', '303', 'BAGDA', 'admin'),
(4, '2726', '303', 'BARASAT-I', 'admin'),
(5, '2727', '303', 'BARASAT-II', 'admin'),
(6, '2728', '303', 'BARRACKPUR-I', 'admin'),
(7, '2729', '303', 'BARRACKPUR-II', 'admin'),
(8, '2730', '303', 'BASIRHAT-I', 'admin'),
(9, '2731', '303', 'BASIRHAT-II', 'admin'),
(10, '2732', '303', 'BONGAON', 'admin'),
(11, '2733', '303', 'DEGANGA', 'admin'),
(12, '2734', '303', 'GAIGHATA', 'admin'),
(13, '2735', '303', 'HABRA-I', 'admin'),
(14, '2736', '303', 'HABRA-II', 'admin'),
(15, '2737', '303', 'HAROA', 'admin'),
(16, '2738', '303', 'HASNABAD', 'admin'),
(17, '2739', '303', 'HINGALGANJ', 'admin'),
(18, '2740', '303', 'MINAKHAN', 'admin'),
(19, '2741', '303', 'RAJARHAT', 'admin'),
(20, '2742', '303', 'SANDESHKHALI-I', 'admin'),
(21, '2743', '303', 'SANDESHKHALI-II', 'admin'),
(22, '2744', '303', 'SWARUPNAGAR', 'admin'),
(23, '2745', '304', 'BARUIPUR', 'admin'),
(24, '2746', '304', 'BASANTI', 'admin'),
(25, '2747', '304', 'BHANGAR-I', 'admin'),
(26, '2748', '304', 'BHANGAR-II', 'admin'),
(27, '2749', '304', 'BISHNUPUR-I', 'admin'),
(28, '2750', '304', 'BISHNUPUR-II', 'admin'),
(29, '2751', '304', 'BUDGE BUDGE-I', 'admin'),
(30, '2752', '304', 'BUDGE BUDGE-II', 'admin'),
(31, '2753', '304', 'CANNING-I', 'admin'),
(32, '2754', '304', 'CANNING-II', 'admin'),
(33, '2755', '304', 'DIAMOND HARBOUR-I', 'admin'),
(34, '2756', '304', 'DIAMOND HARBOUR-II', 'admin'),
(35, '2757', '304', 'FALTA', 'admin'),
(36, '2758', '304', 'GOSABA', 'admin'),
(37, '2759', '304', 'JAYNAGAR-I', 'admin'),
(38, '2760', '304', 'JAYNAGAR-II', 'admin'),
(39, '2761', '304', 'KAK DWIP', 'admin'),
(40, '2762', '304', 'KULPI', 'admin'),
(41, '2763', '304', 'KULTALI', 'admin'),
(42, '2764', '304', 'MAGRA HAT-I', 'admin'),
(43, '2765', '304', 'MAGRA HAT-II', 'admin'),
(44, '2766', '304', 'MANDIRBAZAR', 'admin'),
(45, '2767', '304', 'MATHURAPUR I', 'admin'),
(46, '2768', '304', 'MATHURAPUR-II', 'admin'),
(47, '2769', '304', 'NAMKHANA', 'admin'),
(48, '2770', '304', 'PATHAR PRATIMA', 'admin'),
(49, '2771', '304', 'SAGAR', 'admin'),
(50, '2772', '304', 'SONARPUR', 'admin'),
(51, '2773', '304', 'THAKURPUKUR MAHESTOLA', 'admin'),
(52, '2919', '664', 'ALIPURDUAR-I', 'admin'),
(53, '2920', '664', 'ALIPURDUAR-II', 'admin'),
(54, '2922', '664', 'FALAKATA', 'admin'),
(55, '2924', '664', 'KALCHINI', 'admin'),
(56, '2925', '664', 'KUMARGRAM', 'admin'),
(57, '2926', '664', 'MADARIHAT', 'admin'),
(58, '2774', '305', 'BANKURA-I', 'admin'),
(59, '2775', '305', 'BANKURA-II', 'admin'),
(60, '2776', '305', 'BARJORA', 'admin'),
(61, '2777', '305', 'CHHATNA', 'admin'),
(62, '2778', '305', 'GANGAJAL GHATI', 'admin'),
(63, '2779', '305', 'HIRBANDH', 'admin'),
(64, '2780', '305', 'INDPUR', 'admin'),
(65, '2781', '305', 'INDUS', 'admin'),
(66, '2782', '305', 'JAYPUR', 'admin'),
(67, '2783', '305', 'KHATRA-I', 'admin'),
(68, '2784', '305', 'KOTULPUR', 'admin'),
(69, '2785', '305', 'MEJHIA', 'admin'),
(70, '2786', '305', 'ONDA', 'admin'),
(71, '2787', '305', 'PATRASAYER', 'admin'),
(72, '2788', '305', 'RAIPUR-I', 'admin'),
(73, '2789', '305', 'RANIBUNDH', 'admin'),
(74, '2790', '305', 'SALTORA', 'admin'),
(75, '2791', '305', 'SARENGA', 'admin'),
(76, '2792', '305', 'SIMLAPAL', 'admin'),
(77, '2793', '305', 'SONAMUKHI', 'admin'),
(78, '2794', '305', 'TALDANGRA', 'admin'),
(79, '2795', '305', 'VISHNUPUR', 'admin'),
(80, '2827', '307', 'BOLPUR-SRINIKETAN', 'admin'),
(81, '2828', '307', 'DUBRAJPUR', 'admin'),
(82, '2829', '307', 'ILLAMBAZAR', 'admin'),
(83, '2830', '307', 'KHOYRASOL', 'admin'),
(84, '2831', '307', 'LABPUR', 'admin'),
(85, '2832', '307', 'MAYURESWAR-I', 'admin'),
(86, '2833', '307', 'MAYURESWAR-II', 'admin'),
(87, '2834', '307', 'MOHAMMAD BAZAR', 'admin'),
(88, '2835', '307', 'MURARAI-I', 'admin'),
(89, '2836', '307', 'MURARAI-II', 'admin'),
(90, '2837', '307', 'NALHATI-I', 'admin'),
(91, '2838', '307', 'NALHATI-II', 'admin'),
(92, '2839', '307', 'NANOOR', 'admin'),
(93, '2840', '307', 'RAJNAGAR', 'admin'),
(94, '2841', '307', 'RAMPURHAT-I', 'admin'),
(95, '2842', '307', 'RAMPURHAT-II', 'admin'),
(96, '2843', '307', 'SAINTHIA', 'admin'),
(97, '2844', '307', 'SURI-I', 'admin'),
(98, '2845', '307', 'SURI-II', 'admin'),
(99, '2847', '308', 'COOCHBEHAR I', 'admin'),
(100, '2846', '308', 'COOCH BEHAR II', 'admin'),
(101, '2848', '308', 'DINHATA-I', 'admin'),
(102, '2849', '308', 'DINHATA-II', 'admin'),
(103, '2850', '308', 'HALDIBARI', 'admin'),
(104, '2852', '308', 'MATHABHANGA-I', 'admin'),
(105, '2851', '308', 'MATHABHANGA II', 'admin'),
(106, '2853', '308', 'MEKLIGANJ', 'admin'),
(107, '2854', '308', 'SITAI', 'admin'),
(108, '2855', '308', 'SITALKUCHI', 'admin'),
(109, '2856', '308', 'TUFANGANJ-I', 'admin'),
(110, '2857', '308', 'TUFANGANJ-II', 'admin'),
(111, '2858', '309', 'DARJEELING-PULBAZAR', 'admin'),
(112, '2860', '309', 'JORE BUNGLOW-SUKIAPOKHRI', 'admin'),
(113, '2863', '309', 'KHARIBARI', 'admin'),
(114, '2864', '309', 'KURSEONG', 'admin'),
(115, '2865', '309', 'MATIGARA', 'admin'),
(116, '2866', '309', 'MIRIK', 'admin'),
(117, '2867', '309', 'NAXAL BARI', 'admin'),
(118, '2868', '309', 'PHANSIDEWA', 'admin'),
(119, '2869', '309', 'RANGLI RANGLIOT', 'admin'),
(120, '2870', '310', 'BALURGHAT', 'admin'),
(121, '2871', '310', 'BANSIHARI', 'admin'),
(122, '2872', '310', 'GANGARAMPUR', 'admin'),
(123, '2873', '310', 'HARIRAMPUR', 'admin'),
(124, '2874', '310', 'HILI', 'admin'),
(125, '2875', '310', 'KUMARGANJ', 'admin'),
(126, '2876', '310', 'KUSHMANDI', 'admin'),
(127, '2877', '310', 'TAPAN', 'admin'),
(128, '2878', '311', 'CHOPRA', 'admin'),
(129, '2880', '311', 'GOALPOKHAR-I', 'admin'),
(130, '2879', '311', 'GOALPOKHAR II', 'admin'),
(131, '2881', '311', 'HEMTABAD', 'admin'),
(132, '2882', '311', 'ISLAMPUR', 'admin'),
(133, '2883', '311', 'ITAHAR', 'admin'),
(134, '2884', '311', 'KALIAGANJ', 'admin'),
(135, '2885', '311', 'KARANDIGHI', 'admin'),
(136, '2886', '311', 'RAIGANJ', 'admin'),
(137, '2887', '312', 'ARAMBAGH', 'admin'),
(138, '2888', '312', 'BALAGARH', 'admin'),
(139, '2889', '312', 'CHANDITALA-I', 'admin'),
(140, '2890', '312', 'CHANDITALA-II', 'admin'),
(141, '2891', '312', 'CHINSURAH-MAGRAH', 'admin'),
(142, '2892', '312', 'DHANIAKHALI', 'admin'),
(143, '2893', '312', 'GOGHAT-I', 'admin'),
(144, '2894', '312', 'GOGHAT-II', 'admin'),
(145, '2895', '312', 'HARIPAL', 'admin'),
(146, '2896', '312', 'JANGIPARA', 'admin'),
(147, '2897', '312', 'KHANAKUL-I', 'admin'),
(148, '2898', '312', 'KHANAKUL-II', 'admin'),
(149, '2899', '312', 'PANDUA', 'admin'),
(150, '2900', '312', 'POLBA-DADPUR', 'admin'),
(151, '2901', '312', 'PURSURAH', 'admin'),
(152, '2902', '312', 'SINGUR', 'admin'),
(153, '2903', '312', 'SIRAMPUR-UTTARPARA', 'admin'),
(154, '2904', '312', 'TARAKESWAR', 'admin'),
(155, '2905', '313', 'AMTA-I', 'admin'),
(156, '2906', '313', 'AMTA-II', 'admin'),
(157, '2907', '313', 'BAGNAN-I', 'admin'),
(158, '2908', '313', 'BAGNAN-II', 'admin'),
(159, '2909', '313', 'BALLY-JAGACHA', 'admin'),
(160, '2910', '313', 'DOMJUR', 'admin'),
(161, '2911', '313', 'JAGATBALLAVPUR', 'admin'),
(162, '2912', '313', 'PANCHLA', 'admin'),
(163, '2913', '313', 'SANKRAIL', 'admin'),
(164, '2914', '313', 'SHYAMPUR-I', 'admin'),
(165, '2915', '313', 'SHYAMPUR-II', 'admin'),
(166, '2916', '313', 'UDAYNARAYANPUR', 'admin'),
(167, '2917', '313', 'ULUBERIA-I', 'admin'),
(168, '2918', '313', 'ULUBERIA-II', 'admin'),
(169, '7483', '314', 'BANARHAT', 'admin'),
(170, '2921', '314', 'DHUPGURI', 'admin'),
(171, '2923', '314', 'JALPAIGURI', 'admin'),
(172, '7484', '314', 'KRANTI', 'admin'),
(173, '2927', '314', 'MAL', 'admin'),
(174, '2928', '314', 'MATIALI', 'admin'),
(175, '2929', '314', 'MAYNAGURI', 'admin'),
(176, '2930', '314', 'NAGRAKATA', 'admin'),
(177, '2931', '314', 'RAJGANJ', 'admin'),
(178, '2972', '703', 'BINPUR-I', 'admin'),
(179, '2973', '703', 'BINPUR-II', 'admin'),
(180, '2986', '703', 'GOPIBALLAVPUR-I', 'admin'),
(181, '2985', '703', 'GOPIBALLAV PUR -II', 'admin'),
(182, '2987', '703', 'JAMBANI', 'admin'),
(183, '2988', '703', 'JHARGRAM', 'admin'),
(184, '2996', '703', 'NAYAGRAM', 'admin'),
(185, '3000', '703', 'SANKRAIL', 'admin'),
(186, '2859', '702', 'GORUBATHAN', 'admin'),
(187, '2861', '702', 'KALIMPONG-I', 'admin'),
(188, '2862', '702', 'Lava', 'admin'),
(189, '7355', '702', 'Pedong', 'admin'),
(190, '2932', '316', 'BAMONGOLA', 'admin'),
(191, '2933', '316', 'CHANCHAL-I', 'admin'),
(192, '2934', '316', 'CHANCHAL-II', 'admin'),
(193, '2935', '316', 'ENGLISH BAZAR', 'admin'),
(194, '2936', '316', 'GAZOLE', 'admin'),
(195, '2937', '316', 'HABIBPUR', 'admin'),
(196, '2938', '316', 'HARISHCHANDRAPUR-I', 'admin'),
(197, '2939', '316', 'HARISHCHANDRAPUR-II', 'admin'),
(198, '2940', '316', 'KALIACHAK-I', 'admin'),
(199, '2941', '316', 'KALIACHAK-II', 'admin'),
(200, '2942', '316', 'KALIACHAK-III', 'admin'),
(201, '2943', '316', 'MANIKCHAK', 'admin'),
(202, '2944', '316', 'OLD MALDA', 'admin'),
(203, '2945', '316', 'RATUA-I', 'admin'),
(204, '2946', '316', 'RATUA-II', 'admin'),
(205, '2947', '317', 'BHAGAWANPUR-I', 'admin'),
(206, '2948', '317', 'BHAGAWANPUR-II', 'admin'),
(207, '2949', '317', 'CHANDIPUR', 'admin'),
(208, '2950', '317', 'CONTAI-I', 'admin'),
(209, '2951', '317', 'CONTAI-III', 'admin'),
(210, '2952', '317', 'DESHAPRAN', 'admin'),
(211, '2953', '317', 'EGRA-I', 'admin'),
(212, '2954', '317', 'EGRA-II', 'admin'),
(213, '2955', '317', 'HALDIA', 'admin'),
(214, '2956', '317', 'KHEJURI-I', 'admin'),
(215, '2957', '317', 'KHEJURI-II', 'admin'),
(216, '2958', '317', 'KOLAGHAT', 'admin'),
(217, '2959', '317', 'MAHISHADAL', 'admin'),
(218, '2960', '317', 'MOYNA', 'admin'),
(219, '2961', '317', 'NANDAKUMAR', 'admin'),
(220, '2962', '317', 'NANDIGRAM-I', 'admin'),
(221, '2963', '317', 'NANDIGRAM-II', 'admin'),
(222, '2964', '317', 'PANSKURA-I', 'admin'),
(223, '2965', '317', 'PATASHPUR-I', 'admin'),
(224, '2966', '317', 'PATASHPUR-II', 'admin'),
(225, '2967', '317', 'RAMNAGAR-I', 'admin'),
(226, '2968', '317', 'RAMNAGAR-II', 'admin'),
(227, '2969', '317', 'SHAHID MATANGINI', 'admin'),
(228, '2970', '317', 'SUTAHATA', 'admin'),
(229, '2971', '317', 'TAMLUK', 'admin'),
(230, '2974', '318', 'CHANDRAKONA-I', 'admin'),
(231, '2975', '318', 'CHANDRAKONA-II', 'admin'),
(232, '2976', '318', 'DANTAN-I', 'admin'),
(233, '2977', '318', 'DANTAN-II', 'admin'),
(234, '2978', '318', 'DASPUR-I', 'admin'),
(235, '2979', '318', 'DASPUR-II', 'admin'),
(236, '2980', '318', 'DEBRA', 'admin'),
(237, '2981', '318', 'GARBETA-I', 'admin'),
(238, '2982', '318', 'GARBETA-II', 'admin'),
(239, '2983', '318', 'GARBETA-III', 'admin'),
(240, '2984', '318', 'GHATAL', 'admin'),
(241, '2989', '318', 'KESHIARY', 'admin'),
(242, '2990', '318', 'KESHPUR', 'admin'),
(243, '2991', '318', 'KHARAGPUR-I', 'admin'),
(244, '2992', '318', 'KHARAGPUR-II', 'admin'),
(245, '2993', '318', 'MIDNAPORE', 'admin'),
(246, '2994', '318', 'MOHANPUR', 'admin'),
(247, '2995', '318', 'NARAYANGARH', 'admin'),
(248, '2997', '318', 'PINGLA', 'admin'),
(249, '2998', '318', 'SABANG', 'admin'),
(250, '2999', '318', 'SALBANI', 'admin'),
(251, '3001', '319', 'BELDANGA-I', 'admin'),
(252, '3002', '319', 'BELDANGA-II', 'admin'),
(253, '3003', '319', 'BERHAMPORE', 'admin'),
(254, '3004', '319', 'BHAGABANGOLA-II', 'admin'),
(255, '3005', '319', 'BHAGAWANGOLA-I', 'admin'),
(256, '3006', '319', 'BHARATPUR-I', 'admin'),
(257, '3007', '319', 'BHARATPUR-II', 'admin'),
(258, '3008', '319', 'BURWAN', 'admin'),
(259, '3009', '319', 'DOMKAL', 'admin'),
(260, '3010', '319', 'FARAKKA', 'admin'),
(261, '3011', '319', 'HARIHARPARA', 'admin'),
(262, '3012', '319', 'JALANGI', 'admin'),
(263, '3013', '319', 'KANDI', 'admin'),
(264, '3014', '319', 'KHARGRAM', 'admin'),
(265, '3015', '319', 'LALGOLA', 'admin'),
(266, '3016', '319', 'MURSHIDABAD-JIAGUNJ', 'admin'),
(267, '3017', '319', 'NABAGRAM', 'admin'),
(268, '3018', '319', 'NAWDA', 'admin'),
(269, '3019', '319', 'RAGHUNATHGANJ-I', 'admin'),
(270, '3020', '319', 'RAGHUNATHGANJ-II', 'admin'),
(271, '3021', '319', 'RANINAGAR-I', 'admin'),
(272, '3022', '319', 'RANINAGAR-II', 'admin'),
(273, '3023', '319', 'SAGARDIGHI', 'admin'),
(274, '3024', '319', 'SHAMSHERGANJ', 'admin'),
(275, '3025', '319', 'SUTI-I', 'admin'),
(276, '3026', '319', 'SUTI-II', 'admin'),
(277, '3027', '320', 'CHAKDAH', 'admin'),
(278, '3028', '320', 'CHAPRA', 'admin'),
(279, '3029', '320', 'HANSKHALI', 'admin'),
(280, '3030', '320', 'HARINGHATA', 'admin'),
(281, '3031', '320', 'KALIGANJ', 'admin'),
(282, '7115', '320', 'KALYANI', 'admin'),
(283, '3032', '320', 'KARIMPUR-1', 'admin'),
(284, '3033', '320', 'KARIMPUR-II', 'admin'),
(285, '3034', '320', 'KRISHNAGANJ', 'admin'),
(286, '3035', '320', 'KRISHNAGAR-I', 'admin'),
(287, '3036', '320', 'KRISHNAGAR-II', 'admin'),
(288, '3037', '320', 'NABADWIP', 'admin'),
(289, '3038', '320', 'NAKASHIPARA', 'admin'),
(290, '3039', '320', 'RANAGHAT-I', 'admin'),
(291, '3040', '320', 'RANAGHAT-II', 'admin'),
(292, '3041', '320', 'SANTIPUR', 'admin'),
(293, '3042', '320', 'TEHATTA-I', 'admin'),
(294, '3043', '320', 'TEHATTA-II', 'admin'),
(295, '2798', '704', 'BARABANI', 'admin'),
(296, '2802', '704', 'FARIDPUR - DURGAPUR', 'admin'),
(297, '2806', '704', 'JAMURIA', 'admin'),
(298, '2809', '704', 'KANKSA', 'admin'),
(299, '2819', '704', 'ONDAL', 'admin'),
(300, '2820', '704', 'PANDABESWAR', 'admin'),
(301, '2825', '704', 'RANIGANJ', 'admin'),
(302, '2826', '704', 'SALANPUR', 'admin'),
(303, '2796', '306', 'AUSGRAM-I', 'admin'),
(304, '2797', '306', 'AUSGRAM-II', 'admin'),
(305, '2799', '306', 'BHATAR', 'admin'),
(306, '2800', '306', 'BURDWAN-I', 'admin'),
(307, '2801', '306', 'BURDWAN-II', 'admin'),
(308, '2803', '306', 'GALSI -I', 'admin'),
(309, '2804', '306', 'GALSI-II', 'admin'),
(310, '2805', '306', 'JAMAL PUR', 'admin'),
(311, '2808', '306', 'KALNA-I', 'admin'),
(312, '2807', '306', 'KALNA II', 'admin'),
(313, '2810', '306', 'KATWA-I', 'admin'),
(314, '2811', '306', 'KATWA-II', 'admin'),
(315, '2813', '306', 'KETUGRAM_I', 'admin'),
(316, '2812', '306', 'KETUGRAM-II', 'admin'),
(317, '2814', '306', 'KHANDAGHOSH', 'admin'),
(318, '2815', '306', 'MANGOLKOTE', 'admin'),
(319, '2816', '306', 'MANTESWAR', 'admin'),
(320, '2817', '306', 'MEMARI-1', 'admin'),
(321, '2818', '306', 'MEMARI-II', 'admin'),
(322, '2821', '306', 'PURBASTHALI-I', 'admin'),
(323, '2822', '306', 'PURBASTHALI-II', 'admin'),
(324, '2823', '306', 'RAINA-I', 'admin'),
(325, '2824', '306', 'RAINA-II', 'admin'),
(326, '3044', '321', 'ARSHA', 'admin'),
(327, '3045', '321', 'BAGMUNDI', 'admin'),
(328, '3046', '321', 'BALARAMPUR', 'admin'),
(329, '3047', '321', 'BARABAZAR', 'admin'),
(330, '3048', '321', 'BUNDWAN', 'admin'),
(331, '3049', '321', 'HURA', 'admin'),
(332, '3050', '321', 'JAIPUR', 'admin'),
(333, '3051', '321', 'JHALDA-I', 'admin'),
(334, '3052', '321', 'JHALDA-II', 'admin'),
(335, '3053', '321', 'KASHIPUR', 'admin'),
(336, '3054', '321', 'MANBAZAR-I', 'admin'),
(337, '3055', '321', 'MANBAZAR-II', 'admin'),
(338, '3056', '321', 'NETURIA', 'admin'),
(339, '3057', '321', 'PARA', 'admin'),
(340, '3058', '321', 'PUNCHA', 'admin'),
(341, '3059', '321', 'PURULIA-I', 'admin'),
(342, '3060', '321', 'PURULIA-II', 'admin'),
(343, '3061', '321', 'RAGHUNATH PUR-I', 'admin'),
(344, '3062', '321', 'RAGHUNATHPUR-II', 'admin'),
(345, '3063', '321', 'SANTURI', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `centre_master`
--

DROP TABLE IF EXISTS `centre_master`;
CREATE TABLE IF NOT EXISTS `centre_master` (
  `CENTRE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CENTRE_CODE` varchar(10) NOT NULL,
  `CENTRE_NAME` varchar(100) NOT NULL,
  `DISTRICT_CODE` varchar(10) NOT NULL,
  `CENTRE_PIN` int(11) NOT NULL,
  `BLOCK_CODE` varchar(10) NOT NULL,
  `CENTRE_STATUS` varchar(20) NOT NULL,
  `CENTRE_DATE` date NOT NULL,
  `CENTRE_ADDRESS` varchar(100) NOT NULL,
  `CENTRE_LAT` varchar(10) NOT NULL,
  `CENTRE_LON` varchar(10) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`CENTRE_ID`),
  UNIQUE KEY `CENTRE_CODE` (`CENTRE_CODE`),
  KEY `BLOCK_CODE` (`BLOCK_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `centre_master`
--

INSERT INTO `centre_master` (`CENTRE_ID`, `CENTRE_CODE`, `CENTRE_NAME`, `DISTRICT_CODE`, `CENTRE_PIN`, `BLOCK_CODE`, `CENTRE_STATUS`, `CENTRE_DATE`, `CENTRE_ADDRESS`, `CENTRE_LAT`, `CENTRE_LON`, `USER_ID`) VALUES
(1, 'C001', 'Dakshin Rasulpur', '312', 712413, '2887', 'Active', '2023-08-08', 'Village: Dakshin Rasulpur', '22.8765° N', '87.7910° E', 'admin'),
(2, 'C002', 'Chakkashi', '310', 733101, '2870', 'Active', '2023-08-25', 'Chakkashi, Pin Code: 733101', '25.2373° N', '88.7831° E', 'admin'),
(3, 'C003', 'Nabason', '313', 711312, '2908', 'Active', '2023-09-08', 'Village: Nabason, Post Office: Ghoraghata (N), Pin Code: 711312', '23.7646° N', '87.1896° E', 'admin'),
(4, 'C004', 'Tapanpur', '303', 743126, '2723', 'Active', '2023-09-20', 'Village: Tapanpur, Post Office: Kushdanga, Pin Code: 743126', '22.8121° N', '88.4622° E', 'admin'),
(5, 'C005', 'Shingijani', '308', 736135, '2848', 'Active', '2023-10-04', 'Shingijani, Mahakaldham, Pin Code: 736135', '26.4936° N', '89.1563° E', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_master`
--

DROP TABLE IF EXISTS `citizen_master`;
CREATE TABLE IF NOT EXISTS `citizen_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITIZEN_NAME` varchar(30) NOT NULL,
  `CITIZEN_MOBILE` varchar(13) NOT NULL,
  `CITIZEN_ADDRESS` varchar(150) NOT NULL,
  `CITIZEN_PIN` int(11) NOT NULL,
  `CITIZEN_AGE` int(11) NOT NULL,
  `CITIZEN_GENDER` varchar(20) NOT NULL,
  `DISTRICT_NAME` varchar(30) NOT NULL,
  `BLOCK_NAME` varchar(30) NOT NULL,
  `ID_TYPE` varchar(30) NOT NULL,
  `ID_NO` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_master`
--

INSERT INTO `citizen_master` (`ID`, `CITIZEN_NAME`, `CITIZEN_MOBILE`, `CITIZEN_ADDRESS`, `CITIZEN_PIN`, `CITIZEN_AGE`, `CITIZEN_GENDER`, `DISTRICT_NAME`, `BLOCK_NAME`, `ID_TYPE`, `ID_NO`) VALUES
(1, 'Niladri Khan', '9038855162', 'Salt lake', 700064, 20, 'MALE', '315', '2741', 'Driving License', '121312321312312321'),
(2, 'Ahana Sinha', '8697223661', 'Tobin Road', 700090, 20, 'FEMALE', '315', '2741', 'Aadhaar Card', '131245645434'),
(3, 'Ahana Sinha', '8697223661', 'Tobin Road', 700090, 20, 'FEMALE', '303', '2723', 'Aadhaar Card', '131245645434'),
(4, 'Niladri Khan', '9038855162', 'Salt lake', 700064, 20, 'MALE', '303', '2723', 'Driving License', '121312321312312321'),
(5, 'Niladri Khan', '9038855162', 'Salt lake', 700064, 20, 'MALE', '303', '2723', 'Driving License', '121312321312312321'),
(6, 'Anay', '9038866122', 'Phoolbagan', 700054, 31, 'MALE', '303', '2755', 'Aadhaar Card', '1312456454112');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(30) NOT NULL,
  `PHONE` varchar(30) NOT NULL,
  `EMAIL_ID` varchar(100) NOT NULL,
  `QUERY_DETAIL` varchar(300) NOT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`ID`, `USER_NAME`, `PHONE`, `EMAIL_ID`, `QUERY_DETAIL`, `REMARKS`) VALUES
(1, 'Niladri Khan', '9038855162', 'niladri.khan03@gmail.com', 'Hello', NULL),
(2, 'Niladri Khan', '9038855162', 'niladri.khan03@gmail.com', 'Hello', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_master`
--

DROP TABLE IF EXISTS `department_master`;
CREATE TABLE IF NOT EXISTS `department_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPT_CODE` varchar(10) NOT NULL,
  `DEPT_NAME` varchar(100) NOT NULL,
  `DEPT_STATUS` varchar(20) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DEPT_CODE` (`DEPT_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_master`
--

INSERT INTO `department_master` (`ID`, `DEPT_CODE`, `DEPT_NAME`, `DEPT_STATUS`, `USER_ID`) VALUES
(1, 'D001', 'Food', 'Active', 'admin'),
(2, 'D002', 'Urban Development & Municipal Affairs', 'Active', 'admin'),
(3, 'D003', 'Land Reforms', 'Active', 'admin'),
(4, 'D004', 'Electricity & Power', 'Active', 'admin'),
(5, 'D005', 'Health & Family Welfare', 'Active', 'admin'),
(6, 'D006', 'Tourism', 'Active', 'admin'),
(7, 'D007', 'Forest', 'Active', 'admin'),
(8, 'D008', 'Transport', 'Active', 'admin'),
(9, 'D009', 'Law and Justice', 'Active', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `district_master`
--

DROP TABLE IF EXISTS `district_master`;
CREATE TABLE IF NOT EXISTS `district_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISTRICT_CODE` varchar(10) NOT NULL,
  `DISTRICT_NAME` varchar(50) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DISTRICT_CODE` (`DISTRICT_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `district_master`
--

INSERT INTO `district_master` (`ID`, `DISTRICT_CODE`, `DISTRICT_NAME`, `USER_ID`) VALUES
(1, '303', '24 PARAGANAS NORTH', 'admin'),
(2, '304', '24 PARAGANAS SOUTH', 'admin'),
(3, '664', 'Alipurduar', 'admin'),
(4, '305', 'BANKURA', 'admin'),
(5, '307', 'BIRBHUM', 'admin'),
(6, '308', 'COOCHBEHAR', 'admin'),
(7, '309', 'DARJEELING', 'admin'),
(8, '310', 'DINAJPUR DAKSHIN', 'admin'),
(9, '311', 'DINAJPUR UTTAR', 'admin'),
(10, '312', 'HOOGHLY', 'admin'),
(11, '313', 'HOWRAH', 'admin'),
(12, '314', 'JALPAIGURI', 'admin'),
(13, '703', 'Jhargram', 'admin'),
(14, '702', 'KALIMPONG', 'admin'),
(15, '315', 'KOLKATA', 'admin'),
(16, '316', 'MALDAH', 'admin'),
(17, '317', 'MEDINIPUR EAST', 'admin'),
(18, '318', 'MEDINIPUR WEST', 'admin'),
(19, '319', 'MURSHIDABAD', 'admin'),
(20, '320', 'NADIA', 'admin'),
(21, '704', 'PASCHIM BARDHAMAN', 'admin'),
(22, '306', 'PURBA BARDHAMAN', 'admin'),
(23, '321', 'PURULIA', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

DROP TABLE IF EXISTS `login_master`;
CREATE TABLE IF NOT EXISTS `login_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(30) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_ROLE` enum('1','2','3','4','5','6') DEFAULT '2',
  `USER_STATUS` enum('ACTIVE','INACTIVE') DEFAULT NULL,
  `USER_PW` varchar(30) DEFAULT 'vle#123',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`ID`, `USER_ID`, `USER_NAME`, `USER_ROLE`, `USER_STATUS`, `USER_PW`) VALUES
(1, 'admin', 'Niladri Khan', '1', 'ACTIVE', '111'),
(2, 'manager', 'Nil', '2', 'ACTIVE', 'vle#123'),
(3, 'operator', 'Niladri', '4', 'ACTIVE', '111'),
(4, 'operator02', 'Niladri Khan', '4', 'ACTIVE', 'vle#123'),
(10, 'manager02', 'manager02', '2', 'ACTIVE', 'vle#123');

-- --------------------------------------------------------

--
-- Table structure for table `provisions`
--

DROP TABLE IF EXISTS `provisions`;
CREATE TABLE IF NOT EXISTS `provisions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERVICE_CODE` varchar(30) NOT NULL,
  `CITIZEN_NAME` varchar(30) NOT NULL,
  `CITIZEN_MOBILE` varchar(13) NOT NULL,
  `SERVICE_DATE` datetime NOT NULL DEFAULT cur_timestamp,
  `CENTER_CODE` varchar(15) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  `SERVICE_CHARGE` float NOT NULL,
  `SERVICE_COMMISSION` float NOT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provisions`
--

INSERT INTO `provisions` (`ID`, `SERVICE_CODE`, `CITIZEN_NAME`, `CITIZEN_MOBILE`, `SERVICE_DATE`, `CENTER_CODE`, `USER_ID`, `SERVICE_CHARGE`, `SERVICE_COMMISSION`, `REMARKS`) VALUES
(1, 'S004', 'Niladri Khan', '9038855162', '2023-10-04', 'C002', 'operator', 30, 10, NULL),
(2, 'S002', 'Ahana Sinha', '8697223661', '2023-10-04', 'C002', 'operator', 50, 20, NULL),
(3, 'S004', 'Ahana Sinha', '8697223661', '2023-10-04', 'C002', 'operator', 30, 10, NULL),
(4, 'S006', 'Niladri Khan', '9038855162', '2023-10-04', 'C002', 'operator', 40, 15, NULL),
(5, 'S006', 'Niladri Khan', '9038855162', '2023-10-04', 'C002', 'operator', 40, 15, NULL),
(6, 'S009', 'Anay', '9038866122', '2023-10-04', 'C002', 'operator', 40, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_master`
--

DROP TABLE IF EXISTS `service_master`;
CREATE TABLE IF NOT EXISTS `service_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERVICE_CODE` varchar(10) NOT NULL,
  `SERVICE_NAME` varchar(100) NOT NULL,
  `DEPT_CODE` varchar(10) NOT NULL,
  `SERVICE_DESC` varchar(100) NOT NULL,
  `SERVICE_STATUS` varchar(20) NOT NULL,
  `SERVICE_CHARGE` float NOT NULL,
  `VLE_COMMISSION` float NOT NULL,
  `SERVICE_REMARKS` varchar(100) DEFAULT NULL,
  `USER_ID` varchar(30) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SERVICE_CODE` (`SERVICE_CODE`),
  KEY `DEPT_CODE` (`DEPT_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_master`
--

INSERT INTO `service_master` (`ID`, `SERVICE_CODE`, `SERVICE_NAME`, `DEPT_CODE`, `SERVICE_DESC`, `SERVICE_STATUS`, `SERVICE_CHARGE`, `VLE_COMMISSION`, `SERVICE_REMARKS`, `USER_ID`, `URL`) VALUES
(1, 'S001', 'Land Tax', 'D003', 'Payment of land tax', 'Active', 50, 20, 'Online payment of land tax', 'admin', 'https://banglarbhumi.gov.in/BanglarBhumi/Home.action'),
(2, 'S002', 'Tourism Booking', 'D006', 'Tourism Booking WBTDC', 'Active', 50, 20, 'Online tourism booking from WBTDC', 'admin', 'https://wbtdcl.wbtourismgov.in/home'),
(3, 'S003', 'Forest Tourism Booking', 'D006', 'Forest Tourism Booking WBFDC', 'Active', 50, 20, 'Online forest tourism booking from WBFDC', 'admin', 'https://wbfdc.net/'),
(4, 'S004', 'Digital Ration Card', 'D001', 'Application for Digital Ration Card', 'Active', 30, 10, 'Online ration card application', 'admin', 'https://wbpds.wb.gov.in/(S(m4qsq32wsip42xayfvuepctu))/digitalportal/index.aspx?id=3'),
(5, 'S005', 'Property Tax', 'D002', 'Online Payment of Property Tax', 'Active', 50, 20, 'Online property tax', 'admin', 'https://holdingtax.co.in/'),
(6, 'S006', 'CESC Bill Payment', 'D004', 'CESC Electricity Bill Payment Online', 'Active', 40, 15, 'Online CESC bill payment', 'admin', 'https://www.cesc.co.in/newcopybill/dup_ebill.jsp'),
(7, 'S007', 'WBSEDCL Bill Payment', 'D004', 'WBSEDCL Electricity Bill Payment Online', 'Active', 40, 15, 'Online WBSEDCL bill payment', 'admin', 'https://portal.wbsedcl.in/onlinepay/OnlineBillPay.jsp'),
(8, 'S008', 'Swasthya Sathi', 'D005', 'Online Application for Swasthya Sathi', 'Active', 40, 15, 'Online application for Swasthya Sathi card', 'admin', 'https://accounts.swasthyasathi.gov.in/SSPublicDataEntry.aspx'),
(9, 'S009', 'Marriage Registration', 'D009', 'Online Application for Marriage Registration', 'Active', 40, 15, 'Marriage Registration online application', 'admin', 'https://www.onlinemarriageregistration.com/form/marriage-registration'),
(10, 'S010', 'Driving License', 'D008', 'Application for Driving License', 'Active', 50, 20, 'Online application for Driving License', 'admin', 'https://transport.wb.gov.in/governance-services/driving-license/');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE IF NOT EXISTS `user_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(30) NOT NULL,
  `LOG_DATE_TIME` timestamp NOT NULL DEFAULT current_timestamp(),
  `LOG_IP` varchar(20) NOT NULL,
  `LOG_DEVICE_NAME` varchar(30) NOT NULL,
  `LOG_DEVICE_TYPE` varchar(400) NOT NULL,
  `LOG_REMARKS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`ID`, `USER_ID`, `LOG_DATE_TIME`, `LOG_IP`, `LOG_DEVICE_NAME`, `LOG_DEVICE_TYPE`, `LOG_REMARKS`) VALUES
(1, 'admin', '2023-07-28 14:13:11', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(2, 'admin', '2023-07-28 14:33:55', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(3, 'admin', '2023-07-28 14:35:26', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(4, 'admin', '2023-07-28 14:43:22', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(5, 'admin', '2023-07-28 15:23:32', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(6, 'admin', '2023-07-28 15:23:54', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(7, 'admin', '2023-07-28 15:24:20', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(8, 'admin', '2023-07-28 15:25:50', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(9, 'admin', '2023-07-28 15:29:14', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', NULL),
(10, 'admin', '2023-07-30 13:36:33', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(11, 'admin', '2023-07-30 13:42:48', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(12, 'admin', '2023-07-30 13:45:08', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(13, 'admin', '2023-07-30 14:04:59', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(14, 'admin', '2023-07-30 14:58:36', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(15, 'admin', '2023-07-30 15:02:17', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(16, 'admin', '2023-07-30 15:02:47', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(17, 'admin', '2023-07-30 15:03:57', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(18, 'admin01', '2023-07-30 15:05:33', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(19, 'manager', '2023-07-30 15:07:40', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(20, 'admin', '2023-07-30 15:19:46', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(21, 'admin01', '2023-07-30 15:21:19', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(22, 'manager', '2023-07-30 15:21:29', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(23, 'admin', '2023-08-01 02:15:25', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(24, 'manager', '2023-08-01 02:20:01', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(25, 'manager', '2023-08-01 02:27:05', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(26, 'admin', '2023-08-01 02:40:54', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(27, 'manager', '2023-08-01 02:41:02', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(28, 'admin01', '2023-08-01 02:41:15', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(29, 'manager', '2023-08-01 02:41:25', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(30, 'admin', '2023-08-02 05:45:27', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(31, 'admin', '2023-08-02 05:46:16', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(32, 'admin01', '2023-08-02 05:50:20', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(33, 'admin', '2023-08-02 05:50:40', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(34, 'admin', '2023-08-02 13:37:09', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(35, 'admin', '2023-08-02 13:57:19', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(36, 'operator', '2023-08-02 15:44:30', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(37, 'operator', '2023-08-03 12:53:56', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(38, 'admin', '2023-08-03 12:56:20', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(39, 'manager', '2023-08-03 12:57:02', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(40, 'admin', '2023-08-03 12:57:54', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(41, 'operator', '2023-08-03 13:35:45', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(42, 'admin', '2023-08-03 14:24:14', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(43, 'manager', '2023-08-03 14:24:34', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(44, 'manager', '2023-08-03 14:25:07', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(45, 'operator', '2023-08-03 14:28:39', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(46, 'operator', '2023-08-03 16:55:51', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(47, 'operator', '2023-08-04 05:47:00', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(48, 'admin', '2023-08-04 05:47:16', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(49, 'operator', '2023-08-04 05:48:15', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(50, 'admin', '2023-08-04 05:48:32', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(51, 'operator', '2023-08-04 05:49:12', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(52, 'admin', '2023-08-04 06:16:34', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(53, 'admin', '2023-08-04 06:30:03', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(54, 'manager', '2023-08-04 06:31:02', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(55, 'operator', '2023-08-04 06:31:14', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(56, 'admin', '2023-08-04 12:52:46', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(57, 'admin', '2023-08-04 13:04:38', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(58, 'manager', '2023-08-04 13:08:17', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(59, 'admin', '2023-08-04 13:08:29', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(60, 'manager', '2023-08-04 13:08:43', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(61, 'admin01', '2023-08-04 13:11:26', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(62, 'admin', '2023-08-04 13:12:41', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(63, 'manager01', '2023-08-04 13:19:16', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(65, 'admin', '2023-08-04 13:20:41', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(66, 'manager01', '2023-08-04 13:21:01', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(67, 'admin', '2023-08-04 13:22:19', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(68, 'operator', '2023-08-04 13:24:03', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(69, 'manager', '2023-08-04 13:24:14', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(70, 'admin', '2023-08-04 13:33:07', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(71, 'manager', '2023-08-04 13:33:22', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(72, 'admin', '2023-08-04 13:33:39', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(73, 'admin', '2023-08-04 14:48:15', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(74, 'admin', '2023-08-04 14:58:30', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(75, 'admin', '2023-08-04 15:03:29', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(77, 'admin', '2023-08-04 15:14:49', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(78, 'admin', '2023-08-04 15:19:45', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(79, 'admin', '2023-08-04 15:56:10', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(80, 'admin', '2023-08-04 16:04:40', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(81, 'manager', '2023-08-04 16:59:17', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(82, 'admin', '2023-08-04 17:12:39', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(83, 'operator', '2023-08-06 13:56:55', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(84, 'operator', '2023-08-06 14:30:21', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(85, 'operator', '2023-08-06 16:41:21', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(86, 'operator', '2023-08-06 17:25:26', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(87, 'operator', '2023-08-06 17:38:05', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(88, 'operator', '2023-08-07 06:46:40', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(89, 'admin', '2023-08-07 09:35:58', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(90, 'operator', '2023-08-07 09:36:18', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(91, 'operator', '2023-08-08 15:04:52', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(92, 'manager', '2023-08-08 15:05:16', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(93, 'admin', '2023-08-08 15:05:27', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(94, 'operator', '2023-08-08 15:06:52', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(95, 'operator', '2023-08-08 15:07:41', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(96, 'operator', '2023-08-08 15:08:04', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(97, 'operator', '2023-08-12 03:43:59', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(98, 'operator', '2023-08-18 10:12:04', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(99, 'admin', '2023-08-18 10:25:32', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(100, 'operator', '2023-08-18 10:28:22', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(101, 'operator', '2023-08-18 10:38:58', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(102, 'operator', '2023-08-18 10:39:48', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(104, 'operator', '2023-08-18 11:49:02', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(105, 'admin', '2023-08-20 16:45:55', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(106, 'operator', '2023-08-20 16:58:42', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(107, 'admin', '2023-08-20 17:27:12', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(108, 'operator', '2023-08-20 19:53:19', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(109, 'operator', '2023-08-20 20:22:10', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(110, 'operator02', '2023-08-21 11:35:22', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(111, 'admin', '2023-08-21 15:03:36', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(112, 'admin', '2023-08-21 15:08:48', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(113, 'operator02', '2023-08-21 15:10:51', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(114, 'operator', '2023-08-21 15:11:28', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(115, 'operator ', '2023-08-21 16:14:38', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(116, 'operator', '2023-08-22 16:41:24', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(117, 'operator', '2023-08-22 16:53:10', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(118, 'operator', '2023-08-23 06:14:47', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(119, 'operator', '2023-08-23 12:01:39', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(120, 'manager', '2023-08-23 12:17:37', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(121, 'operator', '2023-08-23 12:20:45', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(122, 'operator02', '2023-08-24 17:10:51', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', NULL),
(123, 'operator02', '2023-08-25 15:23:54', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(124, 'operator', '2023-08-26 12:03:08', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(125, 'operator', '2023-08-28 17:25:12', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(126, 'operator', '2023-08-30 15:05:05', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(127, 'operator', '2023-09-01 12:09:27', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(128, 'operator', '2023-09-01 12:43:00', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(129, 'operator', '2023-09-01 15:40:31', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(130, 'admin', '2023-09-01 15:41:54', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(131, 'admin', '2023-09-15 16:47:47', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(132, 'operator', '2023-09-15 16:48:12', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(133, 'operator', '2023-09-19 15:57:22', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(134, 'admin', '2023-09-19 17:12:46', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(135, 'operator02', '2023-09-19 17:16:18', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(136, 'admin', '2023-09-19 17:16:51', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(137, 'operator', '2023-09-19 17:23:46', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(138, 'operator02', '2023-09-19 17:24:28', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(139, 'admin', '2023-09-19 17:24:43', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(140, 'admin', '2023-09-20 06:38:28', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(141, 'operator', '2023-09-20 07:11:59', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(142, 'admin', '2023-09-20 07:12:48', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(143, 'operator', '2023-09-20 07:46:51', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(144, 'admin', '2023-09-20 07:50:21', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(145, 'operator', '2023-09-20 07:55:41', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(146, 'admin', '2023-09-20 07:56:28', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(147, 'operator', '2023-09-20 07:57:24', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(148, 'manager', '2023-09-20 07:57:38', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(149, 'admin', '2023-09-20 08:01:03', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(150, 'manager', '2023-09-20 08:01:35', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(151, 'operator', '2023-09-20 08:01:57', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(152, 'admin', '2023-09-20 08:02:45', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(153, 'admin', '2023-09-20 08:10:55', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(154, 'manager', '2023-09-20 08:11:07', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(155, 'operator02', '2023-09-20 08:13:27', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(156, 'operator', '2023-09-20 08:13:58', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(157, 'operator02', '2023-09-20 08:15:20', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(158, 'operator', '2023-09-20 08:16:46', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(159, 'admin', '2023-09-20 08:30:38', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(160, 'operator', '2023-09-21 11:34:51', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(161, 'admin', '2023-09-21 11:41:16', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(162, 'operator', '2023-09-21 11:46:02', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(163, 'operator', '2023-09-21 11:50:27', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(164, 'manager', '2023-09-21 12:16:08', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(165, 'operator', '2023-09-21 12:17:04', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(166, 'admin', '2023-09-21 12:29:45', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(167, 'admin', '2023-09-21 19:31:35', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(168, 'operator', '2023-09-21 19:34:07', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(169, 'operator', '2023-09-21 20:01:17', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(170, 'operator', '2023-09-21 20:03:43', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(171, 'operator02', '2023-09-21 20:16:04', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(172, 'admin', '2023-09-21 20:16:41', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(173, 'operator', '2023-09-26 15:10:14', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(174, 'admin', '2023-09-26 16:07:32', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', NULL),
(175, 'admin', '2023-09-28 13:34:26', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(176, 'admin', '2023-09-29 16:25:30', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(177, 'admin', '2023-09-29 16:43:10', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(178, 'operator', '2023-10-01 09:04:15', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(179, 'operator', '2023-10-01 09:33:22', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(180, 'operator', '2023-10-01 14:27:29', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(181, 'operator', '2023-10-02 13:55:53', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(182, 'operator', '2023-10-02 14:02:13', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(183, 'operator', '2023-10-02 14:04:04', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(184, 'operator', '2023-10-02 14:05:46', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(185, 'operator', '2023-10-02 14:10:11', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(186, 'operator', '2023-10-02 19:37:50', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(187, 'admin', '2023-10-03 13:01:12', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(188, 'operator', '2023-10-03 13:06:09', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(189, 'admin', '2023-10-03 13:07:20', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(190, 'admin', '2023-10-03 15:43:59', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(191, 'operator', '2023-10-03 15:49:22', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(192, 'admin', '2023-10-04 06:15:12', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(193, 'admin', '2023-10-04 06:21:46', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(194, 'admin', '2023-10-04 06:35:29', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(195, 'operator', '2023-10-04 06:35:56', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(196, 'admin', '2023-10-04 06:42:41', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(197, 'manager', '2023-10-04 06:56:38', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(198, 'manager', '2023-10-04 07:04:32', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(199, 'operator', '2023-10-04 07:27:22', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(200, 'manager', '2023-10-04 07:28:46', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(201, 'admin', '2023-10-04 07:43:09', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(202, 'operator', '2023-10-04 07:48:00', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(203, 'manager', '2023-10-04 07:52:27', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(204, 'manager', '2023-10-04 07:54:50', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(205, 'admin', '2023-10-04 09:27:29', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(206, 'operator', '2023-10-04 09:38:30', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(207, 'admin', '2023-10-04 09:56:52', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(208, 'operator', '2023-10-04 11:38:52', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(209, 'admin', '2023-10-04 11:48:35', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(210, 'manager', '2023-10-04 11:55:59', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(211, 'operator', '2023-10-04 11:56:41', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(212, 'operator', '2023-10-04 12:38:47', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(213, 'operator', '2023-10-04 13:58:55', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(214, 'admin', '2023-10-04 14:19:32', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(215, 'operator', '2023-10-04 14:30:35', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(216, 'admin', '2023-10-04 14:46:15', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(217, 'manager', '2023-10-04 14:46:49', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(218, 'admin', '2023-10-04 14:47:50', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(219, 'operator', '2023-10-04 14:48:00', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(220, 'admin', '2023-10-05 06:04:27', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(221, 'admin', '2023-10-05 12:13:27', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(222, 'operator', '2023-10-05 12:13:48', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(223, 'admin', '2023-10-05 17:55:06', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL),
(224, 'admin', '2023-10-05 17:58:04', '::1', 'Mobile', 'Mozilla/5.0 (Linux; Android 10; SM-G981B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Mobile Safari/537.36', NULL),
(225, 'admin', '2023-10-06 15:46:40', '::1', 'Desktop', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE IF NOT EXISTS `user_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(30) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_GENDER` enum('MALE','FEMALE','OTHER') DEFAULT 'MALE',
  `USER_DOB` date NOT NULL,
  `USER_ADDRESS` varchar(200) NOT NULL,
  `USER_DISTRICT` varchar(50) NOT NULL,
  `USER_PIN` int(11) NOT NULL,
  `USER_BLOCK` varchar(30) DEFAULT NULL,
  `USER_EMAIL` varchar(50) NOT NULL,
  `USER_MOBILE` varchar(15) NOT NULL,
  `CENTRE_CODE` varchar(15) DEFAULT NULL,
  `BANK_ACC` varchar(20) NOT NULL,
  `BANK_IFSC` varchar(20) NOT NULL,
  `BANK_NAME` varchar(50) NOT NULL,
  `BANK_BRANCH` varchar(50) NOT NULL,
  `BANK_HOLDER` varchar(30) NOT NULL,
  `USER_ROLE` enum('1','2','3','4','5','6') DEFAULT '2',
  `USER_STATUS` enum('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
  `SECURITY_QS` varchar(50) NOT NULL,
  `SECURITY_ANS` varchar(50) NOT NULL,
  `ENTRY_USER` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`ID`, `USER_ID`, `USER_NAME`, `USER_GENDER`, `USER_DOB`, `USER_ADDRESS`, `USER_DISTRICT`, `USER_PIN`, `USER_BLOCK`, `USER_EMAIL`, `USER_MOBILE`, `CENTRE_CODE`, `BANK_ACC`, `BANK_IFSC`, `BANK_NAME`, `BANK_BRANCH`, `BANK_HOLDER`, `USER_ROLE`, `USER_STATUS`, `SECURITY_QS`, `SECURITY_ANS`, `ENTRY_USER`) VALUES
(1, 'admin', 'Niladri Khan', 'MALE', '2003-07-24', 'Salt Lake', '303', 700064, '2723', 'niladri.khan03@gmail.com', '9350778825', 'C001', '3333', '333', 'SBI', 'Salt Lake', 'niladri', '4', 'ACTIVE', 'aaaa', 'aaaa', ''),
(2, 'manager', 'Nil', 'MALE', '2023-07-31', 'salt lake', '303', 111111, '2723', 'niladri.khan03@gmail.com', '9038855162', 'C003', '92381209321', 'SBIN0005943', 'State Bank of India', 'Salt lake', 'Nil', '4', 'ACTIVE', 'bbbb', 'aads', ''),
(3, 'operator', 'Niladri', 'MALE', '2023-08-02', 'BA-6/8, Salt Lake City, Sector-1', '303', 111111, '2723', 'niladri.khan03@gmail.com', '9038855162', 'C002', '92381209321', 'SBIN0005943', 'State Bank of India', 'Salt lake', 'Nil', '4', 'ACTIVE', 'bbbb', 'aaaa', ''),
(7, 'operator02', 'Niladri Khan', 'MALE', '2023-07-31', 'BA-6/8, Salt Lake City, Sector-1', '303', 111111, '2723', 'niladri.khan03@gmail.com', '9038855162', 'C005', '92381209321', 'SBIN0005943', 'State Bank of India', 'Salt lake', 'Niladri Khan', '4', 'ACTIVE', 'aaaa', 'bbbb', '');

--
-- Triggers `user_master`
--
DROP TRIGGER IF EXISTS `user_login_creation`;
DELIMITER $$
CREATE TRIGGER `user_login_creation` AFTER INSERT ON `user_master` FOR EACH ROW Insert into login_master (USER_ID,USER_NAME,USER_ROLE,USER_STATUS)
  VALUES(new.USER_ID,new.USER_NAME,new.USER_ROLE,new.USER_STATUS)
$$
DELIMITER ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `block_master`
--
ALTER TABLE `block_master`
  ADD CONSTRAINT `block_master_ibfk_1` FOREIGN KEY (`DISTRICT_CODE`) REFERENCES `district_master` (`DISTRICT_CODE`),
  ADD CONSTRAINT `block_master_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);

--
-- Constraints for table `centre_master`
--
ALTER TABLE `centre_master`
  ADD CONSTRAINT `centre_master_ibfk_1` FOREIGN KEY (`BLOCK_CODE`) REFERENCES `block_master` (`BLOCK_CODE`),
  ADD CONSTRAINT `centre_master_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);

--
-- Constraints for table `department_master`
--
ALTER TABLE `department_master`
  ADD CONSTRAINT `department_master_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);

--
-- Constraints for table `district_master`
--
ALTER TABLE `district_master`
  ADD CONSTRAINT `district_master_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);

--
-- Constraints for table `service_master`
--
ALTER TABLE `service_master`
  ADD CONSTRAINT `service_master_ibfk_1` FOREIGN KEY (`DEPT_CODE`) REFERENCES `department_master` (`DEPT_CODE`),
  ADD CONSTRAINT `service_master_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);

--
-- Constraints for table `user_log`
--
ALTER TABLE `user_log`
  ADD CONSTRAINT `user_log_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user_master` (`USER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
