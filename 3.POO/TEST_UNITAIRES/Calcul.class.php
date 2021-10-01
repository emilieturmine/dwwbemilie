<?php 
class Calcul
{
    public function divide($number, $divisor)
    {
        if (empty($number) || $number <= 0 || empty($divisor) || $divisor <= 0) 
        { // Erreurs
            return FALSE;
        }

        return $number / $divisor;
    }
}
?>