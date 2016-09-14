<?php
if (!isset($_SESSION['utilisateur']))
	{
		header('Location: ?page=login');
	}
 else
 {}
?>

