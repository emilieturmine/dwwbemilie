Afin de pouvoir alimenter votre base de données, vous devez créer un formulaire et l'appeler par exemple produits_ajout.php.

    Ce formulaire doit permettre de saisir toutes les informations, c'est-à-dire chaque colonne de la table produits.

    Nous verrons ultérieurement comment charger le fichier photo. Pour le moment, contentez-vous de renseigner seulement l'extension avec un simple champ de type texte.

    Un clic sur le bouton Envoyer déclenche l'appel de la page produits_ajout_script.php.

Ce script effectue les actions suivantes :

    Récupération et vérification des informations transmises par le formulaire
    Enregistrement des données dans la base
    Redirection vers la liste. Cette redirection s'effectue à l'aide de la fonction header("Location:liste.php");

A vous de jouer !