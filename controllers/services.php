<?php

    $allService=  Service::getAllClientService(3);
    print_r($allService);
    $smarty->assign('allService', $allService);
    
    
?>