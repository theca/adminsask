<?php

class Offers
{
    //Récupérer toutes les offres
    public function getAll()
    {
      //On définit la bdd pour la fonction
      global $bdd;
      $offers = $bdd->query('SELECT * FROM offers')->fetchAll(PDO::FETCH_ASSOC);
      return ($offers);
    }

    //Récupérer plus d'info sur 1 offre
    public function getOne($id_offer)
    {
      global $bdd;
      $offer = $bdd->query('SELECT * FROM offers WHERE offers.id = '.$id_offer.' ')->fetch(PDO::FETCH_ASSOC);
      return ($offer);
    }

    //Ajouter une offre
    public function Add($data)
    {
      global $bdd;
      $insert = $bdd->exec('INSERT INTO offers(title, description) VALUES('.$data['title'].', '.$data['description'].')');
      return ($insert);
    }
}

?>