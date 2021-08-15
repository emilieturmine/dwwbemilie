<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <title>PHP - Base</title>
        <meta name="viewport" content="width=device-width, initial-scal=1.0, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>

    <body>  
       
        <header>
        
        <table>
         <thead>
          <tr>
           <th></th>
           <?php
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
        </header>
       

        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>  
    </body>
</html>