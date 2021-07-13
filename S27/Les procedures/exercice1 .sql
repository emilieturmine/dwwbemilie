/*
Création d'une procédure stockée sans parametre.
obj:afficher le nom des frs pou lesquels une commande a été passée.
	
CREATE PROCEDURE nomProcedure()

	
     +++ INSTRUCTIONS SQL +++ 
	
;
CALL lst_suppliers();
*/


CREATE PROCEDURE lst_suppliers()
BEGIN
select sup_name from suppliers
join products on pro_sup_id= sup_id
join orders_details on ode_pro_id= pro_id
where ode_id >= 1
