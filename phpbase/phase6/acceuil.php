<!DOCTYPE html>
<!--Pour plus de details sur le travail(commentaires) sur HTML voir FRONT/Statique/HTML/accueil-->

<html lang="fr">


<head>

    <meta charset="utf-8">

    <meta name="description" content="Accueil,tableau comparatif et formulaire de contact jarditou">

    <title>Accueil</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--pour importer bootstrap sur la page html-->
</head>


<body>

    <div class="container-fluid">
        <!--permet de definir un conteneur de taille fluide cad un conteneur dont la taille va changer en mm temps que celle de la fenetre-->
        <header>


            <div class="row">
                <!--commande du bootstrap pour transformer à partir de 960px-->
                <div id="logo" class="col-lg-8 d-none d-lg-block">

                    <img class="col-lg-8 d-none d-lg-block" src="image/logojarditou.jpg " alt="logo jarditou " title="logo jarditou " style="width: 150px;height:50px ">
                </div>
                <div id="slogan " class="col-lg-4 d-none d-lg-block ">

                    <h2 class="d-flex justify-content-end">Tout le jardin</h2>

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
                        <a class="nav-link" href="accueil3.html">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tableau3.html">Tableau</a>
                    </li>
                    <li class="nav-item"></li>
                    <a class="nav-link" href="contact3.html">Contact</a>
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

        <div class="row no-gutters mb-3">
            <section class="col-lg-8 col-sm-12 col-12 mb-3">
                <article>
                    <!--Création d'une partie texte-->
                    <h1>L'entreprise</h1>
                    <p>Notre entreprise familiale met tout son savoir-faire à votre disposition dans le domaine du jardin et du paysagisme.</p>
                </article>
                <p>Créée il y a 70 ans, notre entreprise vend fleurs, arbustes, matériel à main et motorisés.</p>
                <p>Implantés à Amiens, nous intervenons dans tout le département de la Somme : Albert, Doullens, Péronne, Abbeville, Corbie </p>
                <article>
                    <h1>Qualité</h1>
                    <p>Nous mettons à votre disposition un service personnalisé, avec 1 seul interlocuteur durant tout votre projet.</p>
                    <p>Vous serez séduit par notre expertise, nos compétences et notre sérieux.</p>
                </article>
                <article>
                    <h1>Devis gratuit</h1>
                    <p>Vous pouvez bien sûr contacter pour de plus amples informations ou pour une demande d’intervention. Vous souhaitez un devis ? Nous vous le réalisons gratuitement.</p>
                </article>
            </section>
            <!--gestion du style de la collone de droite-->
            <aside class="col-lg-4 col-sm-12 col-12" style="background-color: hsl(44, 100%, 50%);">
                <h1>[Colonne de droite]</h1>
            </aside>
        </div>



        <footer>
            <!--creation d'un pied de page sous forme de liste-->
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
        <!--permet d'integrer la feuille externe de java script,on l'applique àvant la fermeture de la balise body et non dans head pour optimiser l'ergonomie de la page web-->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js " integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n " crossorigin="anonymous "></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js " integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo " crossorigin="anonymous "></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js " integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6 " crossorigin="anonymous "></script>
</body>

</html>