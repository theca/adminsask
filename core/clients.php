<?php
class Client
{
    public function getAll(){
        global $bdd;
        $clients = $bdd->query('SELECT * From Client')->fetchAll(PDO::FETCH_ASSOC);
        return $clients;
    }
    public function getOne($id) {
        global $bdd;
        $client = "SELECT * FROM Client WHERE ID_client='".$id."' ";
        $resultat = $bdd->query($client);
        return $resultat;
    }
    public function add($data){
        global $bdd;
        $insert=$bdd->exec('INSERT INTO Client(Nom, Adresse, Code_postal, Ville) VALUES('.$data['Nom'].', '.$data['Adresse'].', '.$data['Code_postal'].', '.$data['Ville'].')') ;
        return ($insert);
    }
    public function delete($id) {
        global $bdd;
        $delete=$bdd->exec('DELETE * FROM Client WHERE ID_client='.$id.' ');
        return $delete;
    }
}
?>
