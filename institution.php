<?php

     include("connexion.php");
    include("fonction.php");


  
    $institution = mysqli_query($conn, "SELECT * FROM institution");
  


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Institution</h1>
<table border="1">
<tr>
    <th>id</th>
    <th>nature_f</th>
    <th>Ifr2024</th>
    <th>Ifr2025</th>
</tr>
<?php while($row = mysqli_fetch_assoc($institution)): ?>
<tr>
    <td><?= $row['id']?></td>
    <td><?= htmlspecialchars($row['nom'])?></td>
    <td><?= $row['lfr2024']?></td>
    <td><?= $row['lf2025']?></td>
</tr>
<?php endwhile; ?>
</table>
    
</body>
</html>