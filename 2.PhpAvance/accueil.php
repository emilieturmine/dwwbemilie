<?php
include ("head.php");
?>
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
                        <a class="nav-link" href="index.php">Accueil</a>
                    </li>
                    <li class="nav-item "></li>
                    <a class="nav-link" href="form_ident.php">Mon compte</a>
                    </li>
                    <li class="nav-item "></li>
                    <a class="nav-link" href="form_inscription.php">Inscription</a>
                    </li>
                    <li class="nav-item "></li>
                    <a class="nav-link" href="form_contact.php">Contact</a>
                    </li>
                </ul>            
            </div>
        </nav>
        <img src="jarditou_photos/promotion.jpg " class="w-100" alt="promotion en cours" title="promotion en cours">

             

        <div class="row no-gutters mb-3">
            <section class="col-lg-8 col-sm-12 col-12 mb-3">
                <article>
                    <!--Création d'une partie texte-->
                    <h1>L'entreprise</h1>
                    <p>Notre entreprise familiale met tout son savoir-faire à votre disposition dans le domaine du
                        jardin et du paysagisme.</p>
                </article>
                <p>Créée il y a 70 ans, notre entreprise vend fleurs, arbustes, matériel à main et motorisés.</p>
                <p>Implantés à Amiens, nous intervenons dans tout le département de la Somme : Albert, Doullens,
                    Péronne, Abbeville, Corbie </p>
                <article>
                    <h1>Qualité</h1>
                    <p>Nous mettons à votre disposition un service personnalisé, avec 1 seul interlocuteur durant tout
                        votre projet.</p>
                    <p>Vous serez séduit par notre expertise, nos compétences et notre sérieux.</p>
                </article>
                <article>
                    <h1>Devis gratuit</h1>
                    <p>Vous pouvez bien sûr contacter pour de plus amples informations ou pour une demande
                        d’intervention. Vous souhaitez un devis ? Nous vous le réalisons gratuitement.</p>
                </article>
            </section>
            <!--gestion du style de la collone de droite-->
            <aside class="col-lg-4 col-sm-12 col-12" style="background-color: hsl(44, 100%, 50%);">
                <h1>[Colonne de droite]</h1>
            </aside>
        </div>
            </div>
       <?php include ("pieddepage.php");?>