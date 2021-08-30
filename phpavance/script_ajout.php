<?php
session_start();
include ("connexion_bdd.php");
var_dump($_POST);
 if (isset($_POST['valider'])){
$pro_ref = $_POST['pro_ref'];
$pro_cat_id = $_POST['pro_cat_id'];
$pro_libelle = $_POST['pro_libelle'];
$pro_description = $_POST['pro_description'];
$pro_prix = $_POST['pro_prix'];
$pro_stock = $_POST['pro_stock'];
$pro_couleur = $_POST['pro_couleur'];
$pro_photo ="jpg";
$pro_bloque = $_POST['pro_bloque'];
//$pro_d_ajout = new DateTime();
//$pro_d_ajout = $pro_d_ajout->format("Y-m-d"); 
//$pro_d_modif = new DateTime();
//$pro_d_modif = $pro_d_modif->format("Y-m-d"); ;

$db=connexionBase ();
$rq="INSERT INTO produits (pro_ref,pro_cat_id,pro_libelle,pro_description,pro_prix,pro_stock,pro_couleur,pro_photo,pro_bloque) VALUES (:pro_ref,:pro_cat_id,:pro_libelle,:pro_description,:pro_prix,:pro_stock,:pro_couleur,:pro_photo,:pro_bloque)";
var_dump($rq);

$requete2 = $db->prepare($rq);


// Association des valeurs aux paramètres
$requete2->bindValue(':pro_ref', $pro_ref, PDO::PARAM_STR);
$requete2->bindValue(':pro_cat_id', $pro_cat_id, PDO::PARAM_STR);
$requete2->bindValue(':pro_libelle', $pro_libelle, PDO::PARAM_STR);
$requete2->bindValue(':pro_description', $pro_description, PDO::PARAM_STR);
$requete2->bindValue(':pro_prix', $pro_prix, PDO::PARAM_STR);
$requete2->bindValue(':pro_stock', $pro_stock, PDO::PARAM_STR);
$requete2->bindValue(':pro_couleur', $pro_couleur, PDO::PARAM_STR);
$requete2->bindValue(':pro_photo', $pro_photo, PDO::PARAM_STR);
$requete2->bindValue(':pro_bloque', $pro_bloque, PDO::PARAM_STR);
//$requete->bindValue(':pro_d_ajout', $pro_d_ajout, PDO::PARAM_STR);
//$requete->bindValue(':pro_d_modif', $pro_d_modif, PDO::PARAM_STR);

$ajout=$requete2->execute();
var_dump($requete2->errorInfo());
var_dump($ajout);
// Libération de la connexion au serveur de BDD
//$requete->closeCursor();




// Redirection vers la page index.php
//header("Location: liste.php");
//exit;


 };
 

?>










