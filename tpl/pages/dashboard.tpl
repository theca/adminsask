{if $smarty.session.utilisateur==true} 
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
            <form role="form">
                <div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Nouveau chantier</li>
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
                                        

                                            <div class="form-group">
                                                    <label>Titre du chantier</label>
                                                    <input class="form-control" placeholder="Ecrire la désignation du chantier">
                                            </div>
                                            <div id="lot" class="form-group">
                                                    <label>Premier Lot</label>
                                                    <input class="form-control" placeholder="Numéro du lot"></br>
                                                    <input class="form-control" placeholder="Désignation du lot">
                                            </div>
                                             <div class="form-group">
                                                <div id="addplus_lot" type="add" class="btn btn-default"><svg class="sizeplus glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg>Ajouter un Lot</div>
                                             </div>
                                            <div class="form-group">
                                                    <label FOR="datepicker">Date der remise de dossier: </label>
                                                    <input class="form-control" id="datepicker1" placeholder="Cliquer pour séléctionner une date"<br />
                                            </div>
                                        
                                    </div>
                                </div>
                            </div>
			</div><!-- /.col-->
                        <div class="row">
			<div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">Client</div>
                                <div class="panel-body">
                                    <div class="col-md-12">
                                        

                                            <div class="form-group">
                                                    <label>Client</label>
                                                    <select class="form-control">
                                                            <option>Option 1</option>
                                                            <option>Option 2</option>
                                                            <option>Option 3</option>
                                                            <option>Option 4</option>
                                                    </select>
                                            </div>
                                            <div class="form-group">
                                                <div id="addplus" class="btn btn-default addplus"><svg class="sizeplus glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg>Ajouter un client</div>
                                                <div id="addplus" style="display: none" class="btn btn-default addplus"><svg class="sizeplus glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg>Reduire</div>
                                                
                                            </div>
                                            <div id="addform" class="hiddenform">
                                                
                                                <div class="form-group">
                                                        <label>Nom du client</label>
                                                        <input class="form-control" placeholder="Ex: Ville de Mulhouse">
                                                </div>
                                                <div class="form-group">
                                                        <label>Adresse</label>
                                                        <input class="form-control" placeholder="Ex: 1 avenue Colmar">
                                                </div>
                                                <div class="form-group">
                                                        <label>Commune</label>
                                                        <input class="form-control" placeholder="Ex: Mulhouse">
                                                </div>
                                                <div class="form-group">
                                                        <label>Code postale</label>
                                                        <input class="form-control" placeholder="Ex: 682100">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                    <label>Service</label>
                                                    <select class="form-control">
                                                            <option>Option 1</option>
                                                            <option>Option 2</option>
                                                            <option>Option 3</option>
                                                            <option>Option 4</option>
                                                    </select>
                                            </div>
                                            <div class="form-group">
                                                <div id="addplus_service" type="add" class="btn btn-default addplus_service"><svg class="sizeplus glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg>Ajouter un service</div>
                                                <div id="addplus_service" style="display: none" class="btn btn-default addplus_service"><svg class="sizeplus glyph stroked plus sign"><use xlink:href="#stroked-plus-sign"/></svg>Reduire</div>
                                            </div>
                                            <div id="addform_service" class="hiddenform">
                                                <div class="form-group" id="addform" class="hiddenform">
                                                            <label>Ajouter un nouveau service</label>
                                                            <input class="form-control" placeholder="Ex: service des eaux">
                                                </div>
                                            </div>
                                        
                                    </div>
                                </div>
                            </div>
			</div><!-- /.col-->
                        <div class="col-lg-6">
				<div class="panel panel-default">
                                    <div class="panel-heading">Composition des envelloppes</div>
                                    <div class="panel-body">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Checkboxes</label>
                                                <div class="checkbox">
                                                        <label>
                                                                <input type="checkbox" value="">Checkbox 1
                                                        </label>
                                                </div>
                                                <div class="checkbox">
                                                        <label>
                                                                <input type="checkbox" value="">Checkbox 2
                                                        </label>
                                                </div>
                                                <div class="checkbox">
                                                        <label>
                                                                <input type="checkbox" value="">Checkbox 3
                                                        </label>
                                                </div>
                                                <div class="checkbox">
                                                        <label>
                                                                <input type="checkbox" value="">Checkbox 4
                                                        </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Checkboxes</label>
                                                <div class="checkbox">
                                                        <label>
                                                                <input type="checkbox" value="">Checkbox 1
                                                        </label>
                                                </div>
                                                <div class="checkbox">
                                                        <label>
                                                                <input type="checkbox" value="">Checkbox 2
                                                        </label>
                                                </div>
                                                <div class="checkbox">
                                                        <label>
                                                                <input type="checkbox" value="">Checkbox 3
                                                        </label>
                                                </div>
                                                <div class="checkbox">
                                                        <label>
                                                                <input type="checkbox" value="">Checkbox 4
                                                        </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->
            </form>	
	</div><!--/.main-->
        <script>
        
        </script>
{/if}