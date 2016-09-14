<?php
class Client
{
    public function getAll(){
        global $bdd;
        $clients = $bdd->query('SELECT * From Client')->fetchAll(PDO::FETCH_ASSOC);
        return $clients;
    }
    public function getOne($id) {
        $client =  $bdd->query('SELECT * FROM Client WHERE id='.ID_client.' ')->fetchAll(PDO::FETCH_ASSOC);
        return $client;
    }
    public function add($data){
        global $bdd;
        $insert=$bdd->exec('INSERT INTO Client(Nom, Adress, Code_postal, Ville) VALUES('.$data['Nom'].', '.$data['Adresse'].', '.$data['Code_postal'].', '.$data['Ville'].')') ;
        return ($insert);
    }
    public function delete($id) {
        
    }
}
?>
