/*Exercice 3 : création d'une procédure stockée avec plusieurs paramètres

Créer la procédure stockée CA_Supplier, qui pour un code fournisseur et une année entrée en paramètre, calcule et restitue le CA potentiel 
de ce fournisseur pour l'année souhaitée.

On exécutera la requête que si le code fournisseur est valide, c'est-à-dire dans la table suppliers.

Testez cette procédure avec différentes valeurs des paramètres. */


CREATE PROCEDURE CA_Supplier( IN p_sup_id INT, IN p_ord_payment_date INT,OUT p_Ca_potentiel INT )
SELECT SUM(ode_unit_price)INTO p_Ca_potentiel
FROM orders_details
join products on ode_pro_id =pro_id
JOIN suppliers ON pro_sup_id=sup_id
JOIN orders ON ode_ord_id =ord_id
where p_sup_id=sup_id AND p_ord_payment_date=year(ord_payment_date);


DELIMITER |

DROP PROCEDURE IF EXISTS verifFrs |
CREATE PROCEDURE verifFrs(IN p_sup_zipcode varchar(5))
BEGIN
SET @p_existe = (SELECT p_sup_zipcode FROM suppliers WHERE p_sup_zipcode=sup_zipcode);

IF (ISNULL(@p_existe))
THEN
CALL CA_Supplier(@p0,@p1,@Ca_potentiel);
ELSE
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Le fournisseur n'est pas enregistré ds la base de donnée";
end IF ;
END |
delimiter ;