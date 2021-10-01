function somme(){
    global $a,$b;
    $resultat=$a+$b;
    
};
function multiplication (){
    global $a,$b;
    $resultat =$a*$b;
    };

function division (){
    global $a,$b;
    $resultat= $a/$b;
};

function soustraction () {
    global $a,$b;
    $resultat = $a-$b;
};

function calculator () {
    global $c;

    if $c =='+'{ 
                somme();
                echo $a.$c.$b."=".$resultat;
                
                }else{
                      if $c =='-'{ 
                      soustraction();
                      echo $a.$c.$b."=".$resultat;
                      
                      }else{
                            if $c =='*'{ 
                            multiplication();
                            echo $a.$c.$b."=".$resultat;
                        
                       }else{
                             if $c =='/'{ 
                             division();
                             echo $a.$c.$b."=".$resultat;
          };
    };
};