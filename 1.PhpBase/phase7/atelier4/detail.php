
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
   <?php echo $produit->pro_libelle; ?> référence <?php echo $produit->pro_ref; ?>
   <br>
   <?php echo $produit->pro_description; ?>
   <br>
   <?php echo $produit->pro_prix; ?>
   </body>
 </html>