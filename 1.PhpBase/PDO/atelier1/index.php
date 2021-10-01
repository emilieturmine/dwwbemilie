<?php
file_exists("entete.php");
?>
<body>
    <div class="container-fluid">
        <header>
            <div class="row">
                <div id="logo" class="col-lg-8 d-none d-lg-block">
                    <img class="col-lg-8 d-none d-lg-block" src="logojarditou.jpg " alt="logo jarditou "
                        title="logo jarditou " style="width: 150px;height:50px ">
                </div>
                <div id="slogan " class="col-lg-4 d-none d-lg-block ">

                    <h2 class="d-flex justify-content-end">La qualité depuis 70 ans</h2>
                </div>
            </div>

        </header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03"
                aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">Jarditou.com</a>

            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">

                    <li class="nav-item active">
                        <a class="nav-link" href="EvalJSAccueil.html">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="EvalJSATableau.html">Tableau</a>
                    </li>
                    <li class="nav-item"></li>
                    <a class="nav-link" href="EvalJSFormulaire.html">Contact</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0" action="/action_page.php">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Votre promotion</button>
                </form>
            </div>
        </nav>
        <img src="promotion.jpg " class="w-100" alt="promotion en cours" title="promotion en cours">
        <section>




            <p> *Ces zones sont obligatoires</p>
            <form id="form" name="form" method="POST" class="form-group" action="script.php"
                onsubmit=" return (envoi());">
                    <legend>
                        <h1>Vos coordonnées</h1>
                    </legend>
                    <label for="nom">Nom*</label>
                    <input class="form-control" type="text" name="Nom" id="Nom" title="Entrez votre nom." required />
                    <span id="ErreurNom"></span>

                    <br />

                    <label for="prenom">Prénom*</label>
                    <input class="form-control" type="text" name="Prénom" id="Prenom" title="Entrez votre prénom."
                        required />
                    <span id="ErreurPrenom"></span>

                    <br />
                    <br />

                    <label for="sexe"id="Sexe">Sexe*</label>
                    <input type="radio" name="Sexe" id="femme" value="Féminin" title="Veuillez cocher votre sexe."
                        required />
                    Féminin
                    <input type="radio" name="Sexe" id="homme" value="Masculin" title="Veuillez cocher votre sexe."
                        required />
                    Masculin
                    <input type="radio" name="Sexe" id="neutre" value="Neutre" title="Veuillez cocher votre sexe."
                        required />
                    Neutre
                    <span id="ErreurSexe"></span>

                    <br />
                    <br />

                    <label for="date">Date de naissance*</label>
                    <input class="form-control" type="date" name="DateNaissance" id="DateNaissance" required />
                    <span id="ErreurDateNaissance"></span>

                    <br />

                    <label for="CP">Code postal*</label>
                    <input class="form-control" type="number" name="CodePostal" id="CP" required />
                    <span id="ErreurCP"></span>

                    <br />

                    <label for="adresse">Adresse</label>
                    <input class="form-control" type="text" name="Adresse" id="Adresse" />

                    <br />

                    <label for="ville">Ville</label>
                    <input class="form-control" type="text" name="Ville" id="Ville" />
                    <br />

                    <label for="email">Email*</label>
                    <input class="form-control" type="email" name="Email" id="Email" required
                        title="Entrez votre email." placeholder="dave.loper@afpa.fr" />
                    <span id="ErreurEmail"></span>

                    <br />
                    <br />

                </fieldset>
                <fieldset>
                    <legend>
                        <h1>Votre demande</h1>
                    </legend>

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

                    <br />

                    <label for="question">Votre question*</label>
                    <textarea class="form-control" name="Question" id="Question" rows="2" cols="25" required
                        title="Posez votre question ici."></textarea>
                    <span id="ErreurQuestion"></span>

                    <br />

                </fieldset>
                <br />

                <label for="Accord"></label>
                <input type="checkbox" name="Accord" id="Accord" />
                * J'accepte le traitement informatique de ce formulaire
                                <br />
                <span id="ErreurAccord"></span>

                <br />
                <br />

                <button type="submit" class="btn btn-dark" value="Envoyer" id="bouton_envoi">
                    Envoyer
                </button>

                <button type="reset" id="reset" class="btn btn-dark" value="Annuler">
                    Annuler
                </button>

            </form>
        </section>
        <?php
        file_exists("pieddepage.php");
        ?>