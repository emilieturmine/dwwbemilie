<?php
require_once "Employe.class.php";
    class Directeur extends Employe {
       
        

        
        public function getPrime(){
                $_prime_salaire =$this->_salaire*(7/100);
                $_prime_anciennete=($this->_salaire* $this->getanciennete()*(3/100));
                $_prime_totale=$_prime_salaire +$_prime_anciennete; 
            return $_prime_totale;
        }
        
              public function  __toString(){
            return(string)  '<td>'.$this->_nom.
                            '<td>'.  $this->_prenom.'</td>'.
                            '<td>'.  $this->getDateEmbauche()->format('d-m-Y')     .'</td>'. 
                            '<td>'.  $this->_poste.'</td>'.
                            '<td>'.  $this->_salaire.'</td>'.      
                            '<td>'.  $this->_service.'</td>'.
                            '<td>'.   $this->getanciennete().'</td>'.
                            '<td>'.  $this->getPrime().'</td>'.
                            '<td>'.  $this->getVersement().'</td>'.
                            '<td>'. $this->_agence.'</td>'.
                            '<td>'. $this->_restauration.'</td>'.
                            '<td>'. $this->getChequesVacances().'</td>'.
                            '<td>'. $this->_cheque_noel.'</td>';
        }
    }

?>