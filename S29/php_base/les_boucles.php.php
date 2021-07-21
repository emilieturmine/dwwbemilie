
/* Les boucles */
/*Exercice 1

Ecrire un script PHP qui affiche tous les nombres impairs entre 0 et 150, par ordre croissant : 1 3 5 7... */

<?php
    echo "Exercice - 1:<br>";
     for ($a =1; $a <= 150; $a++){
         echo "$a<br>";
         $a++;
     }
?>
/*Exercice 2

Écrire un programme qui écrit 500 fois la phrase Je dois faire des sauvegardes régulières de mes fichiers.
*/

<?php
        $x =1;
        do{
            echo "$x- Je dois faire des sauvegardes réguliéres de mes fichiers<br>";
            $x++;
        }
        while ($x <= 500);


?>

/* Exercice 3

Ecrire un script qui affiche la table de multiplication totale de {1,...,12} par {1,...,12}, le résultat doit être le suivant :

images/php_03_exercice3.jpg*/


<?php
    $a = 0;
    while ($a <= 12) {
?>
            <th><?= $a ?></th>
<?php
    $a++;
    }
?>
          </tr>
         </thead>

         <tbody>
<?php
    $b = 0;
    while ($b <= 12) {
?>
          <tr>
           <td>
            <?= $b ?>
           </td>
<?php
    $a = 0;
    while ($a <= 12) {
?>
           <td>
            <?= $a * $b ?>
            <?php $a++; ?>
           </td>
<?php
    } 
?>
          </tr>
<?php
    $b++;
    }
?>

<!--les tableaux -->
<?php
$a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
       "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
       "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
     );

     
     $a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
            "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
            "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
          );
     
          echo "<hr>Exo1 :";
          //Quelle semaine a lieu la validation du groupe 19002 ?
          $y=count($a["19002"]);
          $st=0;
          for ($i=0;$i<$y;$i++){
              if($a["19002"][$i]=="Validation"){
                  $st=$i;
                  $st++;
                  echo " la validation du groupe 19002 aura lieu la semaine".$st."<br/>";
              }else{}
          }
      
          echo "<hr>Exo2 :";
          //Trouver la position de la dernière occurence de Stage pour le groupe 19001 ?
          $x =0;
          $t =count($a["19001"]);
          for ($i =0;$i < $t; $i++){
              if ($a["19001"][$i] == "Stage"){
                  $x = $i;
              }else{}
          }
          echo " la derniere semaine de Stage pour le groupe 19001 est la semaine ".$x;
      
          echo "<hr>Exo3 :";
      
          echo "<hr>Exo4 :";
          //Combien de semaines dure le stage du groupe 19003 ?
          $z =count($a["19003"]);
          $tab1 =array();
          for ($i =0; $i <$y; $i++){
              if ($a["19003"][$i] == "Stage"){
                  array_push($tab1,"Stage");
              }else{}
          }
          echo "le stage du groupe 19003 dure ".count($tab1)." semaines.<hr>";
          ?>
     