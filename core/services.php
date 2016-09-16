<?php
Class Service{
    
     public function getAll(){
        global $bdd;        
        $services = $bdd->query('SELECT * FROM Service')->fetchAll(PDO::FETCH_ASSOC);
        return $services;
    }
    public function getOne($id){
        global $bdd;
        $service=$bdd->query("SELECT * FROM Service, Client WHERE ID_service='".$id."' AND FK_client= ID_client ")->fetch(PDO::FETCH_ASSOC);
        return $service;
    }
    public function getAllClientService($id_client){
        global $bdd;
        $acservices=$bdd->query("SELECT * FROM Service, Client WHERE FK_client='".$id_client."' AND FK_client=ID_client")->fetchAll(PDO::FETCH_ASSOC);
        return $acservices;
    }
}
?>