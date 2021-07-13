/*Pour inserer des valeurs dans les tables on utilise :INSERT INTO NOM_DE_TABLE (NOMS DE COLONNES)
VALUES (LISTE DE VALEURS)*/

INSERT INTO categories (cat_id, cat_name, cat_parent_id)
VALUES (2, 'Outillage manuel', NULL), (3, 'Outillage mécanique', NULL), (4, 'Plants et semis', NULL),(5, 'Arbres et arbustes', NULL), (6, 'Pots et accessoires', NULL), (7, 'Mobilier de jardin', NULL),
(8, 'Matériaux', NULL), (9, 'Tondeuses électriques', 3), (10, 'Tondeuses à moteur thermique', 3), (11, 'Débroussailleuses', 3);

INSERT INTO posts (pos_id, pos_libelle)
VALUES (1, 'President'),
(2, 'Manager'),
(3, 'Commercial'),
(4, 'Responsable_ventes'),
(5, 'Mecanicien'),
(6, 'Assistant_commercial'),
(7, 'Acheteur'),
(8, 'Assistant_RH'),
(9, 'Directeur_financier'),
(10, 'Directeur_RH');



INSERT INTO employees (emp_id, emp_superior_id, emp_pos_id, empl_lastname, emp_firstname, emp_adress, emp_zipcode, emp_city, emp_mail, emp_phone, emp_salary, emp_enter_date, emp_gender, emp_children)
VALUES 
(1, 17, 5, 'MOLETTE', 'Denis', '27 avenue Paul Lepoulpe', '80000', 'Amiens', 'dmolette@blabla.fr', '0102030405', '18473.00', '2020-05-05', 'M', 8),
(2, 3, 2, 'NAGER', 'Emma', '14 rue Tabaga', '80300', 'Albert', 'emmanager@laposte.net', '0102030405', '39576.00', '2015-03-27', 'F', 0),
(3, NULL, 1, 'LEBOSSE', 'Hugo', '28 mail Ludovic Cruchot', '75001', 'Paris', 'leboss@jarditou.com', '0102030405', '350000.78', '2000-01-01', 'M', 2),
(4, 17, 6, 'LAPAGE', 'Edith', '22 rue Stevy Boulay', '60300', 'Senlis', 'lapage60300@yahoo.fr', '0102030405', '18473.00', '2012-12-01', 'F', 1),
(5, 3, 35, 'DRESSAMERE', 'Yvan', '224 avenue Caumartin', '75009', 'Paris', 'yvan75009@outlook.com', '0102030405', '39576.00', '2007-11-04', 'M', 0),
(6, 5, 3, 'MERCE', 'Coco', '56 cours Loana', '02000', 'Laon', 'merce@wazaa.net', '0102030405', '30000.00', '2010-07-31', 'F', 2),
(7, 2, 3, 'AMAR', 'Yann', '4 rue du papillon de lumière', '62000', 'Arras', 'amar@azerty.com', '0102030405', '30000.00', '2008-05-28', 'M', 3),
(8, 14, 13, 'ASAP', 'Liliane', 'Appartement 202-3846 Suspendisse Chemin', 'FA46 ', 'Pekanbaru', 'convallis@Integer.com', '0102030405', '18473.00', '2007-03-20', 'F', 5),
(9, 17, 34, 'LAVISSE', 'Edouard', '131-3667 Arcu. Rd.', '80136', 'Rivery', 'nulla.magna@Proinvel.co.uk', '0102030405', '24000.00', '2016-12-17', 'M', 2),
(10, 17, 14, 'HILLARY', 'Dorian', '6824 Placerat. Route', '12787', 'Parramatta', 'mus@Morbi.co.uk', '0102030405', '20450.00', '2002-03-10', 'M', 2,
(11, 26, 27, 'POUTIN', 'Vladimir', '251-633 Convallis Impasse', '8373 ', 'Colchester', 'facilisis.vitae.orci@indolor.net', '0102030405', '29500.00', '2015-05-03', 'M', 4, 1, 10);

INSERT INTO orders (ord_id, ord_order_date, ord_payment_date, ord_ship_date, ord_reception_date, ord_status, ord_cus_id)
VALUES
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



INSERT INTO suppliers (sup_id, sup_name, sup_city, sup_countries_id, sup_address, sup_zipcode, sup_contact, sup_phone, sup_mail )
VALUES
 (1, 'Plantage', 'Paris', 'FR', '1 avenue Cyril Hanouna', '75017', 'Nicolas Dujardin', '0102030405', 'contact@plantage.fr'),
(2, 'Jardi+', 'Amiens', 'FR', '200 boulevard Eve Angeli', '80090', 'Mike Anic', '0708091011', 'jardiplus@gmail.com'),
(3, 'Attila', 'Marseille', 'FR', '31 rue Nabilla Benattia', '13000', 'Elle Ephant', '0213141516', 'attila.tondeuses@laposte.net'),
(4, 'Barbeuc', 'Narbonne', 'FR', '56 avenue Donald Trump', '11000', 'Gérard Menfaim', '0512345678', 'sales@barbeuc.com'),
(5, 'FOURNIRIEN', 'Shangaï', 'CN', '112 rue de Pékin', '340', 'Chang Li', '0102030405', 'chang.li@fournirien.cn');


INSERT INTO customers (cus_id, cus_lastname, cus_firstname, cus_zipcode, cus_address, cus_city, cus_countries_id, cus_mail, cus_phone, cus_password, cus_add_date, cus_update_date)
VALUES 
(1, 'Riviere', 'Romain','80000','1ruepetaouchnock', 'Amiens', 'FR', 'risus.morbi@laposte.net',0680450312,'201583083','2017-01-02 23:47:20', '2020-05-06 00:01:53'),
(2, 'Bailly', 'Lilou', '80300','2ruedelajoie', 'Birmingham', 'GB', 'sagittis.placerat@Aliquam.co.uk',0780450312, '700966695','2002-12-14 06:52:52', '2020-05-18 00:00:00'),
(3, 'Muller', 'Alexandre','80100', '3ruedelerreurintrouvable', 'Abbeville', 'FR', 'mauris.Morbi@Lorem.co.uk', 0684563214, '167413271','2015-08-19 01:35:44', NULL),
(4, 'Lefebvre', 'Élisa','62000','4chemindelapretention', 'Arras', 'FR', 'laplusbelledu62g@gmail.com',0689456523, '710601863', '2016-01-11 02:58:51', NULL),
(5, 'Andre', 'Maëlle','59133', NULL,'Vieux-Genappe', 'FR', 'aliquam.adipiscing@fringilla.net',0680450112, '296292567','2018-03-24 17:09:33', NULL),
(6, 'Lemaire', 'Enzo','31779', NULL,'Sevastopol', 'FR', 'interdum.feugiat@a.edu', 0780456132, '395027964','2017-08-16 15:18:39', NULL),
(7, 'Perez', 'Bienvenue','49960',NULL, 'Maastricht', 'FR', 'tempus.mauris@nonloremvitae.net', 0756459521, '735753221', '2006-02-19 12:25:51', NULL),
(8, 'Dumont', 'Emma','13011',NULL, 'Paternopoli', 'FR', 'tristique.ac@Sedmalesuadaaugue.com', 0745894561, '373682901', '2003-07-17 08:28:22', NULL),
(9, 'Riviere', 'Alice', '64066', NULL, 'Campbelltown', 'FR', 'fringilla.ornare.placerat@odioEtiam.edu',0320154678, '962347562','2018-06-26 23:05:17', NULL),
(10, 'Boucher', 'Noë', '75197', NULL, 'Fermont', 'CA', 'facilisi.Sed.neque@eteuismodet.ca', 0345648795, '527427380','2012-01-24 12:00:27', NULL);