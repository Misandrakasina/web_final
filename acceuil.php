
<?php
    include("connexion.php");
    include("fonction.php");

    $fiscale = somme ($conn, "fiscale");
    $Nfiscale = somme ($conn, "Nfiscale");
    $dons = somme ($conn, "dons");
    $douane = somme ($conn, "douane");

    $globaleRecette2024= $fiscale['2024']+$Nfiscale['2024']+$dons['2024']+$douane['2024'];
    $globaleRecette2025= $fiscale['2025']+$Nfiscale['2025']+$dons['2025']+$douane['2025'];



    $rubrique = somme ($conn, "rubrique");
    $institution= somme ($conn, "institution");

    $globaleDepense2024 = $rubrique['2024']+ $institution['2024'];
    $globaleDepense2025 = $rubrique['2025']+ $institution['2025'];








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
        <a href="recette.php"><?= $globaleRecette2025?></a>
        <a href="depense.php"><?= $globaleDepense2025?></a>

        
    </nav>
</body>
</html>