<?php 
session_start();
include ("head.php"); 
  require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
  $db = connexionBase(); // Appel de la fonction de connexion
  $requete = "SELECT * FROM produits ORDER BY pro_d_ajout DESC";
  $result = $db->query($requete);
  if (!$result) {
    $tableauErreurs = $db->errorInfo();
    echo $tableauErreur[2]; 
    die("Erreur dans la requête");
                }
  if ($result->rowCount() == 0) { // Pas d'enregistrement
    die("La table est vide");}?>
  </head>
  <body>

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
                        <a class="nav-link" href="liste.php">Liste de details</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="form_contact.php">Contact</a>
                    </li>
                </ul>            
            </div>
        </nav>
        <img src="jarditou_photos/promotion.jpg " class="w-100" alt="promotion en cours" title="promotion en cours">



    <h1 class= "text-center" >Liste de produits</h1>
    <div class="container">
      <?php
        echo "<table class='table table-bordered'>
          <thead>
            <tr class='thead-light'>
              <th>Photo</th>
              <th>ID</th>
              <th>Reference</th>
              <th>Libellé</th>
              <th>Description</th>
              <th>Prix</th>
              <th>Stock</th>
              <th>Couleur</th>
              <th>Ajout</th>
              <th>Modif</th>
              <th>Bloqué</th>
            </tr>
          </thead>";
        echo "<tbody>";
while ($row = $result->fetch(PDO::FETCH_OBJ)){
            echo"<tr class=''table table-striped''>";?>
              <td>
                <img class="responsive-img" width=100em src="jarditou_photos/<?php echo $row->pro_id . '.' . $row->pro_photo; ?>" alt="Image de <?= $row->pro_libelle; ?>"/>
              </td>
<?php
        echo"<td>
                <a href='./detailsC.php?pro_id=$row->pro_id'>".$row->pro_id."</td>";
        echo"<td>".$row->pro_ref."</td>";
        echo"<td>".$row->pro_libelle."</td>";
        echo"<td>".$row->pro_description."</td>";
        echo"<td>".$row->pro_prix."</td>";
        echo"<td>".$row->pro_stock."</td>";
        echo"<td>".$row->pro_couleur."</td>";
        echo"<td>".$row->pro_d_ajout."</td>";
        echo"<td>".$row->pro_d_modif."</td>";
        echo"<td>".$row->pro_bloque."</td>";
        echo "</tr>";}
        echo "</tbody>";
        echo"</table>"; ?>
<?php include ("pieddepage.php"); ?> 