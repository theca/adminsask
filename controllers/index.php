<?php
if (isset($_SESSION['utilisateur']) && $_SESSION['utilisateur']=true)
    header ('Location: ?page=dashboard');
else
    $smarty->display(_TPL_ . 'pages/login.tpl');