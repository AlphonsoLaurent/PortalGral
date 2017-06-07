<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CatalogoDetalle</title>
	<link href="configuration/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="configuration/css/bootstrap-theme.css" rel="stylesheet">
    <!-- font icon -->
    <link href="configuration/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"> 
	
	<link href="configuration/css/style.css" rel="stylesheet">
    <link href="configuration/css/style-responsive.css" rel="stylesheet" />
 

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    
    <script src="configuration/libs-custom/fns-generics.js"></script>
    <script src="configuration/js-catalogos/catalogos-det.js"></script>
    <script src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body ng-controller="CatallogoDetalle">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <section class="panel">
                          <header class="panel-heading">
                              Detalle de catalogos
                          </header>
                          <div class="panel-body">
                                  <form class="form-validate form-horizontal" id="feedback_form" method="get" action="">
                          			<div class="form row col-md-12">
                                      <div class="form-group col-md-4">
                                          <label for="cname" class="control-label col-lg-2">Catalogo <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                          	 <select class="form-control" name="idCatalogo" id="idCatalogo" ng-model="Catalogo.model" ng-options="option.descripcion for option in Catalogos.options track by option.idCatalogo">
											      <option ng-repeat="catPrincipal in Catalogos.options" value="{{catPrincipal.idCatalogo}}" >{{catPrincipal.descripcion}}</option>
											  </select>
                                          </div>
                                      </div>
                                      <div class="form-group col-md-4">
                                          <label for="clave" class="control-label col-lg-2">Clave <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="clave" type="text" required ng-model="clave"/>
                                          </div>
                                      </div>
                                      <div class="form-group col-md-4">
                                          <label for="descripcion" class="control-label col-lg-2">Descripcion <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="descripcion" type="text" required ng-model="descripcion"/>
                                          </div>
                                      </div>
                              		</div>
                                    <div class="form-group row col-md-12">
										<div class="col-lg-offset-2 col-lg-10">
											<button class="btn btn-primary" type="submit">Guardar</button>
											<button class="btn btn-default" type="button">Cancelar</button>
										</div>
									</div>
                                  </form>
                          </div>
                          <table class="table table-striped table-advance table-hover" at-table at-paginated at-list="list" at-config="config">
							<thead>
								<tr>
									<th><i class="icon_profile"></i> #</th>
									<th><i class="icon_profile"></i> #</th>
									<th><i class="icon_book"></i> <a href=""
										ng-click="OrdenarPor('descripcion')">Descripción</a> <span
										class="caret" style="cursor: ponter;"
										ng-click="OrdenarPor('descripcion')"></span></th>
									<th><i class="icon_calendar"></i> Fecha alta</th>
									<th><i class="icon_calendar"></i> Fecha modificación</th>
								</tr>
							</thead>
							<tbody>
								<tr ng-repeat="catDetalle in CatalogosDets.slice(((currentPage-1)*itemsPerPage), ((currentPage)*itemsPerPage)) | orderBy:ordenSeleccionado | filter:buscar">
									<td>{{catDetalle.idCatDetalle}}</td>
									<td>{{catDetalle.idCatalogo}}</td>
									<td>{{catDetalle.descripcion}}</td>
									<td>{{catDetalle.fechacreacion | date:'fullDate' }}</td>
									<td>{{catDetalle.fechamodificacion | date:'fullDate' }}</td>
									<td>
										<div class="btn-group">
											<a class="btn" href="#">
												<i class="glyphicon glyphicon-pencil" ng-click="editar(this);"></i>
											</a> 
											<a class="btn" href="#" >
												<i class="glyphicon glyphicon-trash" ng-click="eliminar(this);"></i>
											</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
			<select ng-model="viewby" ng-change="setItemsPerPage(viewby)">
				<option>3</option>
				<option>5</option>
				<option>10</option>
			</select>
			<pagination 
						total-items="totalItems" 
						ng-model="currentPage" 
						ng-change="pageChanged()" 
						class="pagination-sm" 
						items-per-page="itemsPerPage">
			</pagination> 
            </section>
		</div>
</body>
</html>