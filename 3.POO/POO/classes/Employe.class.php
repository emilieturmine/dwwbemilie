
<?php
 
                                        //1.ecrire la classe employes


    class Employe {
      private $_nom;
private $_prenom;
private $_dateEmbauche;
private $_fonction;
private $_salaire;
private $_service;
private $_agence;
private $_restauration;
private $_cheque_noel;
private $_enfant;
        
        

        public function __construct($new_nom = Null,$new_prenom = Null, $new_dateEmbauche = Null,$new_fonction = Null,$new_salaire = Null,$new_service = Null,$new_agence = Null,$new_restauration = Null,$_new_cheque_noel = Null, $_enfant = Null) {
            $this->_nom = $new_nom;
            $this->_prenom = $new_prenom;
            $this->_dateEmbauche =date_create($new_dateEmbauche);
            $this->_fonction = $new_fonction;
            $this->_salaire = $new_salaire;
            $this->_service = $new_service;
            $this->_agence=$new_agence;
            $this->_restauration=$new_restauration;
            $this->_cheque_noel=$_new_cheque_noel;
            $this->_enfant=$_enfant;
        }

        public function getNom() {
            return $this->_nom;
        }
        public function getPrenom() {
            return $this->_prenom;
        }
        public function getDateEmbauche() {        
            $datemb = $this->_dateEmbauche;  
                return $this->_dateEmbauche;
        }
        public function getFonction() {
            return $this->_fonction;
        }
        public function getSalaire() {
            return $this->_salaire;
        }
        public function getService() {
            return $this->_service;
        }
        public function getAgence() {
            return $this->_agence;
        }
        public function getRestauration(){
            return $this->_restauration;
        }
        public function getChequeNoel(){
            return $this->_cheque_noel;
        }
        public function getEnfant(){
            return $this->_enfant;
        }
        public function setNom($sNom) {
            $this->_nom = $sNom;
        }
        public function setPrenom($sPrenom) {
            $this->_prenom = $sPrenom;
        }
        public function setDateEmbauche(DateTime $sDate) {  
            $convDate = date_format($this->dateTemoin, 'd-m-Y') ; 
            $this->_dateEmbauche = $sDate;
        }
        public function setFonction($sFonction) {
            $this->_Fonction = $sFonction;
        }
        public function setSalaire($sSalaire) {
            $this->_salaire = $sSalaire;
        }
        public function setService($sService) {
            $this->_service = $sService;
        }
        public function setAgence($sAgence) {
            $this->_agence = $sAgence;
        }
        public function setRestauration($sRestauration) {
            $this->_restauration = $sRestauration;
        }
        public function setChequeNoel($sChequeNoel) {
            $this->_cheque_noel = $sChequeNoel;
        }
        public function setEnfant($sEnfant) {
            $this->_enfant = $sEnfant;
        }
                                    //2. methode pour calculer l'ancieneté
        public function getanciennete(){
                $dateTemoin=date_create();
                $_anciennete=date_diff($this->_dateEmbauche,$dateTemoin);
            return  $_anciennete->format('%y');
        }
                                     //3. methodes pour calculer la prime
        public function getPrime(){
                $_prime_salaire =$this->_salaire*(5/100);
                $_prime_anciennete=($this->_salaire* $this->getanciennete()*(2/100));
                $_prime_totale=$_prime_salaire +$_prime_anciennete; 
            return $_prime_totale;
        }
        public function getVersement(){
                $d = '30';
                $m = '11';
                $dateSrc = date_create();
                $d_curr = $dateSrc->format('d');
                $m_curr = $dateSrc->format('m');
                    if ($d == $d_curr && $m == $m_curr) {
            return 'Le transfert d\'un montant de '. $this->getPrime() . ' € a été envoyé.';
                    }
                    else {
            return 'Le paiement sera effectué le 30/11 !';
                    }
            }
        public function getChequesVacances(){
                    if ($this->getanciennete() >= 1) {
                return 'Oui';
                    }
                    else {
                return 'Non'; 
                    }
        }

        public function getMontantChequeNoel() {

            foreach ($this->_enfant as $enfant) {
                $enfant->getMontantCqNoel();
            }
        }
              public function  __toString(){
            return(string)  '<td>'.$this->_nom.
                            '<td>'.  $this->_prenom.'</td>'.
                            '<td>'.  $this->getDateEmbauche()->format('d-m-Y')     .'</td>'. 
                            '<td>'.  $this->_fonction.'</td>'.
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
