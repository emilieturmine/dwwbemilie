<?php 
session_start();
include('./connexion_bdd.php');

$db = connexionBase(); // Appel de la fonction de connexion
var_dump($_POST);
if(isset($_POST['valider'])){
$uti_ident=$_POST['uti_ident'];
$uti_mdp=MD5($_POST["uti_mdp"]);
if(!empty($uti_ident) & !empty($uti_mdp)){

   if ($uti_ident=="jarditou" AND $uti_mdp="jARDiT0u"){
 
header("location: listeA.php");
exit;
}
$requser= $db->prepare("SELECT *FROM utilisateur WHERE uti_ident=$uti_ident & uti_mdp=$uti_mdp");
var_dump($requser);

$requser->execute($uti_ident,$uti_mdp);
$userexist=$requser->rowcount();
var_dump($requser->errorInfo());
var_dump($userexist);
if($userexist==1){
$userinfo=$requser->fetch();
var_dump($userexist);
header("location: listeA.php");
//var_dump($_SESSION['identifiant']);
//header("location: listeC.php");
exit;
}
else{
   $erreur='mauvais mail ou mdp';
}
}
else{
$err ="Tous les champs doivent etre remplis";
}
}



















//$requete = "SELECT uti_ident,uti_mdp FROM utilisateur WHERE uti_ident = ':uti_ident' AND uti_mdp = ':uti_mdp'; ";
//$result = $db->query($requete);
//$client = $result->fetch();
//if (!$result) {
  //$tableauErreurs = $db->errorInfo();
  //echo $tableauErreur[2]; 
 // die("Erreur dans la requête");
         //     }
 
 //$bdd_ident = $client["uti_ident"] ;
//$bdd_mdp = $client["uti_mdp"];

 //if(isset($valider)){
  // if($bdd_ident=="$uti_ident"&& $bdd_mdp=="$uti_mdp"){
    //  $_SESSION["client"]="oui";
     //  header("location:listeC.php");
  // }else{
     // echo"$err";
  // };
   // if("$uti_ident"=="Jarditou"&& $uti_mdp=="Monsters"){
     //  $_SESSION["Admin"]="oui";
       // header("location:listeA.php");
    //}else{
      // echo"$err";
    //};
//};
//var_dump($_POST);
?>