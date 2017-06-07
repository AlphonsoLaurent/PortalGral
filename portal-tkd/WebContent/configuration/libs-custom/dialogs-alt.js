/*
 * Author: Alfonso Laureano Tolentino*/
var DialogSWT = Object.create({
	divDialogGral : "#dialgoGral",
	iconoUser:"<img style='width: 30px; height: 30px;' src='view/assets/images/1m463n.png' />",
	createDialgo:	function (icono, tituloMsg, mensaje, botones) {
		
		try { 
			
			$(DialogSWT.divDialogGral).dialog("destroy"); 
			
		} catch (ex) { }
		
		if(icono == undefined || icono == ""){
			icono = DialogSWT.iconoUser.replace("1m463n","warning");
		}else{
			icono = DialogSWT.iconoUser.replace("1m463n",icono);
		}
		$(DialogSWT.divDialogGral).html("<br><table id='tblMensaje' style='border: #ffffff 1px solid;'><tbody><tr><td style='background: white;'>"+icono+"&nbsp;</td><td style='background: white;'>"+mensaje+"</td></tr></tbody></table><br>")
								  .dialog({
								            modal: true,
								            width: "auto",
								            heigth: "auto",
								            buttons: botones,
								            title: tituloMsg === undefined ? "Mensaje informativo" : tituloMsg,
								            close: function () {
								            	$(DialogSWT.divDialogGral).dialog("destroy");
								            	$(DialogSWT.divDialogGral).hide();
								            },
								            open: function () {
								            	var $contenedor = $('.ui-dialog-buttonpane');
								            	$(".ui-dialog-titlebar").hide();
								            	$contenedor.find('button:contains("Aceptar")').button({icons: {primary: 'ui-icon-check'}});
								            	$contenedor.find('button:contains("Cancelar")').button({icons: {primary: 'ui-icon-cancel'}});
								            	
								            	$(DialogSWT.divDialogGral).find(".ui-dialog-buttonset > button").click(function () {
							            		$(DialogSWT.divDialogGral).dialog("close");
							            		$(DialogSWT.divDialogGral).hide();
								               });
								            }
								          }).on("keydown", function (evt) {
								            if (evt.keyCode === top.$.ui.keyCode.ESCAPE) {
								            	$(DialogSWT.divDialogGral).dialog("close");
								            	$(DialogSWT.divDialogGral).hide();
								            }
								            evt.stopPropagation();
								          });
	},
	msgInformativo:function (icono, tituloMsg,  contenidoMsg){
	  var botones = {"Aceptar": function () {
		  $(DialogSWT.divDialogGral).dialog("close");
	    }};
	  DialogSWT.createDialgo(icono, tituloMsg,  contenidoMsg , botones);
	},
	msgInformativoEjecutarEvento:function (icono, tituloMsg,  contenidoMsg, ejecutar){
	  var botones = {"Aceptar": function () {
	      ejecutar();
	      $(DialogSWT.divDialogGral).dialog("close");
	    }};
	  DialogSWT.createDialgo(icono, tituloMsg, contenidoMsg , botones);
	},
	msgPorConfirmar: function (icono, tituloMsg,  contenidoMsg, ejecutar){
	  var botones = {
		    "Aceptar": function () {
		      ejecutar(); 
		      $(DialogSWT.divDialogGral).dialog("close");
		    },
		  "Cancelar": function () {
			  $(DialogSWT.divDialogGral).dialog("close");
		  }
	  };
	  DialogSWT.createDialgo(icono, tituloMsg,  contenidoMsg , botones);
	},
	msgPorConfirmarAceptCancel: function (icono, tituloMsg,  contenidoMsg, fnAcept, fnCancel){
	  var botones = {
	    "Aceptar": function () {
	      fnAcept();
	      $(DialogSWT.divDialogGral).dialog("close");
	    },
	    "Cancelar": function () {
		      fnCancel();
		      $(DialogSWT.divDialogGral).dialog("close");
		    }
	  };
	  DialogSWT.createDialgo(icono, tituloMsg, contenidoMsg , botones);
	}
});