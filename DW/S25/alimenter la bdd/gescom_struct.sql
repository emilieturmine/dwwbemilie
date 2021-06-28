-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 28 juin 2021 à 07:17
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `cat_parent_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_parent_id`) VALUES
(2, 'Outillage manuel', NULL),
(3, 'Outillage mecanique', NULL),
(4, 'Plants et semis', NULL),
(5, 'Arbres et arbustes', NULL),
(6, 'Pots et accessoires', NULL),
(7, 'Mobilier de jardin', NULL),
(8, 'Materiaux', NULL),
(9, 'Tondeuses electriques', 3),
(10, 'Tondeuses a  moteur thermique', 3);

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `cou_id` char(2) NOT NULL,
  `cou_name` varchar(45) NOT NULL,
  UNIQUE KEY `alpha2` (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Emirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Armenie'),
('AN', 'Antilles Neerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Americaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'ÃŽles Ã…land'),
('AZ', 'Azerbadjan'),
('BA', 'Bosnie-Herzegovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahrein'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BM', 'Bermudes'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivie'),
('BR', 'Bresil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'ile Bouvet'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'iles Cocos (Keeling)'),
('CD', 'Republique Democratique du Congo'),
('CF', 'Republique Centrafricaine'),
('CG', 'Republique du Congo'),
('CH', 'Suisse'),
('CI', 'Cote d\'Ivoire'),
('CK', 'iles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Montenegro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'ile Christmas'),
('CY', 'Chypre'),
('CZ', 'Republique Tcheque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'Republique Dominicaine'),
('DZ', 'Algerie'),
('EC', 'Equateur'),
('EE', 'Estonie'),
('EG', 'Egypte'),
('EH', 'Sahara Occidental'),
('ER', 'Erythree'),
('ES', 'Espagne'),
('ET', 'Ethiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'iles (malvinas) Falkland'),
('FM', 'Etats Federes de Micronesie'),
('FO', 'Iles Feroe'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Georgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinee'),
('GP', 'Guadeloupe'),
('GQ', 'Guinee Equatoriale'),
('GR', 'Grece'),
('GS', 'Georgie du Sud et les iles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinee-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Iles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haiti'),
('HU', 'Hongrie'),
('ID', 'Indonesie'),
('IE', 'Irlande'),
('IL', 'Israel'),
('IM', 'Ile de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Ocean Indien'),
('IQ', 'Iraq'),
('IR', 'Republique Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaique'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'Republique Populaire Democratique de Coree'),
('KR', 'Republique de Coree'),
('KW', 'Koweit'),
('KY', 'Iles Caimanes'),
('KZ', 'Kazakhstan'),
('LA', 'Republique Democratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'Republique de Moldova'),
('MG', 'Madagascar'),
('MH', 'Iles Marshall'),
('MK', 'L\'ex-Republique Yougoslave de Macedoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Iles Mariannes du Nord'),
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
('NC', 'Nouvelle-Caledonie'),
('NE', 'Niger'),
('NF', 'Ile Norfolk'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvege'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'Nouvelle-Zelande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Perou'),
('PF', 'Polynesie Francaise'),
('PG', 'Papouasie-Nouvelle-GuinÃ©e'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupe'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Roumanie'),
('RU', 'Federation de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Iles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suede'),
('SG', 'Singapour'),
('SH', 'Sainte-Helene'),
('SI', 'Slovenie'),
('SJ', 'Svalbard et Ile Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Senegal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tome-et-Principe'),
('SV', 'El Salvador'),
('SY', 'Republique Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Iles Turks et Caeques'),
('TD', 'Tchad'),
('TF', 'Terres Australes FranÃ§aises'),
('TG', 'Togo'),
('TH', 'Thailande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinite-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan'),
('TZ', 'Republique-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Iles Mineures eloignees des Etats-Unis'),
('US', 'Etats-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbekistan'),
('VA', 'Saint-Siege (Etat de la Cite du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Iles Vierges Britanniques'),
('VI', 'Iles Vierges des Etats-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `cus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_address` varchar(150) NOT NULL,
  `cus_zipcode` varchar(5) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_countries_id` char(2) NOT NULL,
  `cus_mail` varchar(255) NOT NULL,
  `cus_phone` int(10) UNSIGNED NOT NULL,
  `cus_password` varchar(60) NOT NULL,
  `cus_add_date` datetime NOT NULL,
  `cus_update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `ibfk_customers_countries` (`cus_countries_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries_id`, `cus_mail`, `cus_phone`, `cus_password`, `cus_add_date`, `cus_update_date`) VALUES
(1, 'Riviere', 'Romain', '2301 boulevard Alsace-Lorraine', '80000', 'Amiens', 'FR', 'risus.morbi@laposte.net', 201583083, '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2017-01-02 23:47:20', '2020-05-06 00:01:53'),
(2, 'Bailly', 'Lilou', 'Ap #125-483 Fusce Street', '80300', 'Birmingham', 'GB', 'sagittis.placerat@Aliquam.co.uk', 700966695, '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2002-12-14 06:52:52', '2020-05-18 00:00:00'),
(3, 'Muller', 'Alexandre', 'P.O. Box 149, 6931 Nulla. Rd.', '80100', 'Abbeville', 'FR', 'mauris.Morbi@Lorem.co.uk', 167413271, '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2015-08-19 01:35:44', NULL),
(4, 'Lefebvre', 'Ã‰lisa', 'Ap #850-6013 Suscipit, Av.', '62000', 'Arras', 'FR', 'laplusbelledu62g@gmail.com', 710601863, '$2y$10$9Jxbv60GE2fDdKXkv2o1We9ToHGjLxwfeuD7nHjXDaCgFo8cnniSW', '2016-01-11 02:58:51', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `emp_superior_id` int(10) UNSIGNED DEFAULT NULL,
  `emp_pos_id` int(10) UNSIGNED NOT NULL,
  `emp_lastname` varchar(50) NOT NULL,
  `emp_firstname` varchar(50) NOT NULL,
  `emp_address` varchar(150) NOT NULL,
  `emp_zipcode` varchar(5) NOT NULL,
  `emp_city` varchar(50) NOT NULL,
  `emp_mail` varchar(255) NOT NULL,
  `emp_phone` int(10) UNSIGNED NOT NULL,
  `emp_salary` int(10) UNSIGNED DEFAULT NULL,
  `emp_enter_date` date NOT NULL,
  `emp_gender` char(1) NOT NULL,
  `emp_children` tinyint(2) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_superior_id` (`emp_superior_id`),
  KEY `emp_pos_id` (`emp_pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ord_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ord_order_date` date NOT NULL,
  `ord_payment_date` date DEFAULT NULL,
  `ord_ship_date` date DEFAULT NULL,
  `ord_reception_date` date DEFAULT NULL,
  `ord_status` varchar(25) NOT NULL,
  `ord_cus_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `ord_cus_id` (`ord_cus_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE IF NOT EXISTS `orders_details` (
  `ode_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_discount` decimal(4,2) DEFAULT NULL,
  `ode_quantity` int(5) NOT NULL,
  `ode_ord_id` int(10) UNSIGNED NOT NULL,
  `ode_pro_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ode_id`),
  KEY `ode_ord_id` (`ode_ord_id`) USING BTREE,
  KEY `ode_pro_id` (`ode_pro_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

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

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pos_libelle` varchar(30) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_cat_id` int(10) UNSIGNED NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(8) NOT NULL,
  `pro_ean` varchar(13) DEFAULT NULL,
  `pro_stock` int(5) UNSIGNED NOT NULL,
  `pro_stock_alert` int(5) UNSIGNED NOT NULL,
  `pro_color` varchar(30) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_publish` tinyint(1) NOT NULL,
  `pro_sup_id` int(10) UNSIGNED NOT NULL,
  `pro_add_date` datetime NOT NULL,
  `pro_update_date` datetime DEFAULT NULL,
  `pro_picture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `pro_sup_id` (`pro_sup_id`) USING BTREE,
  KEY `pro_cat_id` (`pro_cat_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `sup_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(50) NOT NULL,
  `sup_city` varchar(50) NOT NULL,
  `sup_countries_id` char(2) NOT NULL,
  `sup_address` varchar(150) NOT NULL,
  `sup_zipcode` varchar(5) NOT NULL,
  `sup_contact` varchar(100) NOT NULL,
  `sup_phone` varchar(10) NOT NULL,
  `sup_mail` varchar(75) NOT NULL,
  PRIMARY KEY (`sup_id`),
  KEY `sup_countries_id` (`sup_countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
