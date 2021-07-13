DROP DATABASE IF EXISTS OTO;
CREATE DATABASE OTO;
USE OTO;
CREATE TABLE concession(
    id_concession Varchar(10) ,
    con_adresse varchar (50) NOT NULL ,
    con_cp int NOT NULL ,
    con_ville varchar(20) NOT NULL ,
    con_nb_employes int NOT NULL ,
    con_type_service varchar(20) CHECK(con_type_service in ('vente','entretien','magasin')),
    con_siret int NOT NULL ,
    con_nb_vehicule int NOT NULL ,
    id_vehicule int ,
    CONSTRAINT concession_PK PRIMARY KEY (id_concession)
);
CREATE TABLE employes(
    id_emp int  ,
    emp_nom varchar(20) NOT NULL ,
    emp_prenom varchar(20) NOT NULL ,
    emp_metier varchar(20) NOT NULL ,
    id_concession Varchar(10) ,

    CONSTRAINT employes_PK PRIMARY KEY (id_emp)
);
CREATE TABLE parc_automobile(
    id_vehicule int ,
    par_marque varchar(20) NOT NULL ,
    par_type_vehicule varchar(10) CHECK(type_vehicule in('neuf','occasion')) ,
    par_kilometrage int NOT NULL ,
    par_option_auto varchar(30) NOT NULL ,
    id_concession varchar(10) ,
    par_immatriculation_prov int NOT NULL ,
    par_carte_entretien varchar(50) NOT NULL ,
    CONSTRAINT parc_automobile_PK PRIMARY KEY (id_vehicule)
);
CREATE TABLE pieces_auto(
    id_pieces_auto int ,
    pie_nom varchar(30) ,
    pie_prix_ht int ,
    pie_date_commande date ,
    pie_date_reception date ,
    pie_date_rdv_pose date ,
    pie_montant_facture_ttc int ,
    pie_montant_devis int ,
    CONSTRAINT pieces_auto_PK PRIMARY KEY (id_pieces_auto)
);
CREATE TABLE heures_travailles(
    id_heure_travailles int ,
    heu_majoration_weekend int ,
    heu_remise int ,
    heu_tarif_horaire int ,
    heu_montant_devis_heure int ,
    id_emp int ,
    CONSTRAINT heures_travailles_PK PRIMARY KEY (id_heure_travailles)
);
CREATE TABLE services(
    ser_libelle varchar(20) CHECK(ser_libelle in ('vente','entretien','magasin')) ,
    ser_description varchar(50) NOT NULL ,
    ser_prix int NOT NULL ,
    id_services int ,
    CONSTRAINT services_PK PRIMARY KEY (ser_libelle)
);
CREATE TABLE vente(
    id_services int ,
    id_emp int ,
    id_vehicule int ,
    id_client int ,
    ven_option_auto varchar(30) ,
    id_facture int ,
    ven_montant_facture_ht int ,
    ven_montant_facture_ttc int ,
    CONSTRAINT vente_PK PRIMARY KEY (id_services)
);
CREATE TABLE entretien(
    id_services int ,
    id_emp int ,
    id_vehicule_client int ,
    ent_ser_libelle varchar(20) ,
    ent_montant_devis_piece int ,  
    ent_montant_devis_heure int ,
    id_facture int ,
    ent_montant_facture_ht int ,
    ent_montant_facture_ttc int ,
    CONSTRAINT entretien_PK PRIMARY KEY (id_services) 
  );
CREATE TABLE magasin(
    id_services int ,
    mag_serv_libelle varchar(20) ,
    mag_montant_devis_piece int ,
    mag_date_commande date ,
    mag_date_reception date ,
    id_facture int ,
    mag_montant_facture_ht int ,
    mag_montant_facture_ttc int ,
    CONSTRAINT magasin_PK PRIMARY KEY (id_services) 
   );
CREATE TABLE client(
    id_client int ,
    cli_nom varchar(10) NOT NULL ,
    cli_prenom varchar(20) NOT NULL ,
    cli_categorie varchar(20) CHECK(cli_categorie in('particulier','professionnels')) ,
    id_facture int ,
    id_services int ,
    cli_montant_facture_ttc int ,
    cli_date_commande date NOT NULL ,
    cli_historique text ,
    cli_imm_vehicule int ,
    CONSTRAINT client_PK PRIMARY KEY (id_client) 
);
CREATE TABLE facture(
    id_facture int ,
    id_concession varchar(10) ,
    id_emp int ,
    ser_libelle varchar(20) ,
    fac_montant_ht int NOT NULL,
    fac_montant_ttc int ,
    id_client int ,
    CONSTRAINT facture_PK PRIMARY KEY (id_facture)
);

ALTER TABLE concession
ADD CONSTRAINT fk_concession_parc_automobile FOREIGN KEY (id_vehicule) REFERENCES parc_automobile(id_vehicule);

ALTER TABLE employes
ADD CONSTRAINT fk_employes_concession FOREIGN KEY (id_concession) REFERENCES concession(id_concession);

ALTER TABLE parc_automobile
ADD CONSTRAINT fk_parc_automobile_concession FOREIGN KEY (id_concession) REFERENCES concession(id_concession);

ALTER TABLE heures_travailles
ADD CONSTRAINT fk_vente_employes FOREIGN KEY (id_emp) REFERENCES employes(id_emp);

ALTER TABLE services
ADD CONSTRAINT fk_services_vente FOREIGN KEY (id_services) REFERENCES vente(id_services);

ALTER TABLE services
ADD CONSTRAINT fk_services_entretien FOREIGN KEY (id_services) REFERENCES entretien(id_services);

ALTER TABLE services
ADD CONSTRAINT fk_services_magasin FOREIGN KEY (id_services) REFERENCES magasin(id_services);

ALTER TABLE vente
ADD CONSTRAINT fk_vente_employes FOREIGN KEY (id_emp) REFERENCES employes(id_emp);

ALTER TABLE vente
ADD CONSTRAINT fk_vente_parc_automobile FOREIGN KEY (id_vehicule) REFERENCES parc_automobile(id_vehicule);

ALTER TABLE vente
ADD CONSTRAINT fk_vente_client FOREIGN KEY (id_client) REFERENCES client(id_client);

ALTER TABLE vente
ADD CONSTRAINT fk_vente_facture FOREIGN KEY (id_facture) REFERENCES facture(id_facture);

ALTER TABLE entretien
ADD CONSTRAINT fk_entretien_employes FOREIGN KEY (id_emp) REFERENCES employes(id_emp);

ALTER TABLE client
ADD CONSTRAINT fk_entretien_facture FOREIGN KEY (id_facture) REFERENCES facture(id_facture);

ALTER TABLE magasin
ADD CONSTRAINT fk_magasin_facture FOREIGN KEY (id_facture) REFERENCES magasin(id_facture);

ALTER TABLE client
ADD CONSTRAINT fk_client_facture  FOREIGN KEY (id_facture) REFERENCES facture(id_facture);

ALTER TABLE client
ADD CONSTRAINT fk_client_services FOREIGN KEY (id_services) REFERENCES services(id_services);

ALTER TABLE facture
ADD CONSTRAINT fk_facture_concession FOREIGN KEY (id_concession) REFERENCES concession(id_concession);

ALTER TABLE facture
ADD CONSTRAINT fk_facture_employes FOREIGN KEY (id_emp) REFERENCES employes(id_emp);  

ALTER TABLE facture
ADD CONSTRAINT fk_facture_client FOREIGN KEY (id_client) REFERENCES client(id_client);

ALTER TABLE facture
ADD CONSTRAINT fk_facture_services FOREIGN KEY (ser_libelle) REFERENCES services(ser_libelle);
