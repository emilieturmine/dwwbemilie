-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 12 juil. 2021 à 12:12
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
-- Base de données : `green_valley`
--

-- --------------------------------------------------------

--
-- Structure de la table `catalogue`
--

CREATE TABLE `catalogue` (
  `cat_id` int NOT NULL,
  `cat_maj` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cate_id` int NOT NULL,
  `cate_nom` varchar(50) NOT NULL,
  `cate_description` text NOT NULL,
  `cat_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `reference_client` int NOT NULL,
  `cli_nom` varchar(50) NOT NULL,
  `cli_prenom` varchar(50) NOT NULL,
  `cli_adresse` varchar(50) NOT NULL,
  `cli_cp` int NOT NULL,
  `cli_ville` varchar(50) NOT NULL,
  `cli_pays` varchar(50) NOT NULL,
  `cli_email` varchar(50) NOT NULL,
  `cli_coef_vente` decimal(2,2) NOT NULL,
  `cli_facturation_adresse` varchar(50) NOT NULL,
  `cli_facturation_cp` int NOT NULL,
  `cli_facturation_ville` varchar(50) NOT NULL,
  `cli_facturation_pays` varchar(50) NOT NULL,
  `cli_assurance` varchar(1) NOT NULL,
  `cli_facturation_historique` text,
  `cli_tel_part` int NOT NULL,
  `cli_disponibilités` datetime DEFAULT NULL,
  `emp_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `com_id` varchar(50) NOT NULL,
  `com_reduction` varchar(50) DEFAULT NULL,
  `com_livraison_adresse` varchar(50) NOT NULL,
  `com_livraison_ville` varchar(50) NOT NULL,
  `com_livraison_cp` int NOT NULL,
  `com_livraison_pays` varchar(50) DEFAULT NULL,
  `com_remise_ht` decimal(2,2) DEFAULT NULL,
  `com_date_reglement` date DEFAULT NULL,
  `com_date_livraison` varchar(50) DEFAULT NULL,
  `com_type__reglement` varchar(50) DEFAULT NULL,
  `com_livraison_bon` int DEFAULT NULL,
  `reference_client` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacter`
--

CREATE TABLE `contacter` (
  `fou_id` int NOT NULL,
  `emp_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int NOT NULL,
  `emp_nom` varchar(50) NOT NULL,
  `emp_prenom` varchar(50) NOT NULL,
  `emp_age` varchar(50) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_num_secu` int NOT NULL,
  `emp_rib` varchar(50) NOT NULL,
  `emp_poste` varchar(50) NOT NULL,
  `emp_poste_description` varchar(50) NOT NULL,
  `emp_trajet_km` varchar(50) NOT NULL,
  `emp_vehicule` varchar(1) NOT NULL,
  `emp_handicap` varchar(1) NOT NULL,
  `emp_amenagement_poste` text NOT NULL,
  `emp_adresse` varchar(50) NOT NULL,
  `emp_code_postal` int NOT NULL,
  `emp_ville` varchar(50) NOT NULL,
  `emp_pays` varchar(50) NOT NULL,
  `emp_tel_pro` int DEFAULT NULL,
  `emp_tel_part` int DEFAULT NULL,
  `emp_contact_urgence_nom` varchar(50) NOT NULL,
  `emp_contact_urgence_prenom` varchar(50) NOT NULL,
  `emp_contact_urgence_tel_pro` int NOT NULL,
  `emp_contact_urgence_tel_part` int NOT NULL,
  `emp_syndicat` varchar(50) DEFAULT NULL,
  `emp_debut_contrar` date NOT NULL,
  `emp_fin_contrat` date DEFAULT NULL,
  `emp_type_contrat` varchar(50) NOT NULL,
  `emp_photo` binary(50) DEFAULT NULL,
  `emp_docs` binary(50) NOT NULL,
  `emp_nb_enfants` int DEFAULT NULL,
  `emp_ancienneté` int NOT NULL,
  `emp_salaire` int DEFAULT NULL,
  `emp_primes` varchar(50) DEFAULT NULL,
  `emp_amen_poste_description` varchar(50) DEFAULT NULL,
  `serv_id` varchar(50) NOT NULL,
  `cat_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `ent_id` int NOT NULL,
  `ent_nom` varchar(50) NOT NULL,
  `ent_siret` int NOT NULL,
  `ent_rais_soc` varchar(50) NOT NULL,
  `ent_adresse` varchar(50) NOT NULL,
  `ent_code_postal` int NOT NULL,
  `ent_ville` varchar(50) NOT NULL,
  `ent_pays` varchar(50) NOT NULL,
  `ent_nb_employes` int NOT NULL,
  `ent_CA_annuel` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `fou_id` int NOT NULL,
  `fou_type` varchar(20) NOT NULL,
  `fou_nom` varchar(50) NOT NULL,
  `fou_siret` int NOT NULL,
  `fou_adresse` varchar(50) NOT NULL,
  `fou_ville` varchar(50) NOT NULL,
  `fou_pays` varchar(50) NOT NULL,
  `fou_email` varchar(50) NOT NULL,
  `fou_contact_nom` varchar(50) NOT NULL,
  `fou_contact_prenom` varchar(50) NOT NULL,
  `fou_code_postal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reference_produits`
--

CREATE TABLE `reference_produits` (
  `pro_id` int NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `designation` text,
  `pro_prix_achat_ht` decimal(5,2) NOT NULL,
  `pro_poids` int DEFAULT NULL,
  `pro_largeur` decimal(4,2) NOT NULL,
  `pro_longueur` decimal(4,2) NOT NULL,
  `pro_nb_colis` int NOT NULL,
  `pro_marque` varchar(50) NOT NULL,
  `pro_sock` int NOT NULL,
  `pro_stock_alert` varchar(50) NOT NULL,
  `pro_photo` binary(50) NOT NULL,
  `com_id` varchar(50) NOT NULL,
  `ssc_id` int NOT NULL,
  `fou_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `serv_id` varchar(50) NOT NULL,
  `serv_nom` varchar(50) NOT NULL,
  `serv_description` text,
  `serv_nb_employees` int NOT NULL,
  `serv_droits_admin` varchar(10) NOT NULL,
  `serv_adresse` varchar(50) NOT NULL,
  `serv_code_postale` int NOT NULL,
  `serv_ville` varchar(50) NOT NULL,
  `serv_pays` varchar(50) NOT NULL,
  `serv_email` varchar(50) NOT NULL,
  `ent_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ss_categories`
--

CREATE TABLE `ss_categories` (
  `ssc_id` int NOT NULL,
  `ssc_nom` varchar(50) NOT NULL,
  `ssc_description` varchar(50) NOT NULL,
  `cate_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `catalogue`
--
ALTER TABLE `catalogue`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`),
  ADD UNIQUE KEY `cate_nom` (`cate_nom`),
  ADD KEY `fk_categories_catalogue` (`cat_id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`reference_client`),
  ADD KEY `fk_clients_employees` (`emp_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `fk_commande_clients` (`reference_client`);

--
-- Index pour la table `contacter`
--
ALTER TABLE `contacter`
  ADD PRIMARY KEY (`fou_id`,`emp_id`),
  ADD KEY `fk_contacter_employees` (`emp_id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_email` (`emp_email`),
  ADD UNIQUE KEY `emp_num_secu` (`emp_num_secu`),
  ADD KEY `fk_employees_services` (`serv_id`),
  ADD KEY `fk_employees_catalogue` (`cat_id`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`ent_id`),
  ADD UNIQUE KEY `ent_siret` (`ent_siret`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`fou_id`);

--
-- Index pour la table `reference_produits`
--
ALTER TABLE `reference_produits`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `fk_reference_produits_commande` (`com_id`),
  ADD KEY `fk_reference_produit_ss_categories` (`ssc_id`),
  ADD KEY `fk_reference_produits_fournisseur` (`fou_id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serv_id`),
  ADD UNIQUE KEY `serv_email` (`serv_email`),
  ADD KEY `fk_services_entreprise` (`ent_id`);

--
-- Index pour la table `ss_categories`
--
ALTER TABLE `ss_categories`
  ADD PRIMARY KEY (`ssc_id`),
  ADD UNIQUE KEY `ssc_nom` (`ssc_nom`),
  ADD KEY `fk_ss_categories_categories` (`cate_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_categories_catalogue` FOREIGN KEY (`cat_id`) REFERENCES `catalogue` (`cat_id`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `fk_clients_employees` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `fk_commande_clients` FOREIGN KEY (`reference_client`) REFERENCES `clients` (`reference_client`);

--
-- Contraintes pour la table `contacter`
--
ALTER TABLE `contacter`
  ADD CONSTRAINT `fk_contacter_employees` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`),
  ADD CONSTRAINT `fk_contacter_fournisseur` FOREIGN KEY (`fou_id`) REFERENCES `fournisseur` (`fou_id`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_employees_catalogue` FOREIGN KEY (`cat_id`) REFERENCES `catalogue` (`cat_id`),
  ADD CONSTRAINT `fk_employees_services` FOREIGN KEY (`serv_id`) REFERENCES `services` (`serv_id`);

--
-- Contraintes pour la table `reference_produits`
--
ALTER TABLE `reference_produits`
  ADD CONSTRAINT `fk_reference_produit_ss_categories` FOREIGN KEY (`ssc_id`) REFERENCES `ss_categories` (`ssc_id`),
  ADD CONSTRAINT `fk_reference_produits_commande` FOREIGN KEY (`com_id`) REFERENCES `commande` (`com_id`),
  ADD CONSTRAINT `fk_reference_produits_fournisseur` FOREIGN KEY (`fou_id`) REFERENCES `fournisseur` (`fou_id`);

--
-- Contraintes pour la table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `fk_services_entreprise` FOREIGN KEY (`ent_id`) REFERENCES `entreprise` (`ent_id`);

--
-- Contraintes pour la table `ss_categories`
--
ALTER TABLE `ss_categories`
  ADD CONSTRAINT `fk_ss_categories_categories` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`cate_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
