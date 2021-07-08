/*Vues

Créez une vue qui affiche le catalogue produits. L'id, la référence et le nom des produits,
ainsi que l'id et le nom de la catégorie doivent apparaître.
Pour créer une vue ,on utilise :
CREATE VIEW v_nom_de_la_vue
AS
SELECT * FROM nom_table
WHERE... (quand c'est neccessaire)*/

CREATE VIEW v_catalogue_produit
AS
SELECT pro_id As Id_produits,pro_ref AS reference_ produit,pro_name AS nom_produit,cat_id 
AS ID_categorie,cat_name AS nom_categorie FROM products
JOIN categories ON pro_cat_id=cat_id
;

/*Procédures stockées

Créez la procédure stockée facture qui permet d'afficher les informations nécessaires à une facture 
en fonction d'un numéro de commande. Cette procédure doit sortir le montant total de la commande.
Pour créer une procedure on utilise :
CREATE PROCEDURE nomProcedure()

	
     +++ INSTRUCTIONS SQL +++ 
	
;
et pour la lancer on utilise 
CALL nom procedure();*/

CREATE PROCEDURE p_facture(IN p_num_commande INT,OUT p_total_produits decimal(6,2))
BEGIN
SELECT SUM((ode_quantity * ode_unit_price) * (100-ode_discount)/100) AS p_total_produits ,
ord_id AS p_num_commande,
ord_order_date AS date_commande,
cus_id AS ref_client,
CONCAT(cus_lastname,'',cus_firstname)AS nom_client,
CONCAT(cus_address,'',cus_zipcode,'',cus_city,'',cou_name)AS adresse_client, 
cus_mail AS contact_client, 
pro_ref AS ref_produit,
pro_name AS nom_produits, 
pro_price AS prix_produits,
ode_quantity As qute_commande,
ode_discount AS remise 
FROM orders 
JOIN customers ON cus_id = ord_cus_id
JOIN countries ON cou_id= cus_countries_id 
JOIN orders_details ON ode_ord_id =ord_id 
JOIN products ON pro_id=ode_pro_id 
WHERE p_num_commande=ord_id 
group by ord_id,cus_id,pro_ref,ode_id ;


SELECT SUM((ode_quantity * ode_unit_price) * (100-ode_discount)/100) AS total_commande FROM orders
jOIN orders_details ON ode_ord_id =ord_id 
WHERE p_num_commande=ord_id;
END;
;
CALL p_facture(p_num_commande);
/*Présentez le déclencheur after_products_update demandé dans la phase 2 de la séance sur les déclencheurs.*/

CREATE TRIGGER `after_products_update` AFTER UPDATE ON `products`
 FOR EACH ROW BEGIN
IF NEW.pro_stock < NEW.pro_stock_alert
THEN
INSERT INTO commander_articles(codart,qte,datedujour) VALUES (New.pro_id,1,Now());
END IF;
END

--cas1--
  update products
 set pro_stock = 6

 where pro_id = 8 and pro_name = 'Athos'
-- cas 2 --
  update products
 set pro_stock = 4

 where pro_id = 8 and pro_name = 'Athos'

 --cas 3 -- 
   update products
 set pro_stock = 3

 where pro_id = 8 and pro_name = 'Athos'


/*Transactions

Amity HANAH, Manageuse au sein du magasin d'Arras, vient de prendre sa retraite. 
Il a été décidé, après de nombreuses tractations, de confier son poste au pépiniériste 
le plus ancien en poste dans ce magasin. 
Ce dernier voit alors son salaire augmenter de 5% et ses anciens collègues pépiniéristes passent sous sa direction.

Ecrire la transaction permettant d'acter tous ces changements en base des données.

    La base de données ne contient actuellement que des employés en postes. 
    Il a été choisi de garder en base une liste des anciens collaborateurs de l'entreprise parti en retraite. 
    Il va donc vous falloir ajouter une ligne dans la table posts pour référencer les employés à la retraite.

    /*Décrire les opérations qui seront à réaliser sur la table posts.*/

    Ecrire les requêtes correspondant à ces opéarations.

    Ecrire la transaction
 */
  /*Décrire les opérations qui seront à réaliser sur la table posts.*/
1.inserer une nouvelle donnée dans posts pour retraité
INSERT INTO posts (pos_id,pos_libelle)VALUES(36,retraité(e)s)
2.chercher le emp_id de Amity Hannah
SELECT emp_id FROM employees WHERE emp_lastname= 'HANNAH' and emp_firstname= 'Amity';
3.modifier le emp_pos_id de hannah Amity
UPDATE employees SET emp_pos_id = 36 WHERE emp_id=59 AND emp_lastname= 'HANNAH';
4.identifier le pepinieriste le plus ancien du magasin
SELECT MIN(emp_enter_date),emp_id,emp_firstname,emp_lastname
FROM employees
Join posts ON pos_id= emp_pos_id 
JOIN shops ON sho_id=emp_sho_id 
WHERE pos_libelle = 'pépiniériste' AND sho_id=2 group by emp_id 
LIMIT 1 ;
5.Modifier le emp_pos_id du pepinieriste
UPDATE employees SET emp_pos_id = 2 WHERE emp_id=10; 
6. Modifier le salaire du nouveau manager
UPDATE employees SET emp_salary= emp_salary+(emp_salary*(5/100)) WHERE emp_id=10;