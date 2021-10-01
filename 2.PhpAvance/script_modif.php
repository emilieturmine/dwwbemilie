<?php
session_start();
include "connexion_bdd.php";
var_dump($_POST);
if (isset($_POST['valider'])){
$pro_id = $_POST['pro_id'] ;
$pro_ref = $_POST['pro_ref'];
$pro_cat_id = $_POST['pro_cat_id'];
$pro_libelle = $_POST['pro_libelle'];
$pro_description = $_POST['pro_description'];
$pro_prix = $_POST['pro_prix'];
$pro_stock = $_POST['pro_stock'];
$pro_couleur = $_POST['pro_couleur'];
$pro_bloque = $_POST['pro_bloque'];
$pro_d_modif = $_POST['pro_d_modif'];
var_dump($_POST);
$db=connexionBase ();

$rq = "UPDATE produits SET pro_ref=:pro_ref, pro_cat_id=:pro_cat_id,pro_libelle=:pro_libelle,pro_description=:pro_description,pro_prix=:pro_prix,pro_stock=:pro_stock,pro_couleur=:pro_couleur,pro_bloque=:pro_bloque,pro_d_modif=:pro_d_modif WHERE pro_id=:pro_id";
$requete = $db->prepare($rq);


$requete->bindValue(':pro_id', $pro_id, PDO::PARAM_STR);
$requete->bindValue(':pro_ref', $pro_ref, PDO::PARAM_STR);
$requete->bindValue(':pro_cat_id', $pro_cat_id, PDO::PARAM_INT);
$requete->bindValue(':pro_libelle', $pro_libelle, PDO::PARAM_STR);
$requete->bindValue(':pro_description', $pro_description, PDO::PARAM_STR);
$requete->bindValue(':pro_prix', $pro_prix, PDO::PARAM_INT);
$requete->bindValue(':pro_stock', $pro_stock, PDO::PARAM_INT);
$requete->bindValue(':pro_couleur', $pro_couleur, PDO::PARAM_STR);
$requete->bindValue(':pro_bloque', $pro_bloque, PDO::PARAM_INT);
$requete->bindValue(':pro_d_modif', $pro_d_modif, PDO::PARAM_STR);
// Exécution de la requête
$modif=$requete->execute();
var_dump($requete->errorInfo());
var_dump($modif);
// Libération de la connexion au serveur de BDD
$requete->closeCursor();

// Redirection vers la page index.php 
//header("Location: listeA.php");
exit;
};
?>