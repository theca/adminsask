<style type="text/css">
#dis{
	display:none;
}
</style>
<div id="dis">
</div>
 <form method='post' id='client-UpdateForm' action='#'>
     {foreach from=$row item=r}

    <table class='table table-bordered'>
 		<input type='hidden' name='id' value='{$r.ID_client}' />
        <tr>
            <td>Nom</td>
            <td><input type='text' name='Nom' class='form-control' value='{$r.Nom}' required></td>
        </tr>
 
        <tr>
            <td>Adresse</td>
            <td><input type='text' name='Adresse' class='form-control' value='{$r.Adresse}' required></td>
        </tr>
 
        <tr>
            <td>Code postal</td>
            <td><input type='text' name='Code_postal' class='form-control' value='{$r.Code_postal}' required></td>
        </tr>
        <tr>
            <td>Ville</td>
            <td><input type='text' name='Ville' class='form-control' value='{$r.Ville}' required></td>
        </tr>
 
        <tr>
            <td colspan="2">
            <button type="submit" class="btn btn-primary" name="btn-update" id="btn-update">
    		<span class="glyphicon glyphicon-plus"></span> Save Updates
			</button>
            </td>
        </tr>
    </table>
        {/foreach}
</form>
     
