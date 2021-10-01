/*Exo 2: base gescom*/

/*1.creer une vue v_details*/

CREATE VIEW v_Details
AS
SELECT ode_pro_id AS RefProduit,ode_quantity AS QteTot,ode_unit_price*ode_quantity As PrixTot FROM orders_details
GROUP BY ode_pro_id;

SELECT * FROM v_Details;

/*2.creer une vue v_ventes_Zoom*/

CREATE VIEW v_ventes_Zoom 
AS SELECT * FROM orders_details,products 
WHERE pro_ref="ZOOM";

SELECT*FROM v_ventes_Zoom;

