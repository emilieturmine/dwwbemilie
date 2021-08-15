
<?php
//declaration des variables avec super globale
$nom = $_POSTNom ;
$prenom = $_POSTPrénom;
$sexe = $_POSTSexe;
$datenaissance = $_POSTDateNaissance;
$cp = $_POSTCodePostal;
$adresse = $_POSTAdresse;
$ville = $_POSTVille;
$email = $_POSTEmail;
$sujet = $_POSTSujet;
$question = $_POSTQuestion;
$accord = $_POSTAccord;
$submit = $_POSTSubmit ;
$reset = $_POSTReset;
$erreur_count = 0;

//validation coté serveur 

if(empty($_POST["Nom"])){
    header("Location: formulaire.php?erreur= Nom");
        exit;
    echo " Le nom doit être renseigné.";
    $erreur_count++;

}else { 
    if(preg_match("/^[A-Z][A-Za-z\é\è\ê\-]+$/", $nom) < 1) {
        echo "Veuillez entrer un Nom valide.";
        $erreur_count++; 
    };


if(empty($_POST["Prénom"])){
    header("Location: formulaire.php?erreur=Prénom");
    exit;
    echo "Le prénom doit être renseigné.";
    $erreur_count++;

}else { 
    if(preg_match("/^[A-Z][A-Za-z\é\è\ê\-]+$/", $prenom) < 1) {
        echo "Veuillez entrer un Prénom valide.";
        $erreur_count++; 
    };
if(empty($_POST["Sexe"])){
    header("Location: formulaire.php?erreur=Sexe");
    exit;
    echo " Le sexe doit être renseigné.";
    $erreur_count++;

};
if(empty($_POST["DateNaissance"])){
    header("Location: formulaire.php?erreur= Cate de naissance"); 
    exit;
    echo "La date de naissance doit être renseignée.";
    $erreur_count++;

};
if(empty($_POST["CodePostal"])){
    header("Location: formulaire.php?erreur= Code Postal");
    exit;
    echo " Le code Postal doit être renseigné.";
    $erreur_count++;

};
if(empty($_POST["Adresse"])){
    echo " L'adresse n'est pas obligatoire mais est importante pour nous.";

};
if(empty($_POST["Ville"])){
    header("Location: formulaire.php?erreur=Ville");
    exit;
    echo " La ville doit être renseignée.";
    $erreur_count++;

};
if(empty($_POST["Email"])){
    header("Location: formulaire.php?erreur=Email");
    exit;
    echo " L'email doit être renseigné.";
    $erreur_count++;

}else{
    if(preg_match("/^[\w\-\.]+@([\w\-]+\.)+[\w]{2,4}$/", $email) < 1) {
        echo "Veuillez entrer une adresse email valide.";
        $erreur_count++; 
};

if(empty($_POST["Sujet"])){
    header("Location: formulaire.php?erreur=Sujet");
    exit;
    echo " Le Sujet doit être séléctionné.";
    $erreur_count++;

};
if(empty($_POST["Question"])){
    header("Location: formulaire.php?erreur=Question");
    exit;
    echo " La question doit être renseignée.";
    $erreur_count++;

} else { if (strlen($question) < 5) {
    echo " Question trop courte.";
    $erreur_count++;
}}
if(empty($_POST["Accord"])){
    header("Location: formulaire.php?erreur=Accord");
    exit;
    echo "L'accord doit être donné."; 
    $erreur_count++;

};
if ($error_count === 0) {
    include 'confirmation.php';
} ;
   

/*quel difference entre empty() et is_null()?;
 
  est_ce que l'accent de prenom ou la majuscule systematique pour les valeurs de l'attribut name= peuvent poser  problemes?;
  faut 'il supprimer les messages d'erreur sur les fonctions javascript?;
  
  est_ce que je dois choisir entre javascript et php?
   Ont 'ils chacun une fonction bien definis ds ce projet? et pour d'autres par la suite?
   considere t on tjs que l'adresse n'est pas obligatoire?
   position du exit; avant ou apres echo,erreur_count?
   pourquoi unexpextecd 'endoffile'
   verifier forme declaration variable car non conforme au cours */

   ?>