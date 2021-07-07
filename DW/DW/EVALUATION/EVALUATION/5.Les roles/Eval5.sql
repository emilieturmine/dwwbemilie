Create ROLE 'r_gescom_afpa_marketing'@'localhost'
/*pour creer un role*/

/*GRANT permet d'attribuer des privileges,
SELECT = selectionner les données,
Insert= ajouter des données,
Update=modifier les tables, 
Delete=supprimer des données 
ON indique la table sur laquelle les privileges peuvent etre appliqués
TO pour attribuer ses privileges
*/
Grant SELECT, INSERT, UPDATE, DELETE 
ON gescom_afpa.products
TO 'r_gescom_marketing'@'localhost'

Grant SELECT, INSERT, UPDATE, DELETE 
on gescom_afpa.categories 
to 'r_gescom_marketing'@'localhost'

Grant SELECT 
on gescom_afpa.orders_details
to 'r_gescom_marketing'@'localhost'

Grant SELECT 
on  gescom_afpa.customers
to 'r_gescom_marketing'@'localhost'


 