
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
        <th>action</th>
    </tr>
</thead>";

echo "<tbody>";
while ($row = $result->fetch(PDO::FETCH_OBJ))
{
    echo"<tr class=''table table-striped''>";
?>
   <td> <img class="responsive-img" width=100em src="jarditou_photos/<?php echo $row->pro_id . '.' . $row->pro_photo; ?>" alt="Image de <?= $row->pro_libelle; ?>"/
   ></td>
    <?php
    echo"<td><a href='./details.php?pro_id=$row->pro_id'>".$row->pro_id."</td>";
    echo"<td>".$row->pro_ref."</td>";
    echo"<td>".$row->pro_libelle."</td>";
    echo"<td>".$row->pro_description."</td>";
    echo"<td>".$row->pro_prix."</td>";
    echo"<td>".$row->pro_stock."</td>";
    echo"<td>".$row->pro_couleur."</td>";
    echo"<td>".$row->pro_d_ajout."</td>";
    echo"<td>".$row->pro_d_modif."</td>";
    echo"<td>".$row->pro_bloque."</td>";
        echo"</tr>";
}
echo "</tbody>
</table>"; ?>


<?php include ("pieddepage.php"); ?> 