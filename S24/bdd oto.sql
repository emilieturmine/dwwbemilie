DROP DATABASE IF EXISTS OTO;
CREATE DATABASE OTO;
USE OTO;
CREATE TABLE concession(
    conc_nom Varchar(10) ,
    conc_adresse varchar (50) NOT NULL ,
    conc_cp int NOT NULL ,
    conc_ville varchar(20) NOT NULL ,
    nb_employes int NOT NULL ,
    type_service varchar(20) /*CHECK()*/,
    num_siret int NOT NULL ,
    nb_vehicule int NOT NULL ,
    id_vehicule int ,
    CONSTRAINT concession_PK PRIMARY KEY (conc_nom)
);
CREATE TABLE employes(
    id_emp int  ,
    emp_nom varchar(20) NOT NULL ,
    emp_prenom varchar(20) NOT NULL ,
    emp_metier varchar(20) NOT NULL ,
    CONSTRAINT employes_PK PRIMARY KEY (id_emp)
);
CREATE TABLE parc_automobile(
    id_vehicule int ,
    marque varchar(20) NOT NULL ,
    type_vehicule varchar(10) /*CHECK()*/ ,
    kilometrage int NOT NULL ,
    option_auto varchar(30) NOT NULL ,
    conc_nom varchar(10) ,
    immatriculation_prov int NOT NULL ,
    carte_entretien varchar(50) NOT NULL ,
    CONSTRAINT parc_automobile_PK PRIMARY KEY (id_vehicule)
);
CREATE TABLE pieces_auto(
    id_pieces_auto int ,
    nom_piece_auto varchar(30) ,
    prix_pieces_ht int ,
    date_commande date ,
    date_reception date ,
    date_rdv_pose date ,
    montant_facture_ttc int ,
    montant_devis_piece int ,
    CONSTRAINT pieces_auto_PK PRIMARY KEY (id_pieces_auto)
);
CREATE TABLE heures_travailles(
    id_heure_travailles int ,
    majoration_weekend int ,
    remise int ,
    tarif_horaire int ,
    montant_devis_heure int ,
    CONSTRAINT heures_travailles_PK PRIMARY KEY (id_heure_travailles)
);
CREATE TABLE services(
    serv_libelle varchar(20) /*CHECK() */,
    serv_description varchar(50) NOT NULL ,
    prix int NOT NULL ,
    id_service int ,
    CONSTRAINT services_PK PRIMARY KEY (serv_libelle)
);
CREATE TABLE vente(
    id_service int ,
    id_emp int ,
    id_vehicule int ,
    id_client int ,
    option_auto varchar(30) ,
    id_facture int ,
    montant_facture_ht int ,
    montant_facture_ttc int ,
    CONSTRAINT vente_PK PRIMARY KEY (id_service)
);
CREATE TABLE entretien(
    id_service int ,
    id_emp int ,
    id_vehicule_client int ,
    serv_libelle varchar(20) ,
    montant_devis_piece int ,  
    montant_devis_heure int ,
    id_facture int ,
    montant_facture_ht int ,
    montant_facture_ttc int ,
    CONSTRAINT entretien_PK PRIMARY KEY (id_service) 
  );
CREATE TABLE magasin(
    id_service int ,
    id_emp int ,
    id_vehicule_client int ,
    serv_libelle varchar(20) ,
    montant_devis_piece int ,
    date_commande date ,
    date_reception date ,
    id_facture int ,
    montant_facture_ht int ,
    montant_facture_ttc int ,
    CONSTRAINT magasin_PK PRIMARY KEY (id_service) 
   );
CREATE TABLE client(
    id_client int ,
    cli_nom varchar(10) NOT NULL ,
    cli_prenom varchar(20) NOT NULL ,
    cli_categorie varchar(20) /*CHECK() */,
    id_facture int ,
    id_service int ,
    montant_facture_ttc int ,
    date_commande date NOT NULL ,
    cli_historique varchar(50) ,
    cli_imm_vehicule int ,
    CONSTRAINT client_PK PRIMARY KEY (id_client) ,
);
CREATE TABLE facture(
    id_facture int ,
    conc_nom varchar(10) ,
    id_emp int ,
    serv_libelle varchar(20) ,
    montant_facture_ht int NOT NULL,
    montant_facture_ttc int ,
    id_client int ,
    CONSTRAINT facture_PK PRIMARY KEY (id_facture)
);
/*remplir les check(); introduire cles etrangere; optimiser les types de données;
poser questions sur index,check (tableau)+ faire le point chose a faire*/