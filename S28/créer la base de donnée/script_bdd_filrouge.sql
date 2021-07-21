
/*Création du script de la bb a partir du MCD*/
Drop database IF EXIST green_valley;
CREATE DATABASE green_valley;
USE  green_valley ; 

CREATE TABLE catalogue(
   cat_id INT,
   cat_maj DATETIME,
    CONSTRAINT catalogue_pk PRIMARY KEY(cat_id)
);

CREATE TABLE fournisseur(
   fou_id INT,
   fou_type VARCHAR(20) NOT NULL,
   fou_nom VARCHAR(50) NOT NULL,
   fou_siret INT NOT NULL,
   fou_adresse VARCHAR(50) NOT NULL,
   fou_ville VARCHAR(50) NOT NULL,
   fou_pays VARCHAR(50) NOT NULL,
   fou_email VARCHAR(50) NOT NULL,
   fou_contact_nom VARCHAR(50) NOT NULL,
   fou_contact_prenom VARCHAR(50) NOT NULL,
   fou_code_postal INT NOT NULL,
   CONSTRAINT fournisseur_pk PRIMARY KEY(fou_id)
);

CREATE TABLE categories(
   cate_id INT,
   cate_nom VARCHAR(50) NOT NULL,
   cate_description TEXT NOT NULL,
   cat_id INT NOT NULL,
    CONSTRAINT categories_pk PRIMARY KEY(cate_id),
   CONSTRAINT categories_un UNIQUE(cate_nom),
   CONSTRAINT categories_uni UNIQUE(cate_description),
 
);

CREATE TABLE entreprise(
   ent_id INT,
   ent_nom VARCHAR(50) NOT NULL,
   ent_siret INT NOT NULL,
   ent_rais_soc VARCHAR(50) NOT NULL,
   ent_adresse VARCHAR(50) NOT NULL,
   ent_code_postal INT NOT NULL,
   ent_ville VARCHAR(50) NOT NULL,
   ent_pays VARCHAR(50) NOT NULL,
   ent_nb_employes INT NOT NULL,
   ent_CA_annuel BIGINT NOT NULL,
    CONSTRAINT entreprise_pk PRIMARY KEY(ent_id),
   CONSTRAINT entreprise_un UNIQUE(ent_siret)
);

CREATE TABLE services(
   serv_id VARCHAR(50),
   serv_nom VARCHAR(50) NOT NULL,
   serv_description TEXT,
   serv_nb_employees INT NOT NULL,
   serv_droits_admin VARCHAR(10) NOT NULL,
   serv_adresse VARCHAR(50) NOT NULL,
   serv_code_postale INT NOT NULL,
   serv_ville VARCHAR(50) NOT NULL,
   serv_pays VARCHAR(50) NOT NULL,
   serv_email VARCHAR(50) NOT NULL,
   ent_id INT NOT NULL,
    CONSTRAINT services_pk PRIMARY KEY(serv_id),
   CONSTRAINT services_un UNIQUE(serv_email),
    
);

CREATE TABLE ss_categories(
   ssc_id INT,
   ssc_nom VARCHAR(50) NOT NULL,
   ssc_description VARCHAR(50) NOT NULL,
   cate_id INT NOT NULL,
   CONSTRAINT ss_categories PRIMARY KEY(ssc_id),
   CONSTRAINT ss_categories UNIQUE(ssc_nom),
 
);

CREATE TABLE employees(
   emp_id INT,
   emp_nom VARCHAR(50) NOT NULL,
   emp_prenom VARCHAR(50) NOT NULL,
   emp_age VARCHAR(50) NOT NULL,
   emp_email VARCHAR(50) NOT NULL,
   emp_num_secu INT NOT NULL,
   emp_rib VARCHAR(50) NOT NULL,
   emp_poste VARCHAR(50) NOT NULL,
   emp_poste_description VARCHAR(50) NOT NULL,
   emp_trajet_km VARCHAR(50) NOT NULL,
   emp_vehicule VARCHAR(1) NOT NULL,
   emp_handicap VARCHAR(1) NOT NULL,
   emp_amenagement_poste TEXT NOT NULL,
   emp_adresse VARCHAR(50) NOT NULL,
   emp_code_postal INT NOT NULL,
   emp_ville VARCHAR(50) NOT NULL,
   emp_pays VARCHAR(50) NOT NULL,
   emp_tel_pro INT,
   emp_tel_part INT,
   emp_contact_urgence_nom VARCHAR(50) NOT NULL,
   emp_contact_urgence_prenom VARCHAR(50) NOT NULL,
   emp_contact_urgence_tel_pro INT NOT NULL,
   emp_contact_urgence_tel_part INT NOT NULL,
   emp_syndicat VARCHAR(50),
   emp_debut_contrar DATE NOT NULL,
   emp_fin_contrat DATE,
   emp_type_contrat VARCHAR(50) NOT NULL,
   emp_photo BINARY(50),
   emp_docs BINARY(50) NOT NULL,
   emp_nb_enfants INT,
   emp_ancienneté INT NOT NULL,
   emp_salaire INT,
   emp_primes VARCHAR(50),
   emp_amen_poste_description VARCHAR(50),
   serv_id VARCHAR(50) NOT NULL,
   cat_id INT NOT NULL,
   CONSTRAINT employees_pk PRIMARY KEY(emp_id),
   CONSTRAINT UNIQUE(emp_email),
   CONSTRAINT UNIQUE(emp_num_secu),
   
);

CREATE TABLE clients(
   reference_client INT,
   cli_nom VARCHAR(50) NOT NULL,
   cli_prenom VARCHAR(50) NOT NULL,
   cli_adresse VARCHAR(50) NOT NULL,
   cli_cp INT NOT NULL,
   cli_ville VARCHAR(50) NOT NULL,
   cli_pays VARCHAR(50) NOT NULL,
   cli_email VARCHAR(50) NOT NULL,
   cli_coef_vente DECIMAL(2,2) NOT NULL,
   cli_facturation_adresse VARCHAR(50) NOT NULL,
   cli_facturation_cp INT NOT NULL,
   cli_facturation_ville VARCHAR(50) NOT NULL,
   cli_facturation_pays VARCHAR(50) NOT NULL,
   cli_assurance VARCHAR(1) NOT NULL,
   cli_facturation_historique TEXT,
   cli_tel_part INT NOT NULL,
   cli_disponibilités DATETIME,
   emp_id INT NOT NULL,
    CONSTRAINT clients_pk PRIMARY KEY(reference_client),
  
);

CREATE TABLE commande(
   com_id VARCHAR(50),
   com_reduction VARCHAR(50),
   com_livraison_adresse VARCHAR(50) NOT NULL,
   com_livraison_ville VARCHAR(50) NOT NULL,
   com_livraison_cp INT NOT NULL,
   com_livraison_pays VARCHAR(50),
   com_remise_ht DECIMAL(2,2),
   com_date_reglement DATE,
   com_date_livraison VARCHAR(50),
   com_type__reglement VARCHAR(50),
   com_livraison_bon INT,
   reference_client INT NOT NULL,
    CONSTRAINT commande_pk PRIMARY KEY(com_id),
  
);

CREATE TABLE reference_produits(
   pro_id INT,
   pro_name VARCHAR(50) NOT NULL,
   designation TEXT,
   pro_prix_achat_ht DECIMAL(5,2) NOT NULL,
   pro_poids INT,
   pro_largeur DECIMAL(4,2) NOT NULL,
   pro_longueur DECIMAL(4,2) NOT NULL,
   pro_nb_colis INT NOT NULL,
   pro_marque VARCHAR(50) NOT NULL,
   pro_sock INT NOT NULL,
   pro_stock_alert VARCHAR(50) NOT NULL,
   pro_photo BINARY(50) NOT NULL,
   com_id VARCHAR(50) NOT NULL,
   ssc_id INT NOT NULL,
   fou_id INT NOT NULL,
    CONSTRAINT reference_produits_pk PRIMARY KEY(pro_id),
   
);

CREATE TABLE contacter(
   fou_id INT,
   emp_id INT,
    CONSTRAINT contacter_pk PRIMARY KEY(fou_id, emp_id),
   
);

/* Entrée des clés etrangeres*/
 Alter table categories
 ADD CONSTRAINT fk_categories_catalogue FOREIGN KEY(cat_id) REFERENCES catalogue(cat_id);
 ALTER TABLE services 
 ADD CONSTRAINT fk_services_entreprise FOREIGN KEY(ent_id) REFERENCES entreprise(ent_id);
 ALTER TABLE ss_categories 
 ADD CONSTRAINT fk_ss_categories_categories FOREIGN KEY(cate_id) REFERENCES categories(cate_id);
 Alter table employees 
 ADD CONSTRAINT fk_employees_services FOREIGN KEY(serv_id) REFERENCES services(serv_id),
  ADD CONSTRAINT fk_employees_catalogue FOREIGN KEY(cat_id) REFERENCES catalogue(cat_id);
    ALTER TABLE  clients
    ADD CONSTRAINT fk_clients_employees FOREIGN KEY(emp_id) REFERENCES employees(emp_id);
     alter table commande 
     ADD CONSTRAINT fk_commande_clients FOREIGN KEY(reference_client) REFERENCES clients(reference_client);
     ALTER TABLE reference_produits
     ADD CONSTRAINT fk_reference_produits_commande FOREIGN KEY(com_id) REFERENCES commande(com_id),
   ADD CONSTRAINT fk_reference_produit_ss_categories FOREIGN KEY(ssc_id) REFERENCES ss_categories(ssc_id),
   ADD CONSTRAINT fk_reference_produits_fournisseur FOREIGN KEY(fou_id) REFERENCES fournisseur(fou_id);
   ALTER TABLE contacter 
   ADD CONSTRAINT fk_contacter_fournisseur FOREIGN KEY(fou_id) REFERENCES fournisseur(fou_id),
   ADD CONSTRAINT fk_contacter_employees FOREIGN KEY(emp_id) REFERENCES employees(emp_id);

/*creation utilisateur*/
   CREATE USER 'eturmine'@'localhost' IDENTIFIED BY 'travail';
   GRANT ALL PRIVILEGES ON green_valley.*
TO 'eturmine'@'localhost' IDENTIFIED BY 'travail';
/*creation et attribution privileges a des profils differencier*/


CREATE ROLE r_green_valley_visiteur;
GRANT select 
ON green_valley.catalogue 
TO 'r_green_valley_visiteur'@'localhost';

CREATE ROLE r_green_valley_client;
GRANT select 
ON green_valley.* 

TO 'r_green_valley_client'@'localhost';
GRANT insert,update 
ON green_valley.commande,clients
TO 'r_green_valley_client'@'localhost';

CREATE ROLE r_green_valley_gestion;
GRANT  SELECT,INSERT, UPDATE
ON green_valley.* 
TO 'r_green_valley_gestion'@'localhost';

CREATE ROLE r_green_valley_administrateur;
GRANT SELECT,INSERT,UPDATE,CREATE,DROP
ON green_valley.* 
TO 'r_green_valley_administrateur'@'localhost';