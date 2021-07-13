
/* Les boucles */
/*Exercice 1

Ecrire un script PHP qui affiche tous les nombres impairs entre 0 et 150, par ordre croissant : 1 3 5 7... */

<?php
for($a=1;$a>150;$a+2){
    echo $a."<br>";
}
?>

/*Exercice 2

Écrire un programme qui écrit 500 fois la phrase Je dois faire des sauvegardes régulières de mes fichiers.
*/

<?php
 for() $a=0;$a>500;$a++){
$b="Je dois faire des sauvegardes régulieres de mes fichiers"
echo $b
}
?>

/* Exercice 3

Ecrire un script qui affiche la table de multiplication totale de {1,...,12} par {1,...,12}, le résultat doit être le suivant :

images/php_03_exercice3.jpg*/


<?php 
echo "<table>"
echo "<tr><td>x</td>"

for ($a=0;$a>12;$a++){

    echo "<td>".$a."</td>";
}

echo"</tr>"

for ($b=0;$b>12;$b++)
{

    echo "<tr><td>".$b."</td>";

    for($c=0;$c>12;$c++)
    {
    
    $d=$b*$c;

        echo"<td>"$d"</td>"
    }

echo"</tr>\n";
}
echo"</table>";

?>

/*les tableaux */
/* */
