
<!--exo 2-->
<!DOCTYPE html>
 <html lang="fr">
 <head>
     <meta charset="UTF-8">
     <title>Atelier PHP N°4 - page de détail</title>
     <?php   
     require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions

     $db = connexionBase(); // Appel de la fonction de connexion
     $pro_id = $_GET["pro_id"];
   $requete = "SELECT * FROM produits WHERE pro_id=".$pro_id;

    $result = $db->query($requete);

    // Renvoi de l'enregistrement sous forme d'un objet
    $produit = $result->fetch(PDO::FETCH_OBJ);
   ?>

   </head>
   <body>
   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">jarditou</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="liste.php">Accueil</a></li>
      <li><a href="utiisateur.php">Mon compte</a></li>
      <li><a href="formulaire/formulaire.php">Contact</a></li>
    </ul>
    <!--<button class="btn btn-danger navbar-btn">Boutton provisoire</button> -->
  </div>
</nav> 
<form action="liste.php" method="get" id="detail_produit">
  <label for="pro_ID">ID </label>
  <br>
   <input type="text" name= "pro_ID" value="<?php echo $produit->pro_ID; ?>">
   <br>
   <label for="pro_ref">référence </label>
   <br>
   <input type="text" name= "pro_ref" value="<?php echo $produit->pro_ref; ?>">
   <br>
   <label for="pro_categorie">Catégorie </label>
   <br>
   <input type="text" name= "pro_categorie" value="<?php echo $produit->pro_categorie; ?>">
   <br>
   <label for="pro_libelle">libelle </label>
   <br>
   <input type="text" name= "pro_libelle" value="<?php echo $produit->pro_libelle; ?> ">
   <br>
   <label for="pro_ref">référence </label>
   <br>
   <textarea name="pro_description" value="<?php echo $produit->pro_description; ?>">
   <br>
   <label for="pro_prix">Prix </label>
   <br>
   <input type="text" name= "pro_prix" value="<?php echo $produit->pro_prix; ?>">
   <br>
   <label for="pro_stock">Stock </label>
   <br>
   <input type="text" name= "pro_stock" value="<?php echo $produit->pro_stock; ?>">
   <br>
   <label for="pro_couleur">Couleur </label>
   <br>
   <input type="text" name= "pro_couleur" value="<?php echo $produit->pro_couleur; ?>">
      <br>
      <label for="pro_bloque">Produit Bloqué </label>
      <input type="radio" name="pro_bloque" value="Oui" checked><?php echo $produit->pro_bloque; ?>>
<input type="radio" name="pro_bloque" value="Non" checked><?php echo $produit->pro_bloque; ?>>
   <br>
</form>
<?php echo "Date d'ajout: "."$produit->pro_d_ajout"; ?>
   <br>
   <?php echo "Date de modification : "."$produit->pro_d_modif"; ?>
   <br>
   <form action="liste.php" method="get" id="detail_produit">
   </body>
 </html>