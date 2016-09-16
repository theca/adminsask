<?php
if($_GET['id_client'])
{
    $id = $_GET['id_client'];
    $row= Service::getAllClientService($id);
    $smarty->assign('row', $row);
    $smarty->display(_TPL_ . 'pages/allcs.tpl');
    
}

?>