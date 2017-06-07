<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="app">
  <head>
    <link href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="configuration/css/bootstrap-theme.css" rel="stylesheet">
    <!-- font icon -->
    <link href="configuration/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"> 
	
	<link href="configuration/css/style.css" rel="stylesheet">
    <link href="configuration/css/style-responsive.css" rel="stylesheet" />
 

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    
    <script src="configuration/libs-custom/fns-generics.js"></script>
    <script src="configuration/js-catalogos/catalogos.js"></script>
    <script src="//angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    
  </head>
  <body>
     <div ng-controller="OpCatalogo">
		<div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<section class="panel"> <header class="panel-heading">
			Forma de catalogo </header>
			<div class="panel-body">
				<div class="form">
					<form class="form-validate form-horizontal" id="feedback_form" ng-submit="agregarCatalogo()">
						<div class="form-group ">
							<label for="descripcion" class="control-label col-lg-2">Descripción<span class="required">*</span></label>
							<div class="col-lg-10">
								<input class="form-control" id="descripcion" name="descripcion" ng-model="descripcion" minlength="5" type="text" required />
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<button class="btn btn-primary" type="submit">Guardar</button>
								<button class="btn btn-default" type="button">Cancelar</button>
							</div>
						</div>
					</form>
				</div>
			</div> 
			<table class="table table-striped table-advance table-hover" at-table at-paginated at-list="list" at-config="config">
				<thead>
					<tr>
						<th><i class="icon_profile"></i> #</th>
						<th><i class="icon_book"></i> <a href=""
							ng-click="OrdenarPor('descripcion')">Descripción</a> <span
							class="caret" style="cursor: ponter;"
							ng-click="OrdenarPor('descripcion')"></span></th>
						<th><i class="icon_calendar"></i> Fecha alta</th>
						<th><i class="icon_calendar"></i> Fecha modificación</th>
						<th>
						<!-- <a class="btn btn-primary" href="#"><i
								class="icon_plus_alt2"></i>Agregar</a> -->
						</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="catalogo in registros.slice(((currentPage-1)*itemsPerPage), ((currentPage)*itemsPerPage)) | orderBy:ordenSeleccionado | filter:buscar">
						<td>{{catalogo.idCatalogo}}</td>
						<td>{{catalogo.descripcion}}</td>
						<td>{{catalogo.fechacreacion | date:'fullDate' }}</td>
						<td>{{catalogo.fechamodificacion | date:'fullDate' }}</td>
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
	</div>
	</div>
  </body>
</html>