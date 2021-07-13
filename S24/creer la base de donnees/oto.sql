-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 10 juil. 2021 à 08:54
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
-- Base de données : `oto`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL,
  `cli_nom` varchar(10) NOT NULL,
  `cli_prenom` varchar(20) NOT NULL,
  `cli_categorie` varchar(20) DEFAULT NULL,
  `id_facture` int(11) DEFAULT NULL,
  `id_services` int(11) DEFAULT NULL,
  `cli_montant_facture_ttc` int(11) DEFAULT NULL,
  `cli_date_commande` date NOT NULL,
  `cli_historique` text,
  `cli_imm_vehicule` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_client`),
  KEY `fk_client_facture` (`id_facture`),
  KEY `fk_client_services` (`id_services`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `concession`
--

DROP TABLE IF EXISTS `concession`;
CREATE TABLE IF NOT EXISTS `concession` (
  `id_concession` varchar(10) NOT NULL,
  `con_adresse` varchar(50) NOT NULL,
  `con_cp` int(11) NOT NULL,
  `con_ville` varchar(20) NOT NULL,
  `con_nb_employes` int(11) NOT NULL,
  `con_type_service` varchar(20) DEFAULT NULL,
  `con_siret` int(11) NOT NULL,
  `con_nb_vehicule` int(11) NOT NULL,
  `id_vehicule` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_concession`),
  KEY `fk_concession_parc_automobile` (`id_vehicule`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

DROP TABLE IF EXISTS `employes`;
CREATE TABLE IF NOT EXISTS `employes` (
  `id_emp` int(11) NOT NULL,
  `emp_nom` varchar(20) NOT NULL,
  `emp_prenom` varchar(20) NOT NULL,
  `emp_metier` varchar(20) NOT NULL,
  `id_concession` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_emp`),
  KEY `fk_employes_concession` (`id_concession`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `entretien`
--

DROP TABLE IF EXISTS `entretien`;
CREATE TABLE IF NOT EXISTS `entretien` (
  `id_services` int(11) NOT NULL,
  `id_emp` int(11) DEFAULT NULL,
  `id_vehicule_client` int(11) DEFAULT NULL,
  `ent_ser_libelle` varchar(20) DEFAULT NULL,
  `ent_montant_devis_piece` int(11) DEFAULT NULL,
  `ent_montant_devis_heure` int(11) DEFAULT NULL,
  `id_facture` int(11) DEFAULT NULL,
  `ent_montant_facture_ht` int(11) DEFAULT NULL,
  `ent_montant_facture_ttc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_services`),
  KEY `fk_entretien_employes` (`id_emp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id_facture` int(11) NOT NULL,
  `id_concession` varchar(10) DEFAULT NULL,
  `id_emp` int(11) DEFAULT NULL,
  `ser_libelle` varchar(20) DEFAULT NULL,
  `fac_montant_ht` int(11) NOT NULL,
  `fac_montant_ttc` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `fk_facture_concession` (`id_concession`),
  KEY `fk_facture_employes` (`id_emp`),
  KEY `fk_facture_client` (`id_client`),
  KEY `fk_facture_services` (`ser_libelle`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `heures_travailles`
--

DROP TABLE IF EXISTS `heures_travailles`;
CREATE TABLE IF NOT EXISTS `heures_travailles` (
  `id_heure_travailles` int(11) NOT NULL,
  `heu_majoration_weekend` int(11) DEFAULT NULL,
  `heu_remise` int(11) DEFAULT NULL,
  `heu_tarif_horaire` int(11) DEFAULT NULL,
  `heu_montant_devis_heure` int(11) DEFAULT NULL,
  `id_emp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_heure_travailles`),
  KEY `fk_vente_employes` (`id_emp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `magasin`
--

DROP TABLE IF EXISTS `magasin`;
CREATE TABLE IF NOT EXISTS `magasin` (
  `id_services` int(11) NOT NULL,
  `mag_serv_libelle` varchar(20) DEFAULT NULL,
  `mag_montant_devis_piece` int(11) DEFAULT NULL,
  `mag_date_commande` date DEFAULT NULL,
  `mag_date_reception` date DEFAULT NULL,
  `id_facture` int(11) DEFAULT NULL,
  `mag_montant_facture_ht` int(11) DEFAULT NULL,
  `mag_montant_facture_ttc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_services`),
  KEY `fk_magasin_facture` (`id_facture`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `parc_automobile`
--

DROP TABLE IF EXISTS `parc_automobile`;
CREATE TABLE IF NOT EXISTS `parc_automobile` (
  `id_vehicule` int(11) NOT NULL,
  `par_marque` varchar(20) NOT NULL,
  `par_type_vehicule` varchar(10) DEFAULT NULL,
  `par_kilometrage` int(11) NOT NULL,
  `par_option_auto` varchar(30) NOT NULL,
  `id_concession` varchar(10) DEFAULT NULL,
  `par_immatriculation_prov` int(11) NOT NULL,
  `par_carte_entretien` varchar(50) NOT NULL,
  PRIMARY KEY (`id_vehicule`),
  KEY `fk_parc_automobile_concession` (`id_concession`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pieces_auto`
--

DROP TABLE IF EXISTS `pieces_auto`;
CREATE TABLE IF NOT EXISTS `pieces_auto` (
  `id_pieces_auto` int(11) NOT NULL,
  `pie_nom` varchar(30) DEFAULT NULL,
  `pie_prix_ht` int(11) DEFAULT NULL,
  `pie_date_commande` date DEFAULT NULL,
  `pie_date_reception` date DEFAULT NULL,
  `pie_date_rdv_pose` date DEFAULT NULL,
  `pie_montant_facture_ttc` int(11) DEFAULT NULL,
  `pie_montant_devis` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pieces_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `ser_libelle` varchar(20) NOT NULL,
  `ser_description` varchar(50) NOT NULL,
  `ser_prix` int(11) NOT NULL,
  `id_services` int(11) DEFAULT NULL,
  PRIMARY KEY (`ser_libelle`),
  KEY `fk_services_magasin` (`id_services`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

DROP TABLE IF EXISTS `vente`;
CREATE TABLE IF NOT EXISTS `vente` (
  `id_services` int(11) NOT NULL,
  `id_emp` int(11) DEFAULT NULL,
  `id_vehicule` int(11) DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `ven_option_auto` varchar(30) DEFAULT NULL,
  `id_facture` int(11) DEFAULT NULL,
  `ven_montant_facture_ht` int(11) DEFAULT NULL,
  `ven_montant_facture_ttc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_services`),
  KEY `fk_vente_employes` (`id_emp`),
  KEY `fk_vente_parc_automobile` (`id_vehicule`),
  KEY `fk_vente_client` (`id_client`),
  KEY `fk_vente_facture` (`id_facture`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
