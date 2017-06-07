  angular.module('app', ['ui.bootstrap']).controller('OpCatalogo', function($scope, $locale, $http) {
	  
	  $scope.viewby = 5;
	  $scope.totalItems = 0;//$scope.registros.length;
	  $scope.currentPage = 1;
	  $scope.itemsPerPage = $scope.viewby;
	  $scope.maxSize = 5; //Number of pager buttons to show
	  $scope.esEdit = false;
	  $scope.setPage = function (pageNo) {
	    $scope.currentPage = pageNo;
	  };
 
	  $scope.setItemsPerPage = function(num) {
		  $scope.itemsPerPage = num;
		  $scope.currentPage = 1; //reset to first paghe
	  }  
	  
	$scope.registros=[];
	$scope.listCatalogos = function(){
		ObjectRequest.angularAjax($http, "getListCatalogos.do",null, function(response){
			$scope.actualizarList(response);
		});
	};
	$scope.listCatalogos();
	$scope.actualizarList = function(response){
		if(response.data != null){
    		$scope.registros = response.data.lstResponse;
    		$scope.totalItems = $scope.registros.length;
    	} 
	};
	
	$scope.catalogoVO ="";
	$scope.ordernarPor = function(orden){
		$scope.ordenSeleccionado = orden;
	};
	$scope.agregarCatalogo = function(){
		$scope.catalogoVO.descripcion = $scope.descripcion;
		$scope.catalogoVO.usuariocreacion = 'usrdesa';
		$scope.catalogoVO.usuariomodificacion = 'usrdesa';
		$scope.catalogoVO.activo = 1;
		$scope.catalogoVO.fechacreacion = new Date();
		$scope.catalogoVO.fechamodificacion = new Date();
		
		var catalogoSave = {
				descripcion:$scope.descripcion,
		};
		if( $scope.esEdit == true){
			catalogoSave = $scope.catalogoVO;
			$scope.esEdit = false;
		}else{
			catalogoSave = {
					usuariocreacion : 'usrdesa',
					usuariomodificacion : 'usrdesa',
					activo: 1,
					fechacreacion : new Date(),
					fechamodificacion : new Date()
			};
		}
		catalogoSave.descripcion = $scope.descripcion;
		ObjectRequest.angularAjax($http, "saveCatalogo.do",catalogoSave, function(response){
			$scope.actualizarList(response);
			$scope.descripcion = "";
		});
	};
	
	
	$scope.eliminar = function(athis){
		var catalogoVO = athis.catalogo;
		ObjectRequest.angularAjax($http, "deleteCatalogo.do", catalogoVO, function(response){
			$scope.listCatalogos();
		});
	};
	
	$scope.editar = function(athis){ 
		 $scope.esEdit = true; 
		$scope.descripcion = athis.catalogo.descripcion; 
		$scope.catalogoVO = athis.catalogo;
	};
	
	  
});