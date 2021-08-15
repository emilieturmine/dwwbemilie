<!DOCTYPE html>
<!--Pour plus de details sur le travail(commentaires) sur HTML voir FRONT/Statique/HTML/accueil-->

<html lang="fr">


<head>

    <meta charset="utf-8">

    <meta name="description" content="Accueil,tableau comparatif et formulaire de contact jarditou">

    <title>Accueil</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>


<body>
    <!--indique au navigateur ou commence le corps de page (partie visible) et ou il se termine-->
    <div class="container-fluid">
        <!--permet de definir un conteneur de taille fluide cad un conteneur dont la taille va changer en mm temps que celle de la fenetre-->
        <header>
            <!--partie haute du document-->
            <div class="row">
                <!--commande du bootstrap pour transformer à partir de 960px-->
                <div id="logo" class="col-lg-8 d-none d-lg-block">
                    <img class="col-lg-8 d-none d-lg-block" src="image/logojarditou.jpg " alt="logo jarditou " title="logo jarditou " style="width: 150px;height:50px ">
                </div>
                <div id="slogan " class="col-lg-4 d-none d-lg-block ">

                    <h2 class="d-flex justify-content-end">La qualité depuis 70 ans</h2>
                </div>
            </div>

        </header>
        <!--création d'une liste pour faciliter la navigation entre les pages ,faire pour qu'elle disparaisse si la largeur de la page est reduite-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">Jarditou.com</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

                    <li class="nav-item active">
                        <a class="nav-link" href="acceuil.php">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tableau.php">Tableau</a>
                    </li>
                    <li class="nav-item"></li>
                    <a class="nav-link" href="contact.php">Contact</a>
                    </li>
                </ul>
                <!--création d'un boutton submit pour soumettre un code promotion-->
                <form class="form-inline my-2 my-lg-0" action="/action_page.php">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Votre promotion</button>
                </form>
            </div>
        </nav>
        <img src="image/promotion.jpg " class="w-100" alt="promotion en cours" title="promotion en cours">
        <section>
            <p> *Ces zones sont obligatoires</p>
            <!--Debut du formulaire-->
            <form id="form" name="form" method="POST" class="form-group" action="script.php" >
                <fieldset>
                    <!--creation d'un groupe de champs-->
                    <legend>
                        <!--titre du formulaire-->
                        <h1>Vos coordonnées</h1>
                    </legend>
                    <!--création d'un champs de saisie de texte-->
                    <label for="nom">Nom*</label>
                    <input class="form-control" type="text" name="Nom" id="Nom" title="Entrez votre nom." value="<?= isset($Nom) ? htmlspecialchars($Nom) : "";?>"/>
                    <span id="ErreurNom"></span>
                    <?php 
                    if (isset($Nom_erreur)) echo "$Nom_erreur"; 
                    ?>
                    <br />
                    <label for="prenom">Prénom*</label>
                    <input class="form-control" type="text" name="Prénom" id="Prenom" title="Entrez votre prénom." value="<?= isset($Prenom) ? htmlspecialchars($Prenom) : "";?>" />
                    <span id="ErreurPrenom"></span>
                    <?php 
                    if (isset($Prenom_erreur)) echo "$Prenom_erreur"; 
                    ?>
                    <br />
                    <br />
                    <!--création d'un champs avec boutons radio-->
                    <label for="sexe" id="Sexe">Sexe*</label>
                    <input type="radio" name="Sexe" id="femme" value="Féminin" title="Veuillez cocher votre sexe." required /> Féminin
                    <input type="radio" name="Sexe" id="homme" value="Masculin" title="Veuillez cocher votre sexe." required /> Masculin
                    <input type="radio" name="Sexe" id="neutre" value="Neutre" title="Veuillez cocher votre sexe." required /> Neutre
                    <span id="ErreurSexe"></span>
                    <?php 
                    if (isset($Sexe_erreur)) echo "$Sexe_erreur"; 
                    ?>
                    <br />
                    <br />
                    <label for="date">Date de naissance*</label>
                    <input class="form-control" type="date" name="Date de naissance" id="DateNaissance" value="<?= isset($DateNaissance) ? htmlspecialchars($DateNaissance) : "";?>" />
                    <span id="ErreurDateNaissance"></span>
                    <?php 
                    if (isset($DateNaissance_erreur)) echo "$DateNaissance_erreur"; 
                    ?>
                    <br />
                    <label for="CP">Code postal*</label>
                    <input class="form-control" type="number" name="Code Postal" id="CP" value="<?= isset($CP) ? htmlspecialchars($CP) : "";?>"/>
                    <span id="ErreurCP"></span>
                    <?php 
                    if (isset($CP_erreur)) echo "$CP_erreur"; 
                    ?>
                    <br />
                    <label for="adresse">Adresse</label>
                    <input class="form-control" type="text" name="Adresse" id="Adresse" />
                    <br />
                    <label for="ville">Ville</label>
                    <input class="form-control" type="text" name="Ville" id="Ville" value="<?= isset($Ville) ? htmlspecialchars($Ville) : "";?>"/>
                    <br />
                    <?php 
                    if (isset($Ville_erreur)) echo "$Ville_erreur"; 
                    ?>
                    <label for="email">Email*</label>
                    <input class="form-control" type="email" name="Email" id="Email" title="Entrez votre email." placeholder="dave.loper@afpa.fr" value="<?= isset($Email) ? htmlspecialchars($Email) : "";?>" />
                    <span id="ErreurEmail"></span>
                    <?php 
                    if (isset($Email_erreur)) echo "$Email_erreur"; 
                    ?>
                    <br />
                    <br />
                </fieldset>
                <fieldset>
                    <legend>
                        <h1>Votre demande</h1>
                    </legend>
                    <!--création d'une liste déroulante-->
                    <label for="sujet">Sujet*</label>
                    <select name="Sujet" id="Sujet" class="form-control" required>
                        <option value="" disabled selected>
                            Veuillez séléctionner un sujet
                        </option>
                        <option value="Mes commandes">Mes commandes</option>
                        <option value="Question sur un produit">
                            Question sur un produit
                        </option>
                        <option value="Réclamation">Réclamation</option>
                        <option value="Autres">Autres</option>
                    </select>
                    <span id="ErreurSujet"></span>
                    <?php 
                    if (isset($Sujet_erreur)) echo "$Sujet_erreur"; 
                    ?>
                    <br />
                    <!--zone de saisie multi-lignes-->
                    <label for="question">Votre question*</label>
                    <textarea class="form-control" name="Question" id="Question" rows="2" cols="25" title="Posez votre question ici." value="<?= isset($Question) ? htmlspecialchars($PQuestion) : "";?>"></textarea>
                    <span id="ErreurQuestion"></span>
                    <?php 
                    if (isset($Question_erreur)) echo "$Question_erreur"; 
                    ?>
                    <br />
                </fieldset>
                <br />
                <label for="Accord"></label>
                <input type="checkbox" name="Accord" id="Accord" /> * J'accepte le traitement informatique de ce formulaire
                <br />
                <span id="ErreurAccord"></span>
                <br />
                <br />
                <!--création bouton pour soumettre ou reinitialiser le formulaire-->
                <button type="submit" class="btn btn-dark" value="Envoyer" id="bouton_envoi">
                    Envoyer
                </button>
                <button type="reset" id="reset" class="btn btn-dark" value="Annuler">
                    Annuler
                </button>
            </form>
        </section>
        <footer>
            <!--debut du pied de page-->
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="mentionslegal.html ">Mentions légales</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="horaires ">Horaires</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="plandusite ">Plan du site</a>
                            </li>
                        </ul>
                </div>
        </footer>
        </section>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js " integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n " crossorigin="anonymous "></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js " integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo " crossorigin="anonymous "></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js " integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6 " crossorigin="anonymous "></script>
        <script src="script.php"></script>
        <!--permet d'integrer la feuille externe de java script,on l'applique àvant la fermeture de la balise body et non dans head pour optimiser l'ergonomie de la page web-->
</body>
<!--fin de la balise body-->

</html>
<!--fin de la balise html-->