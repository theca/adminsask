<?php

	
	if($_POST)
	{
		$c_nom = $_POST['Nom'];
		$c_adresse = $_POST['Adresse'];
		$c_cp = $_POST['Code_postal'];
                $c_ville = $_POST['Ville'];
		
		try{
			
			$stmt = $bdd->prepare("INSERT INTO Client(Nom,Adresse,Code_postal,Ville) VALUES(:cnom, :cadr, :ccp, :cvil)");
			$stmt->bindParam(":cnom", $c_nom);
			$stmt->bindParam(":cadr", $c_adresse);
			$stmt->bindParam(":ccp", $c_cp);
                        $stmt->bindParam(":cvil", $c_ville);
			
			if($stmt->execute())
			{
				echo "Successfully Added";
                                
			}
			else{
				echo "Query Problem";
			}	
		}
		catch(PDOException $e){
			echo $e->getMessage();
		}
	}

?>

