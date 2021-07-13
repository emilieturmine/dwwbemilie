<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <meta name="fil rouge " content="dictionnaire de donnée">
    <title>dictionnaire de donnée</title>

</head>

<body>

    <h1>DICTIONNAIRE DE DONNEES </h1><br>

    <p>

        <!--table catalogues: -->

        id catalogues int pk<br>
        date derniere mise a jour datetime<br>
        


        <!--table produits:-->

        ID produits int pk<br>
        nom produit varchar(20)<br>
        
        
        description produit text<br>
        prix achat hors taxe produit decimal<br>
        poids produit int<br>
        dimension produit decimal<br>
        nombre pieces produits int<br>
        marque produit varchar (20)<br>
        
        photos produit text ou varchar(50)<br>
        stock produit int<br>
        stock alerte produits int

        <!--Table fournisseur:-->

        ID fournisseurs int pk<br>
        type fournisseur varchar (10)<br>
        nom fournisseur varchar (20)<br>
        num siret fournisseur int<br>
        adresse fournisseur varchar (50)<br>
        ville fournisseur varchar (20)<br>
        pays fournisseur varchar (20)<br>
        email fournisseur varchar (20)<br>
        contact fournisseur varchar(20)<br>
        code postal fournisseur int<br>

        <!--table categories: -->

        ID categories pk int<br>
        nom categories varchar (20)<br>
        description categories text<br>

        <!--table sous categories: -->

        ID sous categories int pk<br>
        nom sous categories varchar(20)<br>
        description sous categories text<br>

        <!--table entreprise: -->

        id entreprise pk int<br>
        nom entreprise varchar(20)<br>
        num siret entreprise int<br>
        raison sociale entreprise varchar(10)<br>
        adresse entreprise varchar(50)<br>
        code postal entreprise int<br>
        ville entreprise varchar(20)<br>
        pays entreprise varchar(20)<br>
        nb employes entreprise int<br>
        chiffre d'affaire entreprise int<br>

        <!--table services : -->

        id service entreprise int pk<br>
        nom service varchar(20)<br>
        description service text<br>
        nb_employees dans le service int<br>
        droits administratif service varchar(20)<br>
        adresse service varchar(50)<br>
        code postal service int<br>
        ville service varchar(20)<br>
        pays service varchar(20)<br>
        emil service varchar(50)<br>

        <!--table employées: -->

        id employes pk int<br>
        nom employes varchar(20)<br>
        prenom employes varchar(20)<br>
        age employes int<br>
        email employes varchar (20)<br>
        numero securité social employes int<br>
        rib employes varchar (20) <br>
        metier employes varchar(20)<br>
        description poste employes text<br>
        date debut contrat employes date<br>
        date fin contrat employes date<br>
        type contrat employes varchar (10)<br>
        photo employes<br>
        nb enfant employes int<br>
        anciennete employes int<br>
        salaire employes int<br>
        primes employes int<br>
        
        adresse employes varchar(20)<br>
        cp employes int<br>
        ville employes varchar(20)<br>
        pays employes varchar (20)<br>
        numero telephone pro employes int<br>
        numero telephone part employes int <br>
        contact urgence nom employes varchar(20)<br>
        contact urgence prenom employes varchar(20)<br>
        contact urgence telephone pro employes int<br>
        contact urgence telephone part employes int<br>

        <!--table client : -->

        reference client int<br>
        nom client varchar (20)<br>
        prenom client varchar(20)<br>
        adresse client varchar (20)<br>
        cp client int<br>
        ville client varchar (20)<br>
        pays client varchar (20)<br>
        email client varchar(20)<br>
        id employes int <br>
        coefficient vente client int<br>
        adresse facturation client varchar (20)<br>
        cp facturation client varchar(20)<br>
        ville facturation client varchar(20)<br>
        pays facturation client varchar (20)<br>
        historique client varchar (20)<br>

        <!--table facture :-->

        id facture pk int<br>
       
        reduction suplementaire client int<br>
        adresse livraison client varchar (50)<br>
        cp livraison client varchar (50)<br>
        ville livraison client varchar (20)<br>
        pays livraison client varchar (20)<br>
        
        remise ht int <br>
        date reglement date<br>
        type reglement varchar(20)<br>
        date livraison date<br>