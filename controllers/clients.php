<?php
  if (!isset($_SESSION['utilisateur']))
	{
		header('Location: ?page=login');
	}
 else
 {
    $allClients= Client::getAll();
    $smarty->assign('allClients', $allClients);
    $allcs= Service::getAll();
    $smarty->assign('allcs', $allcs);


         /*function store($file,$datas){file_put_contents($file,json_encode($datas));}
         function unstore($file){return json_decode(file_get_contents($file),true);}
         
         store('web/table/clients.json',$allClients);*/
 } 
?>

