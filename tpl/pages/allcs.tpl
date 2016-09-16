
<table  id="serviceTable" class="table table-bordered table-striped table-hover table-responsive">
    <thead>
        <tr>
            <th>ID</th>
            <th>Service</th>
            <th>Client du service</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    {foreach from=$row item=r}
        <tr>
            <td>{$r.ID_service}</td>
            <td>{$r.Description}</td>
            <td>{$r.Nom}</td>
            
            <td align="center">
            <a id="{$r.ID_service}" class="edit-link" href="#" title="Edit">
            <svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"/></svg>
            </a></td>
            <td align="center"><a id="{$r.ID_service}" class="delete-link" href="#" title="Delete">
            <svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"/></svg>
            </a></td>
        </tr>
    {/foreach}
    </tbody>
</table>