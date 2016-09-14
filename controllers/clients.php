<?php
    $allClients= Client::getAll();
    $smarty->assign('allClients', $allClients);
?>

