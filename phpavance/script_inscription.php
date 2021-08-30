<?php 

include ("connexion_bdd.php");
var_dump($_POST);
  if (isset($_POST['valider'])){
$uti_ident = $_POST['uti_ident'];
$uti_mdp = MD5($_POST['uti_mdp']);
$uti_nom = $_POST['uti_nom'];
$uti_prenom = $_POST['uti_prenom'];
$uti_mail = $_POST['uti_mail'];
var_dump($_POST);
$db=connexionBase ();
$rq="INSERT INTO utilisateur (uti_ident,uti_mdp,uti_nom,uti_prenom,uti_mail) VALUES (:uti_ident,:uti_mdp,:uti_nom,:uti_prenom,:uti_mail)";
$requete = $db->prepare($rq);

// Association des valeurs aux paramètres
$requete->bindValue(':uti_ident', $uti_ident, PDO::PARAM_STR);
$requete->bindValue(':uti_mdp', $uti_mdp, PDO::PARAM_STR);
$requete->bindValue(':uti_nom', $uti_nom, PDO::PARAM_STR);
$requete->bindValue(':uti_prenom', $uti_prenom, PDO::PARAM_STR);
$requete->bindValue(':uti_mail', $uti_mail, PDO::PARAM_STR);
// Exécution de la requête
$inscription=$requete->execute();
var_dump($requete->errorInfo());
var_dump($inscription);

// Libération de la connexion au serveur de BDD
//$requete->closeCursor();

// Redirection vers la page index.php
header("Location: form_ident.php");
exit;


 };
 

?>



