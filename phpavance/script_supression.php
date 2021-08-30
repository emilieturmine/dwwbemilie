<?php 
session_start();
 include "connexion_bdd.php"; 
 var_dump($_GET);

     $pro_id = $_GET['pro_id'] ;
  
    var_dump($_GET);
    $db=connexionBase ();
    $rq="DELETE FROM produits WHERE pro_id=:pro_id";
$requete = $db->prepare($rq);

$requete->bindValue(':pro_id', $pro_id, PDO::PARAM_STR);

$supprime=$requete->execute();
var_dump($requete->errorInfo());
var_dump($supprime);


// Libération de la connexion au serveur de BDD
$requete->closeCursor();

// Redirection vers index.php
//header("Location: liste.php");
//exit;

 
?>