
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <title>PHP - Base</title>
        <meta name="viewport" content="width=device-width, initial-scal=1.0, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>

    <body>  
   
        <header>
              <!-- formulaire de la calculatrice-->
              <form method="post" action="phase5.php">
                <input name="nombre1" type="text" class="form-group"  />
                <select name="operation">
                    <option value="aditionner">+</option>
                    <option value="soustraire">-</option>
                    <option value="multiplier">*</option>
                    <option value="diviser">/</option>
                </select>
                <input name="nombre2" type="text" class="form-group"  />
                <input name="calculer" type="submit" value="calculer" class="btn btn-primary" />
            </form>

        <div class="container" >
<?php
    //si le calcul est demandé.
    if (isset($_POST['calculer'])){
        
        if (is_numeric($_POST['nombre1']) && is_numeric($_POST['nombre1'])){
            
            if ($_POST['operation'] == 'aditionner'){
                $total =$_POST['nombre1'] + $_POST['nombre2'];
            }

            if ($_POST['operation'] == 'soustraire'){
                $total =$_POST['nombre1'] - $_POST['nombre2'];
            }

            if ($_POST['operation'] == 'multiplier'){
                $total =$_POST['nombre1'] * $_POST['nombre2'];
            }

            if ($_POST['operation'] == 'diviser'){
                $total =$_POST['nombre1'] / $_POST['nombre2'];
            }
                
                echo "<h1>{$_POST['nombre1']} {$_POST['operation']} {$_POST['nombre2']} equals {$total}</h1>";
        }else{
            
            echo "Numeric Value are required";
        }
    }
?>
       
        <footer>
        </footer>

      
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>  
    </body>
</html>