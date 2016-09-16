{if $smarty.session.utilisateur==true}
    
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        
     

      <tbody>
        {foreach from=$allService item=c}
                        <tr>
                        <td>{$c.Description}</td>
                        <td>{$c.ID_service}</td>
                        <td>{$c.FK_client}</td>
                        <td></td>    
                        </tr>
        {/foreach}
        </tbody>
      
       



       
     


</div>
{/if}