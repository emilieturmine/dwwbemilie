<?php
// fonction pour ecrire un message

function writeMessage($sText) 
{
   $sHtml = "<h1>".$sText."</h1>";
   echo $sHtml;
};

// fonction pour verifier la presence d'un fichier
function files_exists() {
    global $file;
if (file_exists($file) ) 
{
    include($file);
} 
else 
{
     echo " le fichier".$file."n'existe pas.";
} ;};
?>
