<?php 
session_start();
include ("head.php");  ?>
<?php require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
$db = connexionBase(); // Appel de la fonction de connexion
$pro_id = $_GET["pro_id"];
$requete = "SELECT *, cat_nom FROM produits join categories on pro_cat_id = cat_id WHERE pro_id=".$pro_id;
$result = $db->query($requete);
$produit = $result->fetch(PDO::FETCH_OBJ);
?>

<div class="container-fluid">
                <header>
                       <div class="row"> 
                <div id="logo" class="col-lg-8 d-none d-lg-block">
                    <img class="col-lg-8 d-none d-lg-block" src="jarditou_photos/jarditou_logo.jpg " alt="logo jarditou "
                        title="logo jarditou " style="width: 150px;height:50px ">
                                   </div>
                <div id="slogan " class="col-lg-4 d-none d-lg-block ">

                    <h2 class="d-flex justify-content-end">Tout le jardin</h2>

                </div>
           
        </header>
        <!--création d'une liste pour faciliter la navigation entre les pages ,faire pour qu'elle disparaisse si la largeur de la page est reduite-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03"
                aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">Jarditou.com</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item ">
                        <a class="nav-link" href="index.php">Accueil</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="form_ajout.php">Ajouter un produit</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="form_modif.php">Modifier un produit</a>
                    </li>
                </ul>            
            </div>
        </nav>
        <img src="jarditou_photos/promotion.jpg " class="w-100" alt="promotion en cours" title="promotion en cours">


  
<div class="d-block w-50 h-auto mx-auto p-2 m-2 rounded border border-danger">
            <h3 class="text-center">Êtes vous sûr de vouloir supprimer ce produit ?</h3>

            
            <div class="text_center">
            <?php
        echo"<h3>"."<a href='./script_supression.php?pro_id=$produit->pro_id'>supprimer"."</h3>" ;        
        echo"<h3>"."<a href='./details.php?pro_id=$produit->pro_id'>retour"."</h3>";?>      
                
            </div>     
            </div>

                