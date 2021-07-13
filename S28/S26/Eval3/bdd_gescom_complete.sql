-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 30 juin 2021 à 19:00
-- Version du serveur :  8.0.25-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gescom_struct`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int UNSIGNED NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_parent_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_parent_id`) VALUES
(1, 'jardinage', 1),
(2, 'Outillage manuel', NULL),
(3, 'Outillage mécanique', NULL),
(4, 'Plants et semis', NULL),
(5, 'Arbres et arbustes', NULL),
(6, 'Pots et accessoires', NULL),
(7, 'Mobilier de jardin', NULL),
(8, 'Matériaux', NULL),
(9, 'Tondeuses électriques', 3),
(10, 'Tondeuses à moteur thermique', 3),
(11, 'Débroussailleuses', 3);

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `cou_id` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cou_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int UNSIGNED NOT NULL,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_address` varchar(150) NOT NULL,
  `cus_zipcode` varchar(5) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_countries_id` char(2) NOT NULL,
  `cus_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cus_phone` int UNSIGNED NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries_id`, `cus_mail`, `cus_phone`, `cus_password`, `cus_add_date`, `cus_update_date`) VALUES
(1, 'Riviere', 'Romain', '1ruepetaouchnock', '80000', 'Amiens', 'FR', 'risus.morbi@laposte.net', 680450312, '201583083', '2017-01-02 23:47:20', '2020-05-06 00:01:53'),
(2, 'Bailly', 'Lilou', '2ruedelajoie', '80300', 'Birmingham', 'GB', 'sagittis.placerat@Aliquam.co.uk', 780450312, '700966695', '2002-12-14 06:52:52', '2020-05-18 00:00:00'),
(3, 'Muller', 'Alexandre', '3ruedelerreurintrouvable', '80100', 'Abbeville', 'FR', 'mauris.Morbi@Lorem.co.uk', 684563214, '167413271', '2015-08-19 01:35:44', NULL),
(4, 'Lefebvre', 'Élisa', '4chemindelapretention', '62000', 'Arras', 'FR', 'laplusbelledu62g@gmail.com', 689456523, '710601863', '2016-01-11 02:58:51', NULL),
(5, 'Andre', 'Maëlle', 'lljjveupee', '59133', 'Vieux-Genappe', 'FR', 'aliquam.adipiscing@fringilla.net', 680450112, '296292567', '2018-03-24 17:09:33', NULL),
(6, 'Lemaire', 'Enzo', '', '31779', 'Sevastopol', 'FR', 'interdum.feugiat@a.edu', 780456132, '395027964', '2017-08-16 15:18:39', NULL),
(7, 'Perez', 'Bienvenue', '', '49960', 'Maastricht', 'FR', 'tempus.mauris@nonloremvitae.net', 756459521, '735753221', '2006-02-19 12:25:51', NULL),
(8, 'Dumont', 'Emma', '', '13011', 'Paternopoli', 'FR', 'tristique.ac@Sedmalesuadaaugue.com', 745894561, '373682901', '2003-07-17 08:28:22', NULL),
(9, 'Riviere', 'Alice', '', '64066', 'Campbelltown', 'FR', 'fringilla.ornare.placerat@odioEtiam.edu', 320154678, '962347562', '2018-06-26 23:05:17', NULL),
(10, 'Boucher', 'Noë', '', '75197', 'Fermont', 'CA', 'facilisi.Sed.neque@eteuismodet.ca', 345648795, '527427380', '2012-01-24 12:00:27', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int UNSIGNED NOT NULL,
  `emp_superior_id` int UNSIGNED DEFAULT NULL,
  `emp_pos_id` int UNSIGNED NOT NULL,
  `emp_lastname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_firstname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `emp_phone` int UNSIGNED NOT NULL,
  `emp_salary` int UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_superior_id`, `emp_pos_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_enter_date`, `emp_gender`, `emp_children`) VALUES
(1, 17, 5, 'MOLETTE', 'Denis', '27 avenue Paul Lepoulpe', '80000', 'Amiens', 'dmolette@blabla.fr', 102030405, 18473, '2020-05-05', 'M', 8),
(2, 3, 2, 'NAGER', 'Emma', '14 rue Tabaga', '80300', 'Albert', 'emmanager@laposte.net', 102030405, 39576, '2015-03-27', 'F', 0),
(3, NULL, 1, 'LEBOSSE', 'Hugo', '28 mail Ludovic Cruchot', '75001', 'Paris', 'leboss@jarditou.com', 102030405, 50001, '2000-01-01', 'M', 2),
(4, 17, 6, 'LAPAGE', 'Edith', '22 rue Stevy Boulay', '60300', 'Senlis', 'lapage60300@yahoo.fr', 102030405, 18473, '2012-12-01', 'F', 1),
(5, 3, 35, 'DRESSAMERE', 'Yvan', '224 avenue Caumartin', '75009', 'Paris', 'yvan75009@outlook.com', 102030405, 39576, '2007-11-04', 'M', 0),
(6, 5, 3, 'MERCE', 'Coco', '56 cours Loana', '02000', 'Laon', 'merce@wazaa.net', 102030405, 30000, '2010-07-31', 'F', 2),
(7, 2, 3, 'AMAR', 'Yann', '4 rue du papillon de lumière', '62000', 'Arras', 'amar@azerty.com', 102030405, 30000, '2008-05-28', 'M', 3),
(8, 14, 13, 'ASAP', 'Liliane', 'Appartement 202-3846 Suspendisse Chemin', 'FA46 ', 'Pekanbaru', 'convallis@Integer.com', 102030405, 18473, '2007-03-20', 'F', 5),
(9, 17, 34, 'LAVISSE', 'Edouard', '131-3667 Arcu. Rd.', '80136', 'Rivery', 'nulla.magna@Proinvel.co.uk', 102030405, 24000, '2016-12-17', 'M', 2),
(10, 17, 14, 'HILLARY', 'Dorian', '6824 Placerat. Route', '12787', 'Parramatta', 'mus@Morbi.co.uk', 102030405, 20450, '2002-03-10', 'M', 2),
(11, 26, 27, 'POUTIN', 'Vladimir', '251-633 Convallis Impasse', '8373 ', 'Colchester', 'facilisis.vitae.orci@indolor.net', 102030405, 29500, '2015-05-03', 'M', 4);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int UNSIGNED NOT NULL,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_ship_date` date DEFAULT NULL,
  `ord_reception_date` date DEFAULT NULL,
  `ord_status` varchar(25) NOT NULL,
  `ord_cus_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_order_date`, `ord_payment_date`, `ord_ship_date`, `ord_reception_date`, `ord_status`, `ord_cus_id`) VALUES
(1, '2008-08-20', '2018-12-01', '2019-08-29', '2000-04-17', 'Commande urgente', 19),
(2, '2016-01-22', '2011-02-02', '2013-04-13', '2004-10-29', 'Commande urgente', 67),
(3, '2019-12-25', '2000-03-28', '2009-08-04', '2021-03-24', 'Commande urgente', 85),
(4, '2016-08-18', '2004-02-06', '2014-12-29', '2008-07-26', 'Commande urgente', 88),
(5, '2009-06-19', '2012-10-07', '2017-08-30', '2010-09-20', 'Commande urgente', 27),
(6, '2012-08-18', '2006-09-05', '2018-02-08', '2001-05-04', 'Commande urgente', 95),
(7, '2010-09-01', '2016-02-02', '2006-11-24', '2016-10-19', 'Commande urgente', 78),
(8, '2021-04-01', '2016-02-05', '2004-08-13', '2016-01-07', 'Commande urgente', 34),
(9, '2012-08-14', '2013-01-28', '2009-07-29', '2003-07-31', 'Commande urgente', 51),
(10, '2014-06-19', '2005-09-12', '2016-09-04', '2002-05-21', 'Commande urgente', 28);

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

CREATE TABLE `orders_details` (
  `ode_id` int UNSIGNED NOT NULL,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_discount` decimal(4,2) DEFAULT NULL,
  `ode_quantity` int NOT NULL,
  `ode_ord_id` int UNSIGNED NOT NULL,
  `ode_pro_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`ode_id`, `ode_unit_price`, `ode_discount`, `ode_quantity`, `ode_ord_id`, `ode_pro_id`) VALUES
(1, '14.99', NULL, 1, 5, 10),
(2, '14.90', NULL, 1, 53, 19),
(3, '499.99', NULL, 1, 53, 22),
(4, '9.90', NULL, 1, 17, 32),
(5, '88.00', NULL, 1, 72, 12),
(6, '288.32', NULL, 1, 20, 28),
(7, '32.50', NULL, 1, 56, 29),
(8, '88.00', NULL, 1, 74, 12),
(9, '110.00', '10.00', 1, 47, 7),
(10, '9.98', NULL, 1, 16, 24),
(11, '157.00', NULL, 1, 70, 25),
(12, '149.97', NULL, 1, 37, 30),
(13, '49.00', NULL, 1, 8, 13),
(14, '88.00', NULL, 1, 32, 14),
(15, '245.00', '10.00', 1, 7, 31),
(16, '110.00', '10.00', 1, 75, 7),
(17, '245.00', NULL, 1, 79, 31),
(18, '31.19', NULL, 1, 29, 18),
(19, '149.97', NULL, 1, 91, 30),
(20, '31.19', NULL, 1, 54, 18),
(21, '88.00', NULL, 1, 68, 12),
(22, '599.99', NULL, 1, 35, 21),
(23, '49.00', NULL, 1, 24, 13),
(24, '245.00', NULL, 1, 78, 31),
(25, '299.40', NULL, 1, 94, 26),
(26, '110.00', '10.00', 1, 35, 7),
(27, '135.90', NULL, 1, 77, 11),
(28, '12.00', NULL, 1, 83, 23),
(29, '157.00', NULL, 1, 81, 25),
(30, '299.40', NULL, 1, 48, 26),
(31, '288.32', NULL, 1, 95, 28),
(32, '110.00', '10.00', 1, 75, 7),
(33, '49.00', NULL, 1, 31, 13),
(34, '19.90', NULL, 1, 97, 16),
(35, '49.00', NULL, 1, 68, 13),
(36, '14.99', NULL, 1, 47, 10),
(37, '245.00', NULL, 1, 55, 31),
(38, '249.99', NULL, 1, 63, 8),
(39, '49.00', NULL, 1, 14, 13),
(40, '54.49', NULL, 1, 40, 15),
(41, '49.00', NULL, 1, 90, 13),
(42, '14.99', NULL, 1, 63, 10),
(43, '245.00', NULL, 1, 42, 31),
(44, '31.19', NULL, 1, 66, 18),
(45, '89.00', NULL, 1, 26, 27),
(46, '110.00', '10.00', 1, 87, 7),
(47, '9.90', NULL, 1, 11, 32),
(48, '249.99', NULL, 10, 9, 8),
(49, '599.99', NULL, 1, 93, 21),
(50, '19.90', NULL, 1, 81, 16),
(51, '135.90', NULL, 1, 47, 11),
(52, '157.00', NULL, 1, 70, 25),
(53, '110.00', '10.00', 1, 6, 7),
(54, '499.99', NULL, 1, 61, 22),
(55, '32.50', NULL, 1, 89, 29),
(56, '135.90', NULL, 1, 67, 11),
(57, '49.00', NULL, 1, 11, 13),
(58, '9.90', NULL, 1, 96, 32),
(59, '157.00', NULL, 1, 41, 25),
(60, '245.00', NULL, 1, 60, 31),
(61, '19.90', NULL, 1, 16, 16),
(62, '499.99', NULL, 1, 8, 22),
(63, '249.99', NULL, 1, 19, 8),
(64, '110.00', '10.00', 1, 54, 7),
(65, '299.40', NULL, 1, 62, 26),
(66, '135.90', NULL, 1, 56, 11),
(67, '149.97', NULL, 1, 52, 30),
(68, '245.00', NULL, 1, 53, 31),
(69, '19.90', NULL, 1, 52, 16),
(70, '9.98', NULL, 1, 21, 24),
(71, '9.90', NULL, 1, 23, 32),
(72, '14.99', NULL, 1, 37, 10),
(73, '149.97', NULL, 1, 27, 30),
(74, '32.50', NULL, 1, 60, 29),
(75, '32.50', NULL, 1, 40, 29),
(76, '14.90', NULL, 1, 54, 19),
(77, '88.00', NULL, 1, 25, 14),
(78, '88.00', NULL, 1, 85, 12),
(79, '599.99', NULL, 1, 51, 21),
(80, '599.99', NULL, 1, 2, 21),
(81, '14.99', NULL, 1, 97, 10),
(82, '9.90', NULL, 1, 37, 32),
(83, '9.98', NULL, 1, 47, 24),
(84, '14.90', NULL, 1, 70, 19),
(85, '49.00', NULL, 1, 43, 13),
(86, '31.19', NULL, 1, 56, 20),
(87, '19.90', NULL, 1, 72, 16),
(88, '245.00', NULL, 1, 20, 31),
(89, '31.19', NULL, 1, 4, 20),
(90, '54.49', NULL, 1, 86, 15),
(91, '24.90', NULL, 1, 14, 17),
(92, '249.99', NULL, 1, 67, 8),
(93, '288.32', NULL, 1, 6, 28),
(94, '110.00', '10.00', 1, 58, 7),
(95, '110.00', '20.00', 2, 12, 7),
(96, '88.00', NULL, 1, 100, 12),
(97, '88.00', NULL, 1, 48, 12),
(98, '245.00', NULL, 1, 17, 31),
(99, '88.00', NULL, 1, 39, 12),
(100, '149.97', NULL, 1, 15, 30);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `pos_id` int UNSIGNED NOT NULL,
  `pos_libelle` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`pos_id`, `pos_libelle`) VALUES
(1, 'President'),
(2, 'Manager'),
(3, 'Commercial'),
(4, 'Responsable_ventes'),
(5, 'Mecanicien'),
(6, 'Assistant_commercial'),
(7, 'Acheteur'),
(8, 'Assistant_RH'),
(9, 'Directeur_financier'),
(10, 'Directeur_RH');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `pro_id` int UNSIGNED NOT NULL,
  `pro_cat_id` int UNSIGNED NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_ean` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pro_stock` int UNSIGNED NOT NULL,
  `pro_stock_alert` int UNSIGNED NOT NULL,
  `pro_color` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pro_publish` tinyint(1) NOT NULL,
  `pro_sup_id` int UNSIGNED NOT NULL,
  `pro_add_date` datetime NOT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_picture` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`pro_id`, `pro_cat_id`, `pro_price`, `pro_ref`, `pro_ean`, `pro_stock`, `pro_stock_alert`, `pro_color`, `pro_name`, `pro_desc`, `pro_publish`, `pro_sup_id`, `pro_add_date`, `pro_update_date`, `pro_picture`) VALUES
(7, 27, '110.00', 'barb001', NULL, 2, 5, 'Brun', 'Aramis ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porttitor sit amet ipsum sit amet dapibus. Cras suscipit neque ac magna sagittis lobortis. Duis venenatis enim ac nisl luctus, a scelerisque velit porttitor. Integer nec massa quis urna mollis consectetur et et nisl. Nullam eget nunc vitae nisl convallis faucibus. Vestibulum dapibus, metus nec molestie lobortis, nunc sem mollis tortor, et auctor dolor nunc at nisi. Pellentesque sit amet turpis nisi. ', 0, 4, '2018-04-18 00:00:00', '2018-11-14 00:00:00', 'jpg'),
(8, 27, '249.99', 'barb002', NULL, 0, 5, 'Noir', 'Athos', 'Cu\'rabitur pellentesque posuere luctus. Sed et risus vel quam pharetra pretium non quis odio. Praesent varius risus vel orci ultrices tincidunt.', 0, 4, '2016-06-14 00:00:00', NULL, 'jpg'),
(10, 2, '14.99', 'SEC-B', NULL, 16, 5, 'Rouge', 'Red', 'Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien. Aenean ut tellus non risus varius bibendum quis vel ligula.', 0, 3, '2018-08-05 00:00:00', NULL, 'jpg'),
(11, 27, '135.90', 'barb003', NULL, 10, 5, 'Chrome', 'Clatronic', 'Fusce rutrum odio sem, quis finibus nisl finibus a. Praesent dictum ex in lectus porta, vitae varius lacus eleifend. Sed sed lacinia mi, sed egestas odio. Integer a congue lectus.', 0, 4, '2017-10-18 00:00:00', '2018-08-23 00:00:00', 'jpg'),
(12, 27, '88.00', 'barb004', NULL, 5, 5, 'Noir', 'Camping', 'Phasellus auctor mattis justo, in semper urna congue eget. Nunc sit amet nunc sed dui fringilla scelerisque a eget sem. Aenean cursus eros vehicula arcu blandit, sit amet faucibus leo finibus. Duis pharetra felis eget viverra tempor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 4, '2018-08-20 00:00:00', NULL, 'jpg'),
(13, 13, '49.00', 'brou001', NULL, 25, 5, 'Verte', 'Green', 'Fusce interdum ex justo, vel imperdiet erat volutpat non. Donec et maximus lacus. ', 0, 2, '2018-08-01 00:00:00', NULL, 'jpg'),
(14, 13, '88.00', 'brou002', NULL, 0, 5, 'Argent', 'Silver', 'Pellentesque ultrices vestibulum sagittis.', 1, 2, '2018-08-09 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(15, 13, '54.49', 'brou003', NULL, 3, 5, 'Jaune', 'Yellow', 'Sed lobortis pulvinar orci, ut efficitur urna egestas eu.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(16, 2, '19.90', 'GA410', NULL, 50, 5, 'Gris', 'Bêche GA 410', 'Nulla at consequat orci.', 0, 2, '2018-08-13 00:00:00', NULL, 'png'),
(17, 2, '24.90', 'beche002', NULL, 1, 5, 'Argent', 'Bêche GA 388', 'Curabitur varius interdum nulla, sit amet consequat massa. Vestibulum rutrum leo lectus. Phasellus sit amet viverra velit.', 0, 2, '2018-03-15 00:00:00', NULL, 'png'),
(18, 2, '31.19', 'scm0555', NULL, 0, 5, 'Bleue', 'Scie à main SCM0555', 'Pellentesque fermentum ut est sagittis feugiat. Morbi in turpis augue. Maecenas dapibus ligula velit, ac gravida risus imperdiet in.', 0, 2, '2018-08-19 00:00:00', NULL, 'png'),
(19, 2, '14.90', 'scm559', NULL, 4, 5, 'Bleu', 'Scie couteau', 'raesent ante felis, iaculis vitae lectus sed, luctus laoreet metus. Aenean mattis egestas eleifend. Morbi dictum erat ut lorem porta, a volutpat nibh ultrices. Nunc ut tortor ac velit fringilla dictum at non nulla.', 0, 2, '2018-04-13 00:00:00', NULL, 'png'),
(20, 2, '31.19', 'h0662', NULL, 0, 5, 'Noir', 'Hache H062', 'Cras nec dapibus erat. Cras bibendum auctor dui quis tristique.', 0, 2, '2018-08-12 00:00:00', NULL, 'png'),
(21, 11, '599.99', 'DB0703', NULL, 4, 5, 'Bleue', 'Titan', 'Etiam eu sem ligula. Donec aliquet velit a condimentum sagittis. Nullam ipsum augue, porta non vestibulum cursus, eleifend tempor erat. Proin et turpis molestie augue mollis laoreet. Nulla lorem tellus, pellentesque nec hendrerit vehicula, consectetur non nisl. Maecenas eget accumsan lectus. Vivamus eleifend lorem scelerisque augue rutrum laoreet. ', 0, 3, '1999-08-26 00:00:00', NULL, 'png'),
(22, 11, '499.99', 'DB0755', NULL, 0, 5, 'Bleue', 'Attila', 'Là où passe Attila, l\'herbe ne repousse pas.', 0, 3, '2018-05-16 00:00:00', NULL, 'png'),
(23, 28, '12.00', 'LAM121', NULL, 0, 5, 'Rouge', 'Aquitaine', 'Integer aliquet accumsan eleifend. Pellentesque mauris tortor, ultricies a pulvinar ut, fringilla ac mi. Sed consequat, nibh at tempus porttitor, tellus nunc dictum nulla, sed finibus felis augue sed libero. Donec augue mi, mattis et orci ac, mollis feugiat elit.', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(24, 28, '9.98', 'LAM233', NULL, 500, 5, 'Brun', 'Brown', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis. Vivamus a ultrices enim. ', 0, 2, '2018-03-17 00:00:00', NULL, 'jpg'),
(25, 25, '157.00', 'PRS-01C', NULL, 5, 5, 'Brun', 'Biarritz', 'Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh. Suspendisse et aliquet tellus, in suscipit magna.', 0, 2, '2018-08-19 00:00:00', NULL, 'jpg'),
(26, 25, '299.40', 'PRS-38A', NULL, 4, 5, 'Rose', 'Cannes', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie. Proin ac tellus a enim venenatis ultrices vitae sed libero. Vivamus at vulputate orci. Curabitur mattis ac turpis id tempus. Sed turpis enim, egestas ac arcu et, elementum luctus ante.', 0, 2, '2018-08-12 00:00:00', NULL, 'jpg'),
(27, 25, '89.00', 'PRS-87F', NULL, 21, 5, 'Rouge', 'Crotoy', 'Morbi porta ultricies nibh vel varius. Vestibulum nec rutrum ex, vel posuere nisi. Ut scelerisque sit amet ligula sed imperdiet. Morbi lacinia sapien in elementum iaculis.', 0, 2, '2018-04-12 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(28, 21, '288.32', 'POT_001', NULL, 11, 5, 'Orange', 'Agave', '. Vivamus a ultrices enim. Etiam at viverra justo. Cras consectetur justo euismod mi maximus, ac tincidunt leo suscipit. Quisque fermentum, dui eu elementum sagittis, risus lorem placerat ipsum, vitae venenatis tellus sapien id nibh.', 0, 1, '2017-11-12 00:00:00', NULL, 'jpg'),
(29, 21, '32.50', 'POT-002', NULL, 45, 5, 'Noir', 'Dark', 'Curabitur sodales sem vitae ex commodo, in ullamcorper quam congue. Aliquam erat volutpat. Praesent mollis at velit eu molestie.', 0, 1, '2018-08-19 00:00:00', NULL, 'jpg'),
(30, 21, '149.97', 'POT_003', NULL, 0, 5, 'Rose', 'Fuschia', 'Vel porta orci convallis. Duis sodales vehicula porta. Etiam sit amet scelerisque massa. ', 0, 1, '2018-03-04 00:00:00', NULL, 'jpg'),
(31, 6, '245.00', 'POT-381', NULL, 10, 5, 'Marron', 'Iris', 'Praesent nunc dui, porta at leo eget, iaculis ultrices quam. Mauris vulputate metus in nisl aliquam, et sollicitudin nisl mollis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 0, 1, '2017-04-16 00:00:00', NULL, 'jpg'),
(32, 2, '9.90', 'SEC-A', NULL, 280, 5, 'Orange', 'Bahco', 'In hac habitasse platea dictumst. Quisque at sagittis nunc.', 0, 3, '2018-08-14 00:00:00', NULL, 'jpg'),
(34, 10, '335.00', 'ENH0335', NULL, 1, 5, 'Rouge', 'Einhell', 'Suspendisse congue nibh sed dui commodo sollicitudin. Vestibulum augue eros, accumsan vel vulputate ut, gravida id libero. Nullam sodales urna id nulla porta vestibulum. Aliquam lectus lacus, tincidunt nec metus.', 0, 4, '2018-05-17 00:00:00', NULL, 'jpg'),
(35, 10, '990.00', 'GRIZ_001', NULL, 1, 5, 'Chrome', 'Grizzly', 'luctus aliquet enim. Phasellus quis velit quis tellus pharetra aliquam in at urna. Cras vitae turpis erat. Phasellus libero arcu, fringilla sit amet tempus blandit, congue eu nulla. Morbi id efficitur tellus.', 0, 4, '2018-08-05 00:00:00', '2020-05-05 00:00:00', 'jpg'),
(36, 9, '75.00', 'HERO', NULL, 7, 5, 'Vert', 'Hero', '', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(37, 9, '120.50', 'SL1280', NULL, 5, 5, 'Vert', 'SL 1280', 'Quisque nec nisi risus. Fusce eu est non velit mollis tristique a et magna. Proin sodales.', 0, 4, '2018-08-05 00:00:00', '2018-08-22 00:00:00', 'jpg'),
(38, 10, '348.00', '6cv', NULL, 2, 5, 'Rouge', 'Red 6CV ', 'uis vehicula risus in nibh lobortis euismod. In hac habitasse platea dictumst. Quisque at sagittis nunc. Phasellus ac gravida lorem. Aliquam sed aliquam nisl. Etiam non ornare sapien.', 0, 4, '2018-08-16 00:00:00', '2018-08-21 00:00:00', 'jpg'),
(39, 10, '497.00', 'TRIKE', NULL, 1, 5, 'Rouge', 'Trike', 'Aenean ut tellus non risus varius bibendum quis vel ligula. ', 0, 4, '2018-08-21 00:00:00', '2018-08-21 10:05:51', 'jpg'),
(41, 9, '49.80', 'ZOOM', NULL, 223, 5, 'Gris', 'Zoom', 'Nunc magna erat, ultrices et facilisis non, viverra in turpis. Nulla orci mi, maximus eu facilisis a, pretium sit amet ex.', 0, 4, '2018-08-13 00:00:00', NULL, 'jpg'),
(42, 10, '1.20', 'waz1', NULL, 123, 5, 'rouge', 'wazaa', 'azerty', 0, 4, '2019-05-03 00:00:00', NULL, 'jpg');

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `sup_id` int UNSIGNED NOT NULL,
  `sup_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_countries_id` char(2) NOT NULL,
  `sup_address` varchar(150) NOT NULL,
  `sup_zipcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_contact` varchar(100) NOT NULL,
  `sup_phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_mail` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_city`, `sup_countries_id`, `sup_address`, `sup_zipcode`, `sup_contact`, `sup_phone`, `sup_mail`) VALUES
(1, 'Plantage', 'Paris', 'FR', '1 avenue Cyril Hanouna', '75017', 'Nicolas Dujardin', '0102030405', 'contact@plantage.fr'),
(2, 'Jardi+', 'Amiens', 'FR', '200 boulevard Eve Angeli', '80090', 'Mike Anic', '0708091011', 'jardiplus@gmail.com'),
(3, 'Attila', 'Marseille', 'FR', '31 rue Nabilla Benattia', '13000', 'Elle Ephant', '0213141516', 'attila.tondeuses@laposte.net'),
(4, 'Barbeuc', 'Narbonne', 'FR', '56 avenue Donald Trump', '11000', 'Gérard Menfaim', '0512345678', 'sales@barbeuc.com'),
(5, 'FOURNIRIEN', 'Shangaï', 'CN', '112 rue de Pékin', '340', 'Chang Li', '0102030405', 'chang.li@fournirien.cn');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_parent_id` (`cat_parent_id`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD UNIQUE KEY `alpha2` (`cou_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`),
  ADD KEY `ibfk_customers_countries` (`cus_countries_id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_superior_id` (`emp_superior_id`),
  ADD KEY `emp_pos_id` (`emp_pos_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cus_id` (`ord_cus_id`) USING BTREE;

--
-- Index pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`ode_id`),
  ADD KEY `ode_ord_id` (`ode_ord_id`) USING BTREE,
  ADD KEY `ode_pro_id` (`ode_pro_id`) USING BTREE;

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pos_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `pro_sup_id` (`pro_sup_id`) USING BTREE,
  ADD KEY `pro_cat_id` (`pro_cat_id`) USING BTREE;

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`),
  ADD KEY `sup_countries_id` (`sup_countries_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `ode_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `pos_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `ibfk_customers_countries` FOREIGN KEY (`cus_countries_id`) REFERENCES `countries` (`cou_id`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`emp_superior_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`emp_pos_id`) REFERENCES `posts` (`pos_id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`ode_ord_id`) REFERENCES `orders` (`ord_id`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`ode_pro_id`) REFERENCES `products` (`pro_id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`sup_countries_id`) REFERENCES `countries` (`cou_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
