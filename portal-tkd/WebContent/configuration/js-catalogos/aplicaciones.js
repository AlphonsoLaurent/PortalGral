var Apps = Object.create({
	tipoReporte:"",
	TREPORTE_STATUS:"por estatus",
	TREPORTE_ESPECIALIDAD:"por especialidad",
	idTabla :$('#detailsReportInvitados'),
	initTable: function(){
		$("#graphics").hide();
		$("#tblHead").hide();
		$("#detailsReportInvitados").show();
		Apps.idTabla.jtable({
		    title: 'PARTICIPACION MEDICOS',
		    paging: true, //Enable paging
		    pageSize: 10, //Set page size (default: 10)
		    sorting: true, //Enable sorting
		    openChildAsAccordion: true,
		    messages: {
		        serverCommunicationError: 'Ocurri&oacute; un error mientras se comunicaba con el servidor.',
		        loadingMessage: 'Cargando registros...',
		        noDataAvailable: 'Sin datos!',
		        addNewRecord: 'Agregar un registro',
		        editRecord: 'Editar registro',
		        areYouSure: 'Estas seguro?',
		        deleteConfirmation: 'Este registro sera eliminado. Est&aacute; seguro?',
		        save: 'Guardar',
		        saving: 'Guardando...',
		        cancel: 'Cancelar',
		        deleteText: 'Eliminar',
		        deleting: 'Eliminando...',
		        error: 'Error',
		        close: 'Cerrar',
		        cannotLoadOptionsFor: 'No puede cargar opciones de este campo {0}',
		        pagingInfo: 'Mostrando {0}-{1} of {2}',
		        pageSizeChangeLabel: 'N&uacute;mero de filas',
		        gotoPageLabel: 'Ir a la p&aacute;gina',
		        canNotDeletedRecords: 'No se pueden eliminar {0} de {1} registros!',
		        deleteProggress: 'Eliminado {0} de {1} registros, proceso...'
		    },
		    actions: {
			        listAction:function (row, jtParams) {
			        	debugger
			        	var elements = [];
			        	ObjectRequest.peticionesAjaxV2('getListMedicos.do?jtStartIndex=' + jtParams.jtStartIndex + '&jtPageSize=' + jtParams.jtPageSize, null, function(response){
		                	 elements = {
		                 			Result:response.result,
		                 			Records:response.record,
		                 			TotalRecordCount: response.totalRecordCount 
		                 	}
		                	 
		                }, false);
			        	return  elements; 
			    },
			    createAction:function (row) {
		        	var elements = [];
		        	ObjectRequest.peticionesAjaxV2('saveMedico.do',row, function(response){
	                	 elements = {
	                 			Result:response.result,
	                 			Record:response.record 
	                 	}
	                	 
	                }, false); 
		        	return elements;
		    },
		    deleteAction:function(row){
		    	var elements = [];
	        	ObjectRequest.peticionesAjaxV2('deleteMedico.do',row, function(response){
                	 elements = {
                 			Result:response.result 
                 	 } 
                }, false); 
	        	return elements;
		    },
		    updateAction:function(row){
		    	var elements = [];
	        	ObjectRequest.peticionesAjaxV2('updateMedico.do',row, function(response){
                	 elements = {
                 			Result:response.result,
                 			Record:response.record 
                 	}
                	 
                }, false); 
	        	return elements;
		    }
		    },
		    fields: {
		    	id:{
		    		title: 'ID',
		    		key: true,
		    		list: false,
		    		width: 'auto'
		    	},
		    	hcp:{
	    		    title: 'ID HCP', 
                    list: true,
                    width: 'auto',
                    inputClass: 'validate[required]'
                },
		    	idMedico:{
	    		    title: 'ID MEDICO', 
                    list: true,
                    width: 'auto'
                },
		    	nombre:{
	    		    title: 'NOMBRE', 
                    list: true,
                    width: '20%'
                },  
		    	especialidad:{
	    		    title: 'ESPECIALIDAD', 
                    list: true,
                    width: 'auto'
                },
		    	cedulaProfesional:{
	    		    title: 'CEDULA', 
                    list: true,
                    width: 'auto'
                },
		    	cedulaEspecialidad:{
	    		    title: 'CEDULA ESPECIALIDAD',
                    
                    list: true,
                    width: 'auto'
                }, 
		    	ciudadResidencia:{
	    		    title: 'CIUDAD RESIDENCIA', 
                    list: true,
                    width: 'auto'
                }, 
		    	curp:{
	    		    title: 'CURP', 
                    list: true,
                    width: 'auto'
                } 
		    },
		  //Initialize validation logic when a form is created
            formCreated: function (event, data) {
            	var formulario = $("#jtable-create-form");
            	var elementos = formulario.find(".jtable-input-field-container");
            	formulario.html("");
            	var cadenafinal = "";
            	$.each(elementos, function(idx, el){
            		$(el).removeClass("jtable-input-field-container");
            		$(el).addClass("col-md-4");
            		if( (idx % 3) == 0){ 
            			if(idx == 0){
            				cadenafinal = "<div class='row'><div class='col-md-4'>"
            				cadenafinal += $(el).html();
            			}else{
            				cadenafinal += "</div></div><div class='row'><div class='col-md-4'>";
            				cadenafinal += $(el).html();
            			}
            		}else{
            			cadenafinal += "</div><div class='col-md-4'>"+$(el).html();
            		}
            	});
            	cadenafinal +="</div></div>";
            	formulario.html(cadenafinal);
                data.form.find('input[name="hcp"]').addClass('validate[required]');
//                data.form.find('input[name="idMedico"]').addClass('validate[required]');
                data.form.find('input[name="nombre"]').addClass('validate[required]');
                data.form.find('input[name="especialidad"]').addClass('validate[required]');
                data.form.find('input[name="cedulaProfesional"]').addClass('validate[required]');
                data.form.find('input[name="cedulaEspecialidad"]').addClass('validate[required]');
                data.form.find('input[name="ciudadResidencia"]').addClass('validate[required]');
                data.form.find('input[name="curp"]').addClass('validate[required]'); 
                data.form.validationEngine();
            },
            //Validate form when it is being submitted
            formSubmitting: function (event, data) {
                return data.form.validationEngine('validate');
            },
            //Dispose validation logic when form is closed
            formClosed: function (event, data) {
                data.form.validationEngine('hide');
                data.form.validationEngine('detach');
            }
		});
		 $(Apps.idTabla).jtable('load');
	}
});