<?php
/* Charger impérativement avec 'require_once', ne fonctionne dans certains cas avec 'require' */
require_once ".\Calcul.class.php";

use PHPUnit\Framework\TestCase; // Charge le framework PhpUnit

class CalculTest extends TestCase
{   
    public function testDivideOk()
    {
        $oCalcul = new Calcul();

        $number = 10;
        $divide = 2;

        $result = $oCalcul->divide($number, $divide);

        // On attend que le résultat de 10/2 soit 5 :
        $this->assertEquals(5, $result);
    } 
    public function test2DivideOk(){
        $oCalcul=new Calcul();
        $divide=0;
        $number=6;
        $result=$oCalcul->divide($number, $divide);
        //On attend que le formulaire affiche une erreur sur $divide et deùande une autre valeur.
           $this->assertFalse(true);
        }
}