<?php
    include("connexion.php");
    include("fonction.php");

     $rubrique = somme ($conn, "rubrique");
    $institution = somme ($conn, "institution");
 


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <nav>
        <p>rubrique</p>
    <a href="rubrique.php"><?= number_format($rubrique['2025'])?></a><br>
      <p> institution</p>
    <a href="institution.php"><?= number_format($institution['2025'])?></a><br>
    
    </nav>

</body>
</html>