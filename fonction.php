<?php

    include("connexion.php");

    function somme($conn, $table){
        $sql = "SELECT SUM(lfr2024) as somme2024, SUM(lf2025) as somme2025 from $table";
        $resultat = mysqli_query($conn, $sql);

        
             if($resultat && $row = $resultat -> fetch_assoc()){
               return [
                "2024"=> $row['somme2024'],
                "2025"=>$row['somme2025']
               ];

            }else{
                return[
                    "2024" => 0,
                    "2025" => 0

                ];
            }
        }

       

    


?>