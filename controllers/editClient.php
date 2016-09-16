<?php
if($_GET['edit_id'])
{
    $id = $_GET['edit_id'];
    $row= Client::getOne($id);        
    $smarty->assign('row', $row);
    $smarty->display(_TPL_ . 'pages/editc.tpl');
}

?>