<?php
if ($_SESSION['utilisateur']==true)
	{
		header('Location: ?page=dashboard');
	}
 else
 {}
global $bdd;
//reuperer les variables saisie :login et pwd
$login = $_POST['login'];
$password = $_POST['password'];

try 
{
   $membre=  Membres::getAuth($login,$password);
   $id = $membre -> ID_membres;

   //test sur le numero de l'employe
   //si numero different de vide/null alors employe reconnu.
   if ($id != null) 
   {
        //On demarre la session que si l'employe est reconnu


        //On va stocker les infos de 'employe dans la session
        $_SESSION['utilisateur']=true; 
        $_SESSION['id'] = $ligne -> ID_membres;
        $_SESSION['nom_utilisateur'] = $ligne -> nom_utilisateur;

        header('Location: ?page=dashboard');


   }
   //sinon employe inconnu et donc redirection automatique vers accueil.
   else 
   {

      echo "erreur"  ;
      header('Location: ?page=login.php');//attention a la syntaxe: respecter la majusculet et les espaces.
   }            
}

catch (PDOException $erreur)
{
    echo ($erreur);

}

?>