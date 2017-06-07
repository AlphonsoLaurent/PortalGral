// JavaScript Document
/*************************************************************************/
/**********************CREA ELEMENTOS DE TIPOS OBJECTOS*******************/
/*************************************************************************/
(function(){
	if (typeof Object.create !== 'function') {
		  Object.create = function (o) {
		    function F() {
		    }
		    F.prototype = o;
		    return new F();
		  };
		}
}());

 

var CommonsNumber = Object.create({
	formatoMoneda: function(amount, decimals){
		if(decimals == undefined || decimals == ""){			
			decimals = 2;
		}
	    amount += ''; // por si pasan un numero en vez de un string
	    amount = parseFloat(amount.replace(/[^0-9\.]/g, '')); // elimino cualquier cosa que no sea numero o punto
	    decimals = decimals || 0; // por si la variable no fue fue pasada
	    // si no es un numero o es igual a cero retorno el mismo cero
	    if (isNaN(amount) || amount === 0) 
	        return parseFloat(0).toFixed(decimals);
	    // si es mayor o menor que cero retorno el valor formateado como numero
	    amount = '' + amount.toFixed(decimals);
	    var amount_parts = amount.split('.'),
	        regexp = /(\d+)(\d{3})/;
	    while (regexp.test(amount_parts[0]))
	        amount_parts[0] = amount_parts[0].replace(regexp, '$1' + ',' + '$2');
	    return "$"+amount_parts.join('.');
	} 
}); 
  



/**PETICIONES DE CONSULTA**/
var ObjectRequest = Object.create({
	getHourMinSec: function (){
		var fecha= new Date();
		var horas= fecha.getHours();
		var minutos = fecha.getMinutes();
		var segundos = fecha.getSeconds();
		return ''+horas+':'+minutos+':'+segundos+''; 
	},
	getDate: function (){
		var fecha= new Date();
		var fAlreves = fecha.toJSON().split("T")[0];
		var dia= fAlreves.split("-")[2];
		var mes = fAlreves.split("-")[1];
		var anio = fAlreves.split("-")[0];
		return ''+dia+'/'+mes+'/'+anio+' '; 
	},
	getHoraLLamadaPeticion:function(){
		var tiempo = ObjectRequest.getDate() +ObjectRequest.getHourMinSec();
		return tiempo;
	}, 
	angularAjax: function($http, urlPeticion, parameters, fnResponse){
		 $http({
		        method : "POST",
		        url : urlPeticion,
		        data:parameters,
		        params:parameters
		    }).then(function mySuccess(response) {
		    	fnResponse(response);
		    }, function myError(response) {
		        $scope.myWelcome = response.statusText;
		    });
	}
});
 