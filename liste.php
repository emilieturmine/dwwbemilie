<?php include ("entete.php"); ?>
<body> 

<h1>Liste de produits</h1>
<div class="container">

<?php
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
}

echo "<table class='table table-bordered'>
<thead>
    <tr class='thead-light'>
        <th>Photo</th>
        <th>ID</th>
        <th>Reference</th>
        <th>Libellé</th>
        <th>Prix</th>
        <th>Stock</th>
        <th>Couleur</th>
        <th>Ajout</th>
        <th>Modif</th>
        <th>Bloqué</th>
    </tr>
</thead>";

echo "<tbody>";
while ($row = $result->fetch(PDO::FETCH_OBJ))
{
    echo"<tr class='table-warning'>";
    echo"<td>".$row->pro_photo."</td>";
    echo"<td>".$row->pro_id."</td>";
    echo"<td>".$row->pro_ref."</td>";
    echo"<td>".$row->pro_libelle."</td>";
    echo"<td>".$row->pro_prix."</td>";
    echo"<td>".$row->pro_stock."</td>";
    echo"<td>".$row->pro_couleur."</td>";
    echo"<td>".$row->pro_d_ajout."</td>";
    echo"<td>".$row->pro_d_modif."</td>";
    echo"<td>".$row->pro_bloque."</td>";
    echo"<td><a href=\"detail.php?id=".$row->pro_id."\" title=\"".$row->pro_libelle."\"></a></td>";
    echo"</tr>";
}

echo "</tbody>
</table>"; ?>

<!-- reste a faire:
mettre le titre de la page au milieu
corriger dimenssion tableau
inserer photo
remplacer les 1 ou 0 dans bloqué par oui
rendre le lien actifpour la page de details
changer les parametres bootstrap pour avoir le mm tableau que celui demandé
verifier liste des liens fonctionne avec get
comprendre l'histoire de get ds l'adresse http
rendre la page responsive :(
mettre en place un bouton modifier avec un lien vers la page ajout
-->
?>
<?php include ("pieddepage.php"); ?> 