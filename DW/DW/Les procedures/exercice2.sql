/*Exercice 2 : création d'une procédure stockée avec un paramètre en entrée

Créer la procédure stockée Lst_Rush_Orders, qui liste les commandes ayant le libelle "commande urgente". */

CREATE PROCEDURE Lst_Rush_Orders(IN p_ord_status varchar(25))
Select * from orders
where ord_status = p_ord_status;

CALL Lst_Rush_orders('Commande urgente');
