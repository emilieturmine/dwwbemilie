<?php

//Déclaration des variables pour les inputs
$Nom = filter_input(INPUT_POST,"Nom"); 
$Prenom = filter_input(INPUT_POST,"Prenom"); 
$Sexe = filter_input(INPUT_POST,"Sexe"); 
$DateNaissance = filter_input(INPUT_POST,"DateNaissance"); 
$CP = filter_input(INPUT_POST,"CP"); 
$Ville = filter_input(INPUT_POST,"Ville"); 
$Email = filter_input(INPUT_POST,"Email"); 
$Sujet = filter_input(INPUT_POST,"Sujet"); 
$Question = filter_input(INPUT_POST,"Question"); 
$Accord = filter_input(INPUT_POST,"Accord");



//Déclaration du compteur d'erreur.
$Nb_erreur = 0;


//Vérification des input.
if(empty($Nom)) {
    $Nom_erreur = "Veuillez entrer votre nom."; 
    $Nb_erreur++;
} 

if(empty($Prenom)) {
    $Prenom_erreur = "Veuillez entrer votre prénom.";
    $Nb_erreur++; 
}

if(empty($Sexe)){
    $Sexe_erreur = "Veuillez selectionner votre sexe.";
    $Nb_erreur++;
}

if(empty($DateNaissance)) {
    $DateNaissance_erreur = "Veuillez entrer votre date de naissance.";
    $Nb_erreur++; 
}
if(preg_match("/^[0-9]{2}+[-]{1}+[0-9]{2}+[-]+[0-9]{4}$/", $DateNaissance) < 1) {
    $DateNaissance_erreur = "Veuillez entrer une date de naissance valide.";
    $Nb_erreur++; 
}

if (strlen($CP) != 5) {
    $CP_erreur = "Code Postal invalide : Veuillez saisir 5 chiffres.";
    $Nb_erreur++;
}

if(empty($Ville)){
    $ville_erreur ="Ville invalide";
    $Nb_erreur++;
}

if(preg_match("/^[\w\-\.]+@([\w\-]+\.)+[\w]{2,4}$/", $Email) < 1) {
    $Email_erreur = "Veuillez entrer une Adresse Email valide.";
    $Nb_erreur++; 
}

if ($Sujet === "Veuillez sélectionner un sujet") {
    $Sujet_erreur = "Veuillez selectionner un sujet.";
    $Nb_erreur++;
}

if (strlen($Question) < 5) {
    $Question_erreur = "Valeur invalide : Question trop courte.";
    $Nb_erreur++;
}

if (!isset($_POST["Accord"])) {
    $Accord_erreur = "Condition obligatoire pour l'envoi des données.";
    $Nb_erreur++;
}

if ($Nb_erreur === 0) {
    include 'validation.php';
} else include 'contact.php';
?>