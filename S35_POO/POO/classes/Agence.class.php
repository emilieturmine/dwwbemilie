<?php
class Agence  {
    private $_nom;
    private $_adresse;
    private $_codePostal;
    private $_ville;
    private $_restauration;

    public function __construct($new_nom =null,$new_adresse =null, $new_codePostal =null,$new_ville =null,$new_restauration =null) {
        $this->_nom = $new_nom;
        $this->_adresse = $new_adresse;
        $this->_cp = $new_codePostal;
        $this->_ville = $new_ville;
        $this->_restauration= $new_restauration;
    }

    public function getNom() {
        return $this->_nom;
    }
    public function getAdresse() {
        return $this->_adresse;
    }
    public function getCodePostal() {        
        return $this->_codePostal;  
             }
    public function getVille() {
        return $this->_ville;
    }
    public function getRestauration() {
        return $this->_restauration;
    }
    
    public function setNom($sNom) {
        $this->_nom = $sNom;
    }
    public function setAdresse($sAdresse) {
        $this->_adresse = $sAdresse;
    }
    public function setCodePostal( $sCp) {  
         
        
        $this->_codePostal = $sCp;
        
    }
    public function setVille($sVille) {
        $this->_ville = $sVille;
    }
    public function setModeRestauration($sRestauration) {
        $this->_restauration = $sRestauration;
    }
  
  
    public function  __toString(){
        
         return(string)'<td>'.$this->_nom.'</td>'.
            '<td>'.  $this->_adresse.'</td>'.
            '<td>'.  $this->_codePostal.'</td>'. 
            '<td>'.  $this->_ville.'</td>'.
            '<td>'.  $this->_restauration.'</td>';
             
         
     }



}



?>