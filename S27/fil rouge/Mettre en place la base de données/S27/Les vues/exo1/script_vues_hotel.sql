/*
Exercice 1 : base hotel
Pour créer une vue ,on utilise :
CREATE VIEW nom_de_la_vue
AS
SELECT * FROM nom_table
WHERE...*/

/*1.Afficher la liste des hôtels avec leur station.*/

CREATE VIEW v_hotels_station
AS
SELECT hot_nom,sta_nom FROM hotel,station;

SELECT * FROM v_hotels_station


/*2.Afficher la liste des chambres et leur hôtel( a retravailler pour requete propre)*/

CREATE VIEW v_chambres_hotel
AS
SELECT hot_nom,cha_numero FROM hotel,chambre
GROUP BY hot_id
ORDER BY cha_numero ASC;

SELECT * FROM v_chambres_hotel

/*3.Afficher la liste des réservations avec le nom des clients( alimenter la base de données pour pouvoir tester*/

CREATE VIEW v_reservation_client
AS
SELECT * FROM reservation,client
GROUP BY hot_id;

SELECT * FROM v_reservation_client

/*4.Afficher la liste des chambres avec le nom de l'hôtel et le nom de la station( a retravailler pour requete propre)*/

CREATE VIEW v_chambres_hotel_station
AS
SELECT sta_nom,hot_nom,cha_numero FROM station,hotel,chambre;

SELECT * FROM v_chambres_hotel_station

/*5.Afficher les réservations avec le nom du client et le nom de l'hôtel*/

CREATE VIEW v_reservation_client_hotel
AS
SELECT * FROM reservation,client,hotel
GROUP BY hot_id;

SELECT * FROM v_reservation_client_hotel