<?php
session_start();
    include ("head.php"); 
    require "connexion_bdd.php"; 
?>
</head>
<body>
<div class="container-fluid">
                <header>
                       <div class="row"> 
                <div id="logo" class="col-lg-8 d-none d-lg-block">
                    <img class="col-lg-8 d-none d-lg-block" src="jarditou_photos/jarditou_logo.jpg " alt="logo jarditou "
                        title="logo jarditou " style="width: 150px;height:50px ">
                                   </div>
                <div id="slogan " class="col-lg-4 d-none d-lg-block ">

                    <h2 class="d-flex justify-content-end">Tout le jardin</h2>

                </div>
           
        </header>
        <!--création d'une liste pour faciliter la navigation entre les pages ,faire pour qu'elle disparaisse si la largeur de la page est reduite-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03"
                aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">Jarditou.com</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item ">
                        <a class="nav-link" href="liste.php">liste de produit</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="form_contact.php">Contact</a>
                    </li>
                </ul>            
            </div>
        </nav>
        <img src="jarditou_photos/promotion.jpg " class="w-100" alt="promotion en cours" title="promotion en cours">



<h1 class= "text-center" >Formulaire de contact</h1>
    <p> *Ces zones sont obligatoires</p>
    <form id="form" name="form" method="POST" class="form-group" action="script/script_contact.php" onsubmit=" return (envoi());">
        <legend>
            <h1>Vos coordonnées</h1>
        </legend>
                <label for="nom">Nom*</label>
                    <input class="form-control" type="text" name="Nom" id="Nom" title="Entrez votre nom." required />
                        <span id="ErreurNom"></span>
            <br/>
                <label for="prenom">Prénom*</label>
                    <input class="form-control" type="text" name="Prenom" id="Prenom" title="Entrez votre prénom."required />
                        <span id="ErreurPrenom"></span>
            <br/>
            <br/>
                <label for="sexe"id="Sexe">Sexe*</label>
                    <input type="radio" name="Sexe" id="femme" value="Féminin" title="Veuillez cocher votre sexe."required />Féminin
                    <input type="radio" name="Sexe" id="homme" value="Masculin" title="Veuillez cocher votre sexe."required />Masculin
                    <input type="radio" name="Sexe" id="neutre" value="Neutre" title="Veuillez cocher votre sexe."required />Neutre
                        <span id="ErreurSexe"></span>
            <br />
            <br />
                <label for="date">Date de naissance*</label>
                    <input class="form-control" type="date" name="DateNaissance" id="DateNaissance" required />
                        <span id="ErreurDateNaissance"></span>
            <br />
                <label for="CP">Code postal*</label>
                    <input class="form-control" type="number" name="CP" id="CP" required />
                        <span id="ErreurCP"></span>
            <br />
                <label for="Adresse">Adresse</label>
                    <input class="form-control" type="text" name="Adresse" id="Adresse" />
            <br />
                <label for="Ville">Ville</label>
                    <input class="form-control" type="text" name="Ville" id="Ville" />
            <br />
                <label for="email">Email*</label>
                    <input class="form-control" type="email" name="Email" id="Email" required title="Entrez votre email." placeholder="dave.loper@afpa.fr" />
                        <span id="ErreurEmail"></span>
            <br />
            <br />
    </fieldset>
    <fieldset>
        <legend>
            <h1>Votre demande</h1>
        </legend>
                <label for="Sujet">Sujet*</label>
                    <select name="Sujet" id="Sujet" class="form-control" required>
                        <option value="" disabled selected>Veuillez séléctionner un sujet</option>
                        <option value="Mes commandes">Mes commandes</option>
                        <option value="Question sur un produit">Question sur un produit</option>
                        <option value="Réclamation">Réclamation</option>
                        <option value="Autres">Autres</option>
                    </select>
                        <span id="ErreurSujet"></span>

            <br />

                <label for="question">Votre question*</label>
                    <textarea class="form-control" name="Question" id="Question" rows="2" cols="25" required title="Posez votre question ici."></textarea>
                        <span id="ErreurQuestion"></span>
            <br />
    </fieldset>
            <br />
                <label for="Accord"></label>
                    <input type="checkbox" name="Accord" id="Accord" />* J'accepte le traitement informatique de ce formulaire
            <br />
                        <span id="ErreurAccord"></span>
            <br />
            <br />
                    <button type="submit" class="btn btn-dark" name="valider" value="Envoyer" id="bouton_envoi">Envoyer</button>
                    <button type="reset" id="reset" class="btn btn-dark" value="Annuler">Annuler</button>
</form>
</section>
<?php 
include("pieddepage.php");
?>