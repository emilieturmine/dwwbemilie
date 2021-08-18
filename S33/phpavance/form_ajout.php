<?php include ("entete.php"); 

require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
$db = connexionBase(); // Appel de la fonction de connexion
$requete = "SELECT * FROM produits ORDER BY pro_d_ajout DESC";

$result = $db->query($requete);

if (!$result) 
{
    $tableauErreurs = $db->errorInfo();
    echo $tableauErreur[2]; 
    die("Erreur dans la requête");
}

if ($result->rowCount() == 0) 
{
   // Pas d'enregistrement
   die("La table est vide");
}?>
</head>

<body>
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


<form action="details.php" method="POST" id="ajout_produit">
  <label for="pro_id">ID </label>
  <br>
   <input class="form-control" type="text" name= "pro_id" >
   <br>
   <label for="pro_ref">référence </label>
   <br>
   <input  class="form-control" type="text" name= "pro_ref" >
   <br>
   <label for="cat_nom">Catégorie </label>
   <br>
   <input  class="form-control" type="text" name= "cat_nom">
   <br> 
   <label for="pro_libelle">libelle </label>
   <br>
   <input  class="form-control" type="text" name= "pro_libelle" >
   <br>
   <label for="pro_ref">Description </label>
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
      <label for="pro_bloque">Produit Bloqué 
        <input type="radio" name="pro_bloque" value="Oui" > OUI 
      <input type="radio" name="pro_bloque" value="Non" > NON
            <br>
            <br>
<label for="pro_d_ajout"> Date d'ajout :</label>
   <br>
   <input class="form-control"  type="date" name="pro_d_ajout" >
   <br>
   <label for="pro_d_modif"> Date de modification :</label>
   <br>
   <input class="form-control"  type="date" name="pro_d_modif" >
      <br>

      <input type="submit" value ="ajouter">
   </body>
</footer>
<?php include ("pieddepage.php"); ?> 
</footer>
 </html>