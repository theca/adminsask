{if $smarty.session.utilisateur==true}
    
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Icons</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Tables</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Advanced Table</div>
                                        <div class="panel-body">
                                        <button class="btn btn-info" type="button" id="btn-add"> <span class="glyphicon glyphicon-pencil"></span> &nbsp; Add Employee</button>
                                        <button class="btn btn-info" type="button" id="btn-view"> <span class="glyphicon glyphicon-eye-open"></span> &nbsp; View Employee</button>
                                        <hr />
                                        <style type="text/css">
                                            #dis{ display:none;}
                                        </style>
                                        <div id="dis">
                                                <!-- here message will be displayed -->
                                        </div>
                                        <div class="content-loader">

                                            <table  id="clientTable" class="table table-bordered table-striped table-hover table-responsive">
                                            <thead>
                                            <tr>
                                            <th>ID</th>
                                            <th>Nom</th>
                                            <th>Adresse</th>
                                            <th>Code_postal</th>
                                            <th>Ville</th>
                                            <th></th>
                                            <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            {foreach from=$allClients item=c}
                                                            <tr>
                                                            <td>{$c.ID_client}</td>
                                                            <td>{$c.Nom}</td>
                                                            <td>{$c.Adresse}</td>
                                                            <td>{$c.Code_postal}</td>
                                                            <td>{$c.Ville}</td>
                                                            <td align="center">
                                                            <a id="{$c.ID_client}" class="edit-link" href="#" title="Edit">
                                                            <svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"/></svg>
                                                </a></td>
                                                            <td align="center"><a id="{$c.ID_client}" class="delete-link" href="#" title="Delete">
                                                            <svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"/></svg>
                                                </a></td>
                                                            </tr>
                                            {/foreach}
                                            </tbody>
                                            </table>

                                        </div>

                                    </div>
				</div>
			</div>
		</div><!--/.row--><div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Advanced Table</div>
                                        <div class="panel-body">
                                            <div>
                                                <p>Choisissez un client pour afficher ses services</p>
                                                
                                                <select class="selectClient">
                                                    <option>--Choisissez un client--</option>
                                                    {foreach from=$allClients item=c}
                                                    <option value="{$c.ID_client}">{$c.Nom}</option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        <button class="btn btn-info" type="button" id="btn-add-service"> <span class="glyphicon glyphicon-pencil"></span> &nbsp; Add Employee</button>
                                        <button class="btn btn-info" type="button" id="btn-view-service"> <span class="glyphicon glyphicon-eye-open"></span> &nbsp; View Employee</button>
                                        <hr />

                                        <div class="service-loader">

                                            <table  id="serviceTable" class="table table-bordered table-striped table-hover table-responsive">
                                            <thead>
                                            <tr>
                                            <th>ID</th>
                                            <th>Service</th>
                                            <th>Nom du client</th>                                            
                                            <th></th>
                                            <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            {foreach from=$allcs item=a}
                                                            <tr>
                                                            <td>{$a.ID_service}</td>
                                                            <td>{$a.Description}</td>
                                                            <td>{$a.FK_client}</td>                                                            
                                                            <td align="center">
                                                            <a id="{$a.ID_service}" class="edit-link" href="#" title="Edit">
                                                            <svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"/></svg>
                                                </a></td>
                                                            <td align="center"><a id="{$a.ID_service}" class="delete-link" href="#" title="Delete">
                                                            <svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"/></svg>
                                                </a></td>
                                                            </tr>
                                            {/foreach}
                                            </tbody>
                                            </table>

                                        </div>

                                    </div>
				</div>
			</div>
		</div><!--/.row-->	
	</div><!--/.main-->
 <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
        <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
	<script src="web/js/bootstrap.min.js"></script>

{/if}