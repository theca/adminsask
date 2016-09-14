<?php

class Membres
{
    //Récupérer toutes les offres
    public function getAll()
    { 
      //On définit la bdd pour la fonction
      global $bdd;
      $membres = $bdd->query('SELECT * FROM membres')->fetchAll(PDO::FETCH_OBJ);
      return ($membres);
    }

    //Récupérer plus d'info sur 1 offre
    public function getOne($id_membre)
    {
      global $bdd;
      $membre = $bdd->query('SELECT * FROM membres WHERE membres.id = '.$id_membre.' ')->fetch(PDO::FETCH_OBJ);
      return ($membre);
    }
    public function getAuth($login,$password)
    {
          global $bdd;
          $requete="SELECT *
                  FROM membres
                  WHERE nom_utilisateur = '".$login."'
                  AND mot_de_passe = '".$password."'";
          $resultats = $bdd -> query($requete);
          $ligne = $resultats->fetch(PDO::FETCH_OBJ);
      return ($ligne);
    }

}

?>
