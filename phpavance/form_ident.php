<?php
session_start();

    include ("head.php"); 
    include( "connexion_bdd.php"); 

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
                        <a class="nav-link" href="index.php">Accueil</a>
                    </li>
                    <li class="nav-item "></li>
                    <a class="nav-link" href="form_contact.php">Contact</a>
                    </li>
                </ul>            
            </div>
        </nav>
        <img src="jarditou_photos/promotion.jpg " class="w-100" alt="promotion en cours" title="promotion en cours">



<h1 class= "text-center" >Identification
<a href='form_inscription.php' >inscription </a></h1>
<form id="form" name="form" method="POST" class="form-group" action="script_ident.php" >

<label for="uti_ident" class="text_center">Identifiant </label>
      <br>
        <input  class="form-control" type="text" name= "uti_ident" size="10" maxlength="10" >
      <br>

<label for="uti_mdp" class="text_center">Mot de passe </label>
      <br>
        <input  class="form-control" type="text" name= "uti_mdp" size="10" maxlength="10">
      <br>
      <button type="submit" class="btn btn-dark" value="Envoyer"  name='valider' id="bouton_envoi">valider </button>
      