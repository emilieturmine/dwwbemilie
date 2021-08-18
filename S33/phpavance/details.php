
<?php include ("entete.php"); 
    
     require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions

     $db = connexionBase(); // Appel de la fonction de connexion
    $pro_id = $_GET["pro_id"];
    $requete = "SELECT *, cat_nom FROM produits join categories on pro_cat_id = cat_id WHERE pro_id=".$pro_id;
    $result = $db->query($requete);
$produit = $result->fetch(PDO::FETCH_OBJ);

   ?>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   </head>
   <body>
   <nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="liste.php">jarditou</a>
    </div>
    <ul id="nav navbar-nav" class= "row">
      <li class="active"><a href="liste.php">Accueil &nbsp &nbsp</a></li>
      
      <li><a href="utilisateur.php">Mon compte &nbsp &nbsp</a></li>
      
      <li><a href="formulaire/formulaire.php">Contact &nbsp &nbsp</a></li>
    </ul>
    <!--<button class="btn btn-danger navbar-btn">Boutton provisoire</button> -->
  </div>
</div>
</nav> 
<form action="liste.php" method="POST" id="detail_produit">
  <label for="pro_id">ID </label>
  <br>
   <input class="form-control" type="text" name= "pro_id" value="<?php echo $produit->pro_id; ?>">
   <br>
   <label for="pro_ref">référence </label>
   <br>
   <input  class="form-control" type="text" name= "pro_ref" value="<?php echo $produit->pro_ref; ?>">
   <br>
   <label for="cat_nom">Catégorie </label>
   <br>
   <input  class="form-control" type="text" name= "cat_nom" value="<?php echo $produit->cat_nom; ?>">
   <br> 
   <label for="pro_libelle">libelle </label>
   <br>
   <input  class="form-control" type="text" name= "pro_libelle" value="<?php echo $produit->pro_libelle; ?> ">
   <br>
   <label for="pro_ref">Description </label>
   <br>
   <textarea class="form-control" name="pro_description" ><?php echo $produit->pro_description; ?>"</textarea>
   <br>
   <label for="pro_prix">Prix </label>
   <br>
   <input  class="form-control" type="text" name= "pro_prix" value="<?php echo $produit->pro_prix; ?>">
   <br>
   <label for="pro_stock">Stock </label>
   <br>
   <input  class="form-control" type="text" name= "pro_stock" value="<?php echo $produit->pro_stock; ?>">
   <br>
   <label for="pro_couleur">Couleur </label>
   <br>
   <input  class="form-control" type="text" name= "pro_couleur" value="<?php echo $produit->pro_couleur; ?>">
      <br>
      <label for="pro_bloque">Produit Bloqué 
        <input type="radio" name="pro_bloque" value="Oui" checked><?php echo $produit->pro_bloque; ?> OUI 
      <input type="radio" name="pro_bloque" value="Non" checked><?php echo $produit->pro_bloque; ?> NON
      
      <br>
</form>

<?php echo "Date d'ajout: "."$produit->pro_d_ajout"; ?>
   <br>
   <?php echo "Date de modification : "."$produit->pro_d_modif"; ?>
   <br>
   
   
</body>
</footer>
<?php include ("pieddepage.php"); ?> 
</footer>
 </html>

