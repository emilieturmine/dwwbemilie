<?php 
include("entete.php");
?>
<body>
    <div class="container-fluid">
        <header>

            <div class="row">
                <div id="logo" class="col-lg-8 d-none d-lg-block">
                    <img class="col-lg-8 d-none d-lg-block" src="logojarditou.jpg " alt="logo jarditou " title="logo jarditou " style="width: 150px;height:50px ">


                </div>
                <div id="slogan " class="col-lg-4 d-none d-lg-block ">

                    <h2 class="d-flex justify-content-end">Tout le jardin</h2>

                </div>
            </div>

        </header>
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

                <form class="form-inline my-2 my-lg-0" action="/action_page.php">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Votre promotion</button>
                </form>
            </div>
        </nav>
        <img src="promotion.jpg " class="w-100" alt="promotion en cours" title="promotion en cours">

        <div class="row no-gutters mb-3">
            <section class="col-lg-8 col-sm-12 col-12 mb-3">
                <article>
                    <h1>L'entreprise</h1>
                    <p>Notre entreprise familiale met tout son savoir-faire ?? votre disposition dans le domaine du jardin et du paysagisme.</p>
                </article>
                <p>Cr????e il y a 70 ans, notre entreprise vend fleurs, arbustes, mat??riel ?? main et motoris??s.</p>
                <p>Implant??s ?? Amiens, nous intervenons dans tout le d??partement de la Somme : Albert, Doullens, P??ronne, Abbeville, Corbie </p>
                <article>
                    <h1>Qualit??</h1>
                    <p>Nous mettons ?? votre disposition un service personnalis??, avec 1 seul interlocuteur durant tout votre projet.</p>
                    <p>Vous serez s??duit par notre expertise, nos comp??tences et notre s??rieux.</p>
                </article>
                <article>
                    <h1>Devis gratuit</h1>
                    <p>Vous pouvez bien s??r contacter pour de plus amples informations ou pour une demande d???intervention. Vous souhaitez un devis ? Nous vous le r??alisons gratuitement.</p>
                </article>
            </section>
            <aside class="col-lg-4 col-sm-12 col-12" style="background-color: hsl(44, 100%, 50%);">
                <h1>[Colonne de droite]</h1>
            </aside>
        </div>



        <footer>
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="mentionslegal.html ">Mentions l??gales</a>
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
        <?php 
include("pieddepage.php");
?>