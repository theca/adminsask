<?php

if($_POST['del_id'])
{
	$id = $_POST['del_id'];	
	
        try{
            $stmt=$bdd->prepare("DELETE FROM Client WHERE ID_client=:id");
            if($stmt->execute(array(':id'=>$id))){
                echo "Successfully Added";
            }
            else {
                echo "Query Problem";
            }
        }
        catch(PDOException $e){
            echo $e->getMessage();
        }
            
		
}
?>