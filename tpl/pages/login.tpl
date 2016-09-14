<!-- Mixins-->
<!-- Pen Title-->
{if $smarty.session.utilisateur==true}
    
{else}
<div class="pen-title">
  <h1>SASK LOGIN</h1>
</div>
<div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    <form action="?page=login" method="post" name="login">
     
      <div class="input-container">
        <input type="text" name="login" id="login" required="required"/>
        <label for="login">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" name="password" id="password" required="required"/>
        <label for="password">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Go</span></button>
      </div>
      <div class="footer"><a href="#">Forgot your password?</a></div>
    </form>
    
{foreach from=$alloffers item=offer}
     

       {$offer.nom_utilisateur}
       

{$offer.mot_de_passe}

       Voir plus d'info
     

{/foreach}

  </div>
 </div>
 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 <script src="js/login.js"></script>
 {/if}