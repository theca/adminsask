<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
            
    <div class="row">
            <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active">Icons</li>
            </ol>
    </div><!--/.row-->

    <div class="row">
            <div class="col-lg-12">
                    <h1 class="page-header">Nouveau chantier</h1>
            </div>
    </div><!--/.row-->
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">Chantier</div>
            <div class="panel-body">
                <div class="col-md-12">
                     {foreach from=$allClients item=client}
                        {$client.Nom}<br>
                        {$client.Adresse}<br>
                        {$client.Code_postal}<br>
                        {$client.Ville}<br>
                    {/foreach}                                       
                </div>
            </div>
        </div>
    </div><!-- /.col-->
