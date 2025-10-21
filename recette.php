<?php
    include("connexion.php");
    include("fonction.php");

     $fiscale = somme ($conn, "fiscale");
    $Nfiscale = somme ($conn, "Nfiscale");
    $dons = somme ($conn, "dons");
    $douane = somme ($conn, "douane");


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
        <p>fiscale</p>
    <a href="fiscale.php"><?= number_format($fiscale['2025'])?></a><br>
      <p>non fiscale</p>
    <a href="Nfiscale.php"><?= number_format($Nfiscale['2025'])?></a><br>
      <p>dons</p>
    <a href="dons.php"><?= number_format($dons['2025'])?></a><br>
      <p>douane</p>
    <a href="douane.php"><?= number_format($douane['2025'])?></a><br>
    </nav>

</body>
</html>