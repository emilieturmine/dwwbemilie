

<?php 
//Exercice 1
//Affichez la date du jour au format mardi 2 juillet 2019.
echo date('l j F Y');
?>
<br>
<?php
//Exercice 2
//Trouvez le numéro de semaine de la date suivante : 14/07/2019.
$DateDisplay = '2019-07-14' ;
echo 'Semaine' . date('W',strtotime($DateDisplay)) . ' de ' . date('o',strtotime($DateDisplay));?>
<br>
<?php 

//Exercice 4
//Reprenez l'exercice 3, mais traitez le problème avec les fonctions de gestion du timestamp, time() et mktime().

$origin = new DateTime('2021-08-23');
$target = new DateTime('2022-01-14');
$interval = $origin->diff($target);
echo $interval->format('%R%a days');?>
<br>
<?php
//Exercice 5
//Quelle sera la prochaine année bissextile ?

function bissextile($annee) {
	if( (is_int($annee/4) && !is_int($annee/100)) || is_int($annee/400)) {
			
		return TRUE;
	} else {
		
		return FALSE;
	}
}
echo date('Y') . ' ';
echo bissextile(date('Y')) ? 'est' : 'n\'est pas';
echo ' bissextile.';
?>
<br>
<?php
//Exercice 6
//Montrez que la date du 17/17/2019 est erronée.
$datePattern = "/^[0-9]{4}-[0-1][0-9]-[0-3][0-9]$/";
$date = "17/17/2019";

if (preg_match($datePattern, $date) )
{
    echo"Date ".$date." valide.<br>";
}
else 
{
    echo"Date ".$date." erronée.<br>";
} 

?>
<br>
<?php

//Exercice 7
//Affichez l'heure courante sous cette forme : 11h25.
echo date(' H:i');?>
<br>
<?php
//Exercice 8
//Ajoutez 1 mois à la date
$maDate = "2021-08-23";
$maDate = date("Y-m-d", strtotime("+1 month", strtotime($maDate."" )));
echo "$maDate";  
?>










































