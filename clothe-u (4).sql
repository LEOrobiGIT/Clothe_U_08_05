-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 30, 2023 alle 21:07
-- Versione del server: 10.4.27-MariaDB
-- Versione PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothe-u`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `carrello`
--

CREATE TABLE `carrello` (
  `id_carrello` int(20) NOT NULL,
  `utente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dump dei dati per la tabella `carrello`
--

INSERT INTO `carrello` (`id_carrello`, `utente`) VALUES
(24, '13'),
(50, '26'),
(60, '16603471476805413356'),
(61, '85380039628289923111'),
(62, '88129501880765613750'),
(63, '04498643029536852489'),
(64, '05306851827689774303'),
(65, '64671872086330832294'),
(66, '29132570329842461240'),
(67, '33222690129029510009'),
(68, '19044725428536399977'),
(69, '61069172129884787201'),
(70, '02155205212369413974'),
(71, '30198426073266905213'),
(72, '57981725073191629082'),
(73, '11229676784992017930'),
(74, '80058576631947120344'),
(75, '79591827435155138869'),
(76, '98704583173801712014'),
(77, '77331228440151940132'),
(78, '78268597374570951904'),
(79, '52458330609790831246'),
(80, '58406444494382586894'),
(81, '49251960749804582072'),
(82, '96926220289373632717'),
(83, '32814918265718656808'),
(84, '05413216836965267043'),
(85, '10153880919610695568'),
(86, '72491354720181823168'),
(87, '36661384007600189431'),
(88, '47888174042430456676'),
(89, '62940274853790090328'),
(90, '72909600692423288066'),
(91, '12766368084688772633'),
(92, '18973591293881553658'),
(93, '03874491046804443050'),
(94, '63046762022681999917'),
(95, '12882531185666571292'),
(96, '91425351467179017296'),
(97, '09017232509097779089'),
(98, '04633084541106186757'),
(99, '18949757428509026422'),
(100, '32091071334034141264'),
(101, '78391339234784785261'),
(102, '64632181203669130041'),
(103, '51204320383610496376'),
(104, '65565028910457871583'),
(105, '70507801289235316335'),
(106, '91670473589994398665'),
(107, '21903456081409338158'),
(108, '85315830237299466793'),
(109, '38466314126920133460'),
(110, '66835109153701294414'),
(111, '33187942896472849726'),
(112, '04476205829296860964'),
(113, '72054656322938949095'),
(114, '56616548699409767458'),
(115, '54612849218683261489'),
(116, '28588964097648556361'),
(117, '53098016462393745750'),
(118, '14116373988885414764'),
(119, '03893645321412342256'),
(120, '56367027642333526365'),
(121, '10961621003373674218'),
(122, '29033009869914165194'),
(123, '29519422221434627016'),
(124, '57544992194515007971'),
(125, '16152077497393081959'),
(126, '99450799817168917525'),
(127, '27026569193970258923'),
(128, '82998189820310321127'),
(129, '86766641457289914437'),
(130, '68534204601608402303'),
(131, '85379553371315464583'),
(132, '59247549560815282958'),
(133, '61740561777908932730'),
(134, '96576067700212168935'),
(135, '03195890618916521732'),
(136, '94995581668690315260'),
(137, '23426689219779946105'),
(138, '75965684910338853735'),
(139, '46918995576839714057'),
(140, '56728618885231091479'),
(141, '33139447427894033482'),
(142, '64917616138010986045'),
(143, '95539260314056167477'),
(144, '65029677148106275632'),
(145, '21026790510746663083'),
(146, '99410308793674774248'),
(147, '00796997713700939095'),
(148, '14447126286202704521'),
(149, '59683571998511967806'),
(150, '30054466608820840379'),
(151, '92079164659654989211'),
(152, '55553987680932455214'),
(153, '33944686938517800352'),
(154, '88893829944893606996'),
(155, '35448183708791673964'),
(156, '38841677875385231746'),
(157, '13932535388759420625'),
(158, '97175652462919106707'),
(159, '22431900811287033370'),
(160, '07980675688908753340'),
(161, '68982385457253599497'),
(162, '56947779965128708684'),
(163, '72275882907210000764'),
(164, '38338142000562631768'),
(165, '75625480253119498370'),
(166, '14861022131096105394'),
(167, '06590610434587502544'),
(168, '46405215173994009260'),
(169, '53309344852559148734'),
(170, '20155304979427885363'),
(171, '17808397824324339377'),
(172, '21895199977685788168'),
(173, '82836505542639813264'),
(174, '74467638853695607745'),
(175, '86629560715678354975'),
(176, '67221163574925808809'),
(177, '89610814395323173080'),
(178, '07606921346258668008'),
(179, '28385942430271665564'),
(180, '53299059862176760294'),
(181, '94479695039343539733'),
(182, '88490974687477577646'),
(183, '91819866351188069383'),
(184, '81115692671753759264'),
(185, '68174013308344915231'),
(186, '93306511935714236202'),
(187, '40700425512902854024'),
(188, '42203320138796236360'),
(189, '54292933639414909336'),
(190, '80584289703343950840'),
(191, '62430145788609767182'),
(192, '76240296914630821718'),
(193, '64969254683948033777'),
(194, '59554995122157106898'),
(195, '55941258579131909997'),
(196, '06854164321942024451'),
(197, '51215297851074054780'),
(198, '20453282468070492397'),
(199, '14293853297801568485'),
(200, '36696151609899304720'),
(201, '16439063360519552909'),
(202, '76844905105894024462'),
(203, '21020835273017568953'),
(204, '40141726839432032842'),
(205, '41144095420778664452'),
(206, '41184764778658096808'),
(207, '06165659979813750614'),
(208, '53220858796290977892'),
(209, '64436789145944473742'),
(210, '67669421578417926356'),
(211, '27078173032553589307'),
(212, '66580944385144762883'),
(213, '51008823511122744412'),
(214, '60551632936622979427'),
(215, '27164029532484859344'),
(216, '74432419737736029839'),
(217, '75562696081850587411'),
(218, '57137768891421294451'),
(219, '58581451408614813088'),
(220, '86863580074366058244'),
(221, '45847372456481600838'),
(222, '17966946390267942919'),
(223, '91624667356507066208'),
(224, '04441022706527626250'),
(225, '12031493395312244491'),
(226, '62579791054650019658'),
(227, '83493748639384874644'),
(228, '94475354261310207659'),
(229, '11083870822237112237'),
(230, '11729600703421465644'),
(231, '09783810850215407639'),
(232, '03223182004069986155'),
(233, '11943396739435558268'),
(234, '81759601086880493348'),
(235, '36835024800977960006'),
(236, '28400754176105077354'),
(237, '15186412292909274125'),
(238, '66602741647821410084'),
(239, '01598464614264674565'),
(240, '63385450927263715971'),
(241, '67162107306408576181'),
(242, '08681546320214171080'),
(243, '95497410174396672109'),
(244, '63215980082973204496'),
(245, '65507453062657870900'),
(246, '82165701151707348041'),
(247, '78638187897744032965'),
(248, '88987605289458833117'),
(249, '52864458416868703705'),
(250, '60270971250751076899'),
(251, '88838185166086830687'),
(252, '31847437975124049035'),
(253, '70736469378571431369'),
(254, '69836889848022664486'),
(255, '35622347696228958256'),
(256, '01997777044754639392'),
(257, '06590243636687473533'),
(258, '95181208530555831801'),
(259, '84110542223797187109'),
(260, '60773622109240469570'),
(261, '96586654670122937103'),
(262, '82320743510897175210'),
(263, '28898705481180787012'),
(264, '76155467407928592096'),
(265, '53861717462006378675'),
(266, '81962554420030699502'),
(267, '87686876482599721371'),
(268, '36519818640542325982'),
(269, '56980818135105115396'),
(270, '65857604872860564583'),
(271, '51574595857116150181'),
(272, '97631278339497396608'),
(273, '91996632977214487245'),
(274, '19487472670456012097'),
(275, '02900951159899341149'),
(276, '26846414885915801274'),
(277, '72792604731698274944'),
(278, '14747398357277659209'),
(279, '43921748061335065343'),
(280, '84599869720023664119'),
(281, '54042458337451107552'),
(282, '63521669932030281520'),
(283, '36748686172475681136'),
(284, '20168706746933149464'),
(285, '43483328394927611380'),
(286, '28535470005205725248'),
(287, '92197550287783510541'),
(288, '21161992971570969846'),
(289, '08089280560019599329'),
(290, '76548421300717242848'),
(291, '49993891832901361399'),
(292, '23899236842767125389'),
(293, '91725688834795250739'),
(294, '98385436190844569961'),
(295, '69873729424323917603'),
(296, '10693402204475320018'),
(297, '20511566992371178841'),
(298, '46394607817768270064'),
(299, '92857430617938848555'),
(300, '51655788121171293461'),
(301, '46546176804761668860'),
(302, '01642624295343969704'),
(303, '77328413393505975778'),
(304, '61686239413528265956'),
(305, '53964303846379341939'),
(306, '45698720569397441384'),
(307, '46314861665235126309'),
(308, '67805395743643128980'),
(309, '64617167323445517558'),
(310, '38078880560651486330'),
(311, '47004130204613321633'),
(312, '07027457744665733752'),
(313, '77150404787664277137'),
(314, '46508195192081313704'),
(315, '27919095202947748184'),
(316, '83301914860372897769'),
(317, '13043337488148678467'),
(318, '59956024964939046017'),
(319, '91659310162859599707'),
(320, '88907648791844304862'),
(321, '93720085214903682036'),
(322, '35964527685316335360'),
(323, '28926268844238595279'),
(324, '30943572278845805083'),
(325, '93257753298302055568'),
(326, '64598170203871501477'),
(327, '83938454941854493516'),
(328, '34966584966375494996'),
(329, '17186698318362658016'),
(330, '77785243337679932629'),
(331, '47727465996347775957'),
(332, '16969759232984147252'),
(333, '53517156643438267278'),
(334, '13832884863363419303'),
(335, '23587575036991631996'),
(336, '90513465164011024608'),
(337, '15663592357073041653'),
(338, '10896610564368876839'),
(339, '10210201052978421541'),
(340, '39244003906942422485'),
(341, '86939139933510254472'),
(342, '91167983416399890449'),
(343, '93019607019591700819'),
(344, '12015965341273771437'),
(345, '76938282136245867353'),
(346, '24935952303826024114'),
(347, '46958415959823698895'),
(348, '92756699262946030073'),
(349, '78250865234891651565'),
(350, '70071018799034707081'),
(351, '63080959489169506809'),
(352, '93426269905747108816'),
(353, '66767915942925843474'),
(354, '62611625316905851856'),
(355, '70711627252537526708'),
(356, '47554973978189927308'),
(357, '98485379384572305472'),
(358, '42206849474707630304'),
(359, '33233954234432215498'),
(360, '73854809015813688870'),
(361, '79277070602023487227'),
(362, '10347700435951462988'),
(363, '01895088582570261722'),
(364, '25137190551587737628'),
(365, '94182379321254816822'),
(366, '00167518090208958721'),
(367, '21107721033473761921'),
(368, '72994608356121320567'),
(369, '55738071028021067929'),
(370, '23697161873459412367'),
(371, '06897741200005603531'),
(372, '34745798552585165280'),
(373, '30584007487386269304'),
(374, '07592726989084014820'),
(375, '28'),
(376, '30395611615002828637'),
(377, '37256247080135533103'),
(378, '53689980698181560354'),
(379, '26179396085532021405'),
(380, '95713667762290095208'),
(381, '24869013606476649706'),
(382, '70503082555523090081'),
(383, '31138972249062335611'),
(384, '69750873811427575073'),
(385, '54980710597303276498'),
(386, '45958248102135201756'),
(387, '47558439584026343249'),
(388, '43033966508019480901'),
(389, '90281147850326491833'),
(390, '90855038044153029559'),
(391, '69149661796982748423'),
(392, '80114867192564136138'),
(393, '06962841181904945824'),
(394, '09653715094223752179'),
(395, '32330454169643847626'),
(396, '87841402486918583437'),
(397, '82199571293599038629'),
(398, '04539219743101787657'),
(399, '95296192621168950073'),
(400, '10678096413021074460'),
(401, '31267870436370435939'),
(402, '59646085605954634096'),
(403, '18293939495735156163'),
(404, '47936590399628957621'),
(405, '27026734488150788559'),
(406, '34988780705812298004'),
(407, '20791029469043669068'),
(408, '94196356282588893141'),
(409, '22736882105919035711'),
(410, '50520472323399883248'),
(411, '96943802820220858821'),
(412, '00161547942797632070'),
(413, '86339080177604197589'),
(414, '15687012774353694815'),
(415, '76602726239293141833'),
(416, '96392583500583145300'),
(417, '03296828468364477104'),
(418, '98571690811860702365'),
(419, '17883132881206742144'),
(420, '60690948269487417058'),
(421, '62797388775015687249'),
(422, '64763041378604746159'),
(423, '74325345209103842250'),
(424, '32426342666775888736'),
(425, '61135500253297067819'),
(426, '27285178861098600934'),
(427, '53390013969629099756'),
(428, '18056051272832362942'),
(429, '38345413661108469497'),
(430, '45584505050100766821'),
(431, '03892368270672215779'),
(432, '35398728917752804398'),
(433, '75457920121529770317'),
(434, '21726957992376505400'),
(435, '15553857419635225174'),
(436, '04971812220844644239'),
(437, '52004708468513242310'),
(438, '39285599213535012937'),
(439, '46176774562544920366'),
(440, '13275672244699808065'),
(441, '22337212878112758924'),
(442, '43243228762920417160'),
(443, '77680209783349179040'),
(444, '37298117865304401524'),
(445, '76857352116541700928'),
(446, '62778552796237043881'),
(447, '66648709366718112636'),
(448, '61400992226616909895'),
(449, '98469828120675955787');

-- --------------------------------------------------------

--
-- Struttura della tabella `categoria`
--

CREATE TABLE `categoria` (
  `nome_categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dump dei dati per la tabella `categoria`
--

INSERT INTO `categoria` (`nome_categoria`) VALUES
('eleganti'),
('Sneaker Casual'),
('Sneaker Sportive'),
('sportive');

-- --------------------------------------------------------

--
-- Struttura della tabella `colori`
--

CREATE TABLE `colori` (
  `nome_colore` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dump dei dati per la tabella `colori`
--

INSERT INTO `colori` (`nome_colore`) VALUES
('Bianco'),
('Blu'),
('Giallo'),
('Grigio'),
('Nero'),
('Rosso'),
('Verde');

-- --------------------------------------------------------

--
-- Struttura della tabella `magazzino`
--

CREATE TABLE `magazzino` (
  `codice` int(20) NOT NULL,
  `modello` int(11) NOT NULL,
  `taglia` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dump dei dati per la tabella `magazzino`
--

INSERT INTO `magazzino` (`codice`, `modello`, `taglia`) VALUES
(21, 10, '38.00'),
(22, 10, '39.00'),
(23, 10, '40.00'),
(24, 10, '41.00'),
(25, 10, '42.00'),
(26, 10, '43.00'),
(27, 10, '44.00'),
(28, 10, '45.00'),
(29, 10, '38.00'),
(30, 10, '39.00'),
(31, 10, '40.00'),
(32, 10, '41.00'),
(33, 10, '42.00'),
(34, 10, '43.00'),
(35, 10, '44.00'),
(36, 10, '45.00'),
(37, 14, '38.00'),
(38, 14, '39.00'),
(39, 14, '40.00'),
(40, 14, '41.00'),
(41, 14, '42.00'),
(42, 14, '43.00'),
(43, 14, '44.00'),
(44, 14, '45.00'),
(45, 14, '38.00'),
(46, 14, '39.00'),
(47, 14, '40.00'),
(48, 14, '41.00'),
(49, 14, '42.00'),
(50, 14, '43.00'),
(51, 14, '44.00'),
(52, 14, '45.00'),
(53, 15, '38.00'),
(54, 15, '39.00'),
(55, 15, '40.00'),
(56, 15, '41.00'),
(57, 15, '42.00'),
(58, 15, '43.00'),
(59, 15, '44.00'),
(60, 15, '45.00'),
(61, 15, '38.00'),
(62, 15, '39.00'),
(63, 15, '40.00'),
(64, 15, '41.00'),
(65, 15, '42.00'),
(66, 15, '43.00'),
(67, 15, '44.00'),
(68, 15, '45.00'),
(69, 16, '38.00'),
(70, 16, '39.00'),
(71, 16, '40.00'),
(72, 16, '41.00'),
(73, 16, '42.00'),
(74, 16, '43.00'),
(75, 16, '44.00'),
(76, 16, '45.00'),
(77, 16, '38.00'),
(78, 16, '39.00'),
(79, 16, '40.00'),
(80, 16, '41.00'),
(81, 16, '42.00'),
(82, 16, '43.00'),
(83, 16, '44.00'),
(84, 16, '45.00'),
(85, 17, '38.00'),
(86, 17, '39.00'),
(87, 17, '40.00'),
(88, 17, '41.00'),
(89, 17, '42.00'),
(90, 17, '43.00'),
(91, 17, '44.00'),
(92, 17, '45.00'),
(93, 18, '38.00'),
(94, 18, '39.00'),
(95, 18, '40.00'),
(96, 18, '42.00'),
(97, 18, '44.00'),
(98, 18, '45.00'),
(99, 19, '39.00'),
(100, 19, '40.00'),
(101, 19, '42.00'),
(102, 19, '43.00'),
(103, 19, '45.00'),
(104, 20, '38.00'),
(105, 20, '39.00'),
(106, 20, '40.00'),
(107, 20, '41.00'),
(108, 20, '42.00'),
(109, 20, '43.00'),
(110, 20, '44.00'),
(111, 20, '45.00'),
(112, 21, '38.00'),
(113, 21, '39.00'),
(114, 21, '41.00'),
(115, 21, '43.00'),
(116, 21, '44.00'),
(117, 21, '45.00'),
(118, 22, '39.00'),
(119, 22, '40.00'),
(120, 22, '42.00'),
(121, 22, '44.00'),
(122, 22, '45.00'),
(123, 16, '43.00'),
(124, 18, '39.00'),
(125, 18, '40.00'),
(126, 23, '38.00'),
(127, 23, '39.00'),
(128, 23, '40.00'),
(129, 23, '42.00'),
(130, 23, '43.00'),
(131, 23, '44.00'),
(132, 23, '45.00'),
(133, 24, '39.00'),
(134, 24, '41.00'),
(135, 24, '42.00'),
(136, 24, '43.00'),
(137, 24, '44.00'),
(138, 25, '38.00'),
(139, 25, '39.00'),
(140, 25, '40.00'),
(141, 25, '41.00'),
(142, 25, '42.00'),
(143, 25, '43.00'),
(144, 25, '44.00'),
(145, 25, '45.00'),
(146, 25, '38.00'),
(147, 25, '41.00'),
(148, 25, '45.00'),
(149, 26, '38.00'),
(150, 26, '39.00'),
(151, 26, '40.00'),
(152, 26, '41.00'),
(153, 26, '42.00'),
(154, 26, '43.00'),
(155, 26, '45.00'),
(156, 26, '38.00'),
(157, 26, '39.00'),
(158, 26, '40.00'),
(159, 26, '41.00'),
(160, 26, '43.00'),
(161, 26, '44.00'),
(162, 26, '45.00'),
(163, 27, '39.00'),
(164, 27, '40.00'),
(165, 27, '41.00'),
(166, 27, '42.00'),
(167, 27, '43.00'),
(168, 27, '44.00'),
(169, 28, '38.00'),
(170, 28, '45.00'),
(171, 28, '44.00'),
(172, 28, '43.00'),
(173, 28, '42.00'),
(174, 28, '41.00'),
(175, 28, '40.00'),
(176, 28, '39.00'),
(177, 28, '38.00'),
(178, 28, '45.00'),
(179, 28, '39.00'),
(180, 28, '40.00'),
(181, 28, '41.00'),
(182, 28, '42.00'),
(183, 28, '43.00'),
(184, 28, '44.00'),
(185, 29, '38.00'),
(186, 29, '45.00'),
(187, 29, '42.00'),
(188, 29, '39.00'),
(189, 29, '38.00'),
(190, 29, '39.00'),
(191, 29, '41.00'),
(192, 29, '44.00'),
(193, 30, '44.00'),
(194, 30, '43.00'),
(195, 30, '42.00'),
(196, 30, '39.00'),
(197, 30, '38.00'),
(198, 30, '40.00'),
(199, 30, '42.00'),
(200, 30, '43.00'),
(201, 31, '38.00'),
(202, 31, '44.00'),
(203, 31, '42.00'),
(204, 31, '41.00'),
(205, 31, '40.00'),
(206, 31, '38.00'),
(207, 31, '45.00'),
(208, 32, '38.00'),
(209, 32, '45.00'),
(210, 32, '44.00'),
(211, 32, '43.00'),
(212, 32, '42.00'),
(213, 32, '41.00'),
(214, 32, '40.00'),
(215, 32, '39.00'),
(216, 32, '45.00'),
(217, 32, '41.00'),
(218, 32, '44.00'),
(219, 33, '38.00'),
(220, 33, '45.00'),
(221, 33, '44.00'),
(222, 33, '43.00'),
(223, 33, '42.00'),
(224, 33, '41.00'),
(225, 33, '40.00'),
(226, 33, '39.00'),
(227, 33, '38.00'),
(228, 33, '45.00'),
(229, 33, '39.00'),
(230, 33, '40.00'),
(231, 33, '43.00'),
(232, 34, '38.00'),
(233, 34, '45.00'),
(234, 34, '44.00'),
(235, 34, '43.00'),
(236, 34, '42.00'),
(237, 34, '38.00'),
(238, 34, '45.00'),
(239, 34, '39.00'),
(240, 34, '41.00'),
(241, 35, '45.00'),
(242, 35, '44.00'),
(243, 35, '43.00'),
(244, 35, '39.00'),
(245, 35, '39.00'),
(246, 35, '40.00');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE `ordini` (
  `id_ordine` int(255) NOT NULL,
  `id_utente` int(255) NOT NULL,
  `id_carrello` int(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `indirizzo` varchar(255) NOT NULL,
  `civico` varchar(255) NOT NULL,
  `cap` varchar(25) NOT NULL,
  `modalita` varchar(255) NOT NULL,
  `carta` int(255) NOT NULL,
  `istante` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `foto2` varchar(255) NOT NULL,
  `foto3` varchar(255) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `colore` varchar(10) NOT NULL,
  `prezzo` decimal(10,2) NOT NULL,
  `descrizione` text NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`id`, `nome`, `foto`, `foto2`, `foto3`, `marca`, `colore`, `prezzo`, `descrizione`, `rating`, `categoria`) VALUES
(10, 'Nike Air Max 270', './images/81ktd-j7mTL._AC_UX625_.jpg', './images/71y4qrgZQ8L._AC_UX625_.jpg', './images/61Q4gO9jzaL._AC_UX625_.jpg', 'Nike', 'Nero', '19.00', 'Materiale esterno: Sintetico<br>\r\nMateriale suola: tessuto<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: Maglia, gomma<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(14, 'Nike Air Jordan 12 Retro', './images/61Wt6-2b-iL._AC_UX695_.jpg', './images/61YpQhORTwL._AC_UX695_.jpg', './images/71Zl0mWS9jL._AC_UY695_.jpg', 'Nike', 'Giallo', '23.00', 'Materiale esterno: Pelle<br>\r\nMateriale suola: Gomma<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: Gomma<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Casual'),
(15, 'Nike Air Jordan 12 Retro (Navy Light Smok)', './images/71NAzFdPanL._AC_SX695._SX._UX._SY._UY_.jpg', './images/61ZD8Cb8z5L._AC_SY695._SX._UX._SY._UY_.jpg', './images/61rU03aalYL._AC_SY695._SX._UX._SY._UY_.jpg', 'Nike', 'Bianco', '22.00', 'Materiale esterno: Pelle<br>\r\nMateriale suola: Gomma<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: Gomma<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Casual'),
(16, 'Nike Air Jordan 1 Low (Fog Blu Void)', './images/61Ea6AtD7QL._AC_UX695_.jpg', './images/71TtOK5PCFL._AC_UX695_.jpg', './images/61cQCvxMXlL._AC_UX695_.jpg', 'Nike', 'Blu', '13.00', 'Materiale esterno: Pelle<br>\r\nMateriale suola: Gomma<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: Pelle<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Casual'),
(17, 'Nike Air Max 97 (Bianco Uva Ghiacciata)', './images/41HQQoU8s8L._AC._SX._UX._SY._UY_.jpg', './images/41gw-qW4fNL._AC._SX._UX._SY._UY_.jpg', './images/41X3SqJJgXL._AC._SX._UX._SY._UY_.jpg', 'Nike', 'Bianco', '21.00', 'Chiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(18, 'Nike Air Max 97 (Polvere Fotone Varsity)', './images/61lccWaVOwL._AC_UX625_.jpg', './images/61+QIFyt+1L._AC_UX625_.jpg', './images/61MmyfJeNAL._AC_UY625_.jpg', 'Nike', 'Bianco', '22.00', 'Chiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(19, 'Nike Air Max 97 (Nero)', './images/51SK1esayjL._AC_SY625._SX._UX._SY._UY_.jpg', './images/516JkCQYETL._AC_SY625._SX._UX._SY._UY_.jpg', './images/51brrbT6sML._AC_SY625._SX._UX._SY._UY_.jpg', 'Nike', 'Nero', '19.00', 'Chiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(20, 'Nike Air Max 97 (Summit Bianco)', './images/51kwZD6+qNL._AC_SY625._SX._UX._SY._UY_.jpg', './images/51M4ls67tiL._AC_SY625._SX._UX._SY._UY_.jpg', './images/51cL+k0S9sL._AC_SY625._SX._UX._SY._UY_.jpg', 'Nike', 'Bianco', '17.00', 'Chiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(21, 'Adidas NMD_R1 Primeknit', './images/71dWdGC5aBL._AC_UX575_.jpg', './images/71-kwPjrGPL._AC_UX575_.jpg', './images/71dBzq3pQRL._AC_UX575_.jpg', 'Adidas', 'Bianco', '22.00', 'Materiale esterno: Tessuto e sintetico<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: Tessuto sintetico<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(22, 'Adidas Pharrell Williams HU', './images/81OitUhc82L._AC_UX695_.jpg', './images/81fafM1MoDL._AC_UX625_.jpg', './images/81xTF+UYL6L._AC_UX625_.jpg', 'Adidas', 'Giallo', '26.00', 'Materiale esterno: Tessuto<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: 100% sintetico<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(23, 'Nike Lebron Witness 5', './images/61l9zD7Vl-L._AC_UY625_.jpg', './images/61AUiuits+L._AC_UY695_.jpg', './images/61fRNLJNQ2L._AC_UY695_.jpg', 'Jordan', 'Nero', '23.00', 'Materiale esterno: Sintetico<br>\r\nFodera: Sintetico<br>\r\nMateriale suola: Gomma<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Senza tacco<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(24, 'New Balance 991 Anniversary', './images/51ka-C9R1QS._AC_UY575_.jpg', './images/51IvZGproUS._AC_UY575_.jpg', './images/51R5tv4XqLS._AC_UY575_.jpg', 'New Balance', 'Grigio', '21.00', 'Materiale esterno: Pelle<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Casual'),
(25, 'New Balance M990NV5', './images/71BBFvoAGML._AC_UX575_.jpg', './images/71M5iFigNEL._AC_UX575_.jpg', './images/81hbK+D2ZOL._AC_UX575_.jpg', 'New Balance', 'Blu', '16.00', 'Materiale esterno: Pelle<br>\r\nFodera: Pelle<br>\r\nMateriale suola: Pelle<br>\r\nChiusura: Stringata<br>\r\nAltezza tacco: 2.5 cm<br>\r\nTipo di tacco: Tacco a blocco<br>\r\nComposizione materiale: 50% sintetico, 50% rete.<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Casual'),
(26, 'Reebok AR1448 Fury OG', './images/61T-BHYjKyL._AC_UX625_.jpg', './images/61JUQMBve1L._AC_UX625_.jpg', './images/51FxvoTYzLL._AC_UX625_.jpg', 'Reebok', 'Verde', '21.00', 'Tipo di tacco: Piatto<br>\r\nComposizione materiale: Tessuto sintetico<br>\r\nLarghezza scarpa: Normale<br>\r\n', '0.00', 'Sneaker Sportive'),
(27, 'Reebok Domanda Mid', './images/71JUweRpRfL._AC_UX625_.jpg', './images/71-IAfY6AwL._AC_UX625_.jpg', './images/61SBqWC5XcL._AC_UX625_.jpg', 'Reebok', 'Rosso', '18.00', 'Chiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Normale<br>\r\n', '0.00', 'Sneaker Sportive'),
(28, 'Air Jordan 3 Retro Bianco', './images/61OX72O2x+L._AC_UX695_.jpg', './images/61b2anEwWeL._AC_UX695_.jpg', './images/51iaPgFA8cL._AC_UX695_.jpg', 'Jordan', 'Grigio', '23.00', 'Materiale esterno: Pelle<br>\r\nMateriale suola: Gomma<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: Tela<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Casual'),
(29, 'Jordan Air 12 Retro', './images/51AAVLRgTwL._AC_UX695_.jpg', './images/51+4CHOXngL._AC_UX695_.jpg', './images/611-WRrsNiL._AC_UX695_.jpg', 'Jordan', 'Bianco', '23.00', 'Materiale esterno: Pelle<br>\r\nMateriale suola: Gomma<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: Tela<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Casual'),
(30, 'Nike Jumpman Colossal Air Tee', './images/61wlcGE2bdL._AC_UX679_.jpg', './images/61vHZQpmOuL._AC_UX679_.jpg', './images/51WQSuT7TWL._AC_UX679_.jpg', 'Nike', 'Rosso', '15.00', 'Rivoluzionaria suola VaporMax Air per una reattività morbida e leggera.<br>\r\nLa struttura a stivaletti offre una vestibilità aderente e sicura.<br>\r\nChiusura: Stringata<br>\r\nSuola in gomma resistente.<br>\r\nCialde in gomma sulla suola in aree ad alta usura per una maggiore durata.<br>\r\nLe alette integrate forniscono una trazione aggressiva.<br>\r\n', '0.00', 'Sneaker Sportive'),
(31, 'Brooks Glycerin 17', './images/81Aqwhb0mmL._AC_UY535_.jpg', './images/81cbwQ+uNtL._AC_UY625_.jpg', './images/81DvHnh9MmL._AC_UY625_.jpg', 'Brooks', 'Nero', '16.00', 'Materiale esterno: Tela<br>\r\nFodera: Sintetico<br>\r\nMateriale suola: Gomma<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Normale<br>\r\n\r\n', '0.00', 'Sneaker Sportive'),
(32, 'DSQUARED2 M2445', './images/71l+lJQWHZL._AC_UX695_.jpg', './images/71qjhj2NYqL._AC_UX625_.jpg', './images/71iQyV2yTiL._AC_UY695_.jpg', 'DSQUARED2', 'Bianco', '17.00', 'Materiale esterno: Pelle scamosciata<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Casual'),
(33, 'PUMA Mb.01 Galaxy', './images/61dwZfAN1lL._AC_UY625_.jpg', './images/61xBoahdKXL._AC_UY695_.jpg', './images/51dJzwgZbbL._AC_UY695_.jpg', 'Puma', 'Blu', '15.00', 'Materiale esterno: Pelle<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: 100% sintetico<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(34, 'PUMA Thunder Spectra', './images/715hBntjjYL._AC_UX575_.jpg', './images/712uQ+NwzrL._AC_UY695_.jpg', './images/711dwRnIpwL._AC_UX575_.jpg', 'Puma', 'Nero', '15.00', 'Materiale esterno: Pelle<br>\r\nChiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nComposizione materiale: 100% sintetico<br>\r\nLarghezza scarpa: Normale<br>', '0.00', 'Sneaker Sportive'),
(35, 'Adidas Yeezy 700 V3', './images/61h8MUwSWDL._AC_UX575_.jpg', './images/61Aea9+fCuL._AC_UX575_.jpg', './images/6181LQLSZpL._AC_UX575_.jpg', 'Adidas', 'Nero', '19.00', 'Chiusura: Stringata<br>\r\nTipo di tacco: Piatto<br>\r\nLarghezza scarpa: Schmal<br>', '0.00', 'Sneaker Sportive');

-- --------------------------------------------------------

--
-- Struttura della tabella `prod_carrello`
--

CREATE TABLE `prod_carrello` (
  `id` int(11) NOT NULL,
  `id_carrello` int(20) NOT NULL,
  `id_prodotto` int(11) NOT NULL,
  `taglia` decimal(10,2) NOT NULL,
  `quantita` int(10) NOT NULL,
  `inizio` date NOT NULL,
  `fine` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dump dei dati per la tabella `prod_carrello`
--

INSERT INTO `prod_carrello` (`id`, `id_carrello`, `id_prodotto`, `taglia`, `quantita`, `inizio`, `fine`) VALUES
(100, 24, 19, '40.00', 1, '2023-06-01', '2023-06-02'),
(103, 375, 10, '40.00', 2, '2023-05-31', '2023-06-01'),
(104, 447, 10, '40.00', 1, '2023-05-31', '2023-06-01'),
(105, 447, 10, '40.00', 1, '2023-05-31', '2023-05-31');

-- --------------------------------------------------------

--
-- Struttura della tabella `prod_ordine`
--

CREATE TABLE `prod_ordine` (
  `id_prod_ordine` int(11) NOT NULL,
  `id_ordine` int(11) NOT NULL,
  `id_prod_magazzino` int(11) NOT NULL,
  `inizio` date NOT NULL,
  `fine` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

-- --------------------------------------------------------

--
-- Struttura della tabella `profili`
--

CREATE TABLE `profili` (
  `id_utente` int(11) NOT NULL,
  `nome_utente` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cognome` varchar(50) NOT NULL,
  `indirizzo` varchar(50) NOT NULL,
  `civico` varchar(10) NOT NULL,
  `cap` varchar(5) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `iscrizione` timestamp NOT NULL DEFAULT current_timestamp(),
  `attivo` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dump dei dati per la tabella `profili`
--

INSERT INTO `profili` (`id_utente`, `nome_utente`, `email`, `nome`, `cognome`, `indirizzo`, `civico`, `cap`, `password`, `telefono`, `iscrizione`, `attivo`) VALUES
(13, 'leo', 'leo@gmail.com', 'leo', 'leo', 'aaaa', 'aaa', 'aa', '0f759dd1ea6c4c76cedc299039ca4f23', 'aaa', '2023-05-12 14:11:51', 1),
(23, 'catini', 'catini@gmail.com', 'catini', 'catini', 'catini', '11', '11', '133f8e0a9dc152a9480f2502d05e3846', '11', '2023-05-23 14:28:13', 0),
(24, 'catini', 'catini@gmail.com', 'catini', 'catini', 'catini', '11', '11', '133f8e0a9dc152a9480f2502d05e3846', '11', '2023-05-23 14:29:57', 0),
(26, 'aaa', 'a@aaaa', 'aaa', 'aaaa', '', '', '', '3dbe00a167653a1aaee01d93e77e730e', '', '2023-05-25 17:06:21', 0),
(28, 'utente', 'utente@gmail.com', 'utente', 'utente', 'utente', '111', '11111', '3dbe00a167653a1aaee01d93e77e730e', '1111', '2023-05-30 13:40:14', 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `carrello`
--
ALTER TABLE `carrello`
  ADD PRIMARY KEY (`id_carrello`);

--
-- Indici per le tabelle `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`nome_categoria`);

--
-- Indici per le tabelle `colori`
--
ALTER TABLE `colori`
  ADD PRIMARY KEY (`nome_colore`);

--
-- Indici per le tabelle `magazzino`
--
ALTER TABLE `magazzino`
  ADD PRIMARY KEY (`codice`),
  ADD KEY `prodotto_magazzino` (`modello`) USING BTREE;

--
-- Indici per le tabelle `ordini`
--
ALTER TABLE `ordini`
  ADD PRIMARY KEY (`id_ordine`),
  ADD KEY `ordine-utente` (`id_utente`),
  ADD KEY `ordine-carrello` (`id_carrello`);

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `prodotti-colore` (`colore`),
  ADD KEY `prodotti-categoria` (`categoria`);

--
-- Indici per le tabelle `prod_carrello`
--
ALTER TABLE `prod_carrello`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `carrello` (`id_carrello`),
  ADD KEY `prodotto` (`id_prodotto`);

--
-- Indici per le tabelle `prod_ordine`
--
ALTER TABLE `prod_ordine`
  ADD PRIMARY KEY (`id_prod_ordine`);

--
-- Indici per le tabelle `profili`
--
ALTER TABLE `profili`
  ADD PRIMARY KEY (`id_utente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `carrello`
--
ALTER TABLE `carrello`
  MODIFY `id_carrello` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT per la tabella `magazzino`
--
ALTER TABLE `magazzino`
  MODIFY `codice` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT per la tabella `ordini`
--
ALTER TABLE `ordini`
  MODIFY `id_ordine` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT per la tabella `prod_carrello`
--
ALTER TABLE `prod_carrello`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT per la tabella `prod_ordine`
--
ALTER TABLE `prod_ordine`
  MODIFY `id_prod_ordine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT per la tabella `profili`
--
ALTER TABLE `profili`
  MODIFY `id_utente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `magazzino`
--
ALTER TABLE `magazzino`
  ADD CONSTRAINT `vincolo1` FOREIGN KEY (`modello`) REFERENCES `prodotti` (`id`);

--
-- Limiti per la tabella `ordini`
--
ALTER TABLE `ordini`
  ADD CONSTRAINT `ordine-carrello` FOREIGN KEY (`id_carrello`) REFERENCES `carrello` (`id_carrello`),
  ADD CONSTRAINT `ordine-utente` FOREIGN KEY (`id_utente`) REFERENCES `profili` (`id_utente`);

--
-- Limiti per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  ADD CONSTRAINT `prodotti-categoria` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`nome_categoria`),
  ADD CONSTRAINT `prodotti-colore` FOREIGN KEY (`colore`) REFERENCES `colori` (`nome_colore`);

--
-- Limiti per la tabella `prod_carrello`
--
ALTER TABLE `prod_carrello`
  ADD CONSTRAINT `carrello` FOREIGN KEY (`id_carrello`) REFERENCES `carrello` (`id_carrello`),
  ADD CONSTRAINT `prodotto` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotti` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
