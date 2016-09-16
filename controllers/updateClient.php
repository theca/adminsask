<?php
    if($_POST)
	{
		$id = $_POST['id'];
		$c_nom = $_POST['Nom'];
		$c_adresse = $_POST['Adresse'];
		$c_cp = $_POST['Code_postal'];
                $c_ville = $_POST['Ville'];
		
		$stmt = $bdd->prepare("UPDATE Client SET Nom=:no, Adresse=:ad, Code_postal=:cp, Ville=:vi WHERE ID_client=:id");
		$stmt->bindParam(":no", $c_nom);
		$stmt->bindParam(":ad", $c_adresse);
		$stmt->bindParam(":cp", $c_cp);
		$stmt->bindParam(":vi", $c_ville);
                $stmt->bindParam(":id", $id);
                
		
		if($stmt->execute())
		{
			echo "Successfully updated";
		}
		else{
			echo "Query Problem";
		}
	}
?>

