<?php 
session_start();
include ("head.php");  ?>
<?php require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
$db = connexionBase(); // Appel de la fonction de connexion
$requete = "SELECT *, pro_cat_id FROM produits join categories on pro_cat_id = cat_id ";
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


<h1 class= "text-center" >Formulaire d'ajout</h1>
  <form action="script_ajout.php" method="POST" id="ajout_produit" enctype="multipart/form-data">
    
    <label for="pro_ref">référence </label>
      <br>
        <input  class="form-control" type="text" name= "pro_ref" >
      <br>
    <label for="pro_cat_id">Catégorie </label>
      <br>
        <input  class="form-control" type="text" name= "pro_cat_id">
      <br> 
    <label for="pro_libelle">libelle </label>
      <br>
        <input  class="form-control" type="text" name= "pro_libelle" >
      <br>
    <label for="pro_description">Description </label>
      <br>
        <textarea class="form-control" name="pro_description"> </textarea>
      <br>
    <label for="pro_prix">Prix </label>
      <br>
        <input  class="form-control" type="text" name= "pro_prix" >
      <br>
    <label for="pro_stock">Stock </label>
      <br>
        <input  class="form-control" type="text" name= "pro_stock">
      <br>
    <label for="pro_couleur">Couleur </label>
      <br>
        <input  class="form-control" type="text" name= "pro_couleur" >
        <br>
        <?php
        //<label for="pro_photo">Photo </label>
      //<br>
       // <input  class="form-control" type="file" name= "pro_photo" >?>
      <br>
    <label for="pro_bloque">Produit Bloqué 
        <input type="radio" name="pro_bloque" value="1" > OUI 
        <input type="radio" name="pro_bloque" value="0" > NON
      <br>
      <br>
           <button type="submit" class="btn btn-dark" value="Envoyer"  name="valider" id="valider">ajouter </button>
  </form>
  </body>

<?php include ("pieddepage.php"); ?> 

