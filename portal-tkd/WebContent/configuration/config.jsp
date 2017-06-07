<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
     

	<meta charset="utf-8">
	<title>Configuración Portal Takeda</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<link rel="shortcut icon" href="view/images/favicon.ico">
 
    <!-- Bootstrap CSS -->    
    <link href="configuration/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="configuration/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="configuration/css/elegant-icons-style.css" rel="stylesheet" />
<!--     <link href="configuration/css/font-awesome.min.css" rel="stylesheet" /> -->
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet"> 
    <!-- full calendar css-->
    
    
<!--     <link href="configuration/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" /> -->
<!-- 	<link href="configuration/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" /> -->
    
    <!-- easy pie chart-->
<!--     <link href="configuration/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/> -->
    
    <!-- owl carousel -->
<!--     <link rel="stylesheet" href="configuration/css/owl.carousel.css" type="text/css"> -->
<!-- 	<link href="configuration/css/jquery-jvectormap-1.2.2.css" rel="stylesheet"> -->
    
    <!-- Custom styles -->
<!-- 	<link rel="stylesheet" href="configuration/css/fullcalendar.css"> -->
<!-- 	<link href="configuration/css/widgets.css" rel="stylesheet"> -->
    <link href="configuration/css/style.css" rel="stylesheet">
    <link href="configuration/css/style-responsive.css" rel="stylesheet" />
<!-- 	<link href="configuration/css/xcharts.min.css" rel=" stylesheet">	 -->
	<link href="configuration/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
	
	
	
    <!-- =======================================================
        Theme Name: NiceAdmin
        Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
        Author: BootstrapMade
        Author URL: https://bootstrapmade.com
    ======================================================= -->
    <style type="text/css">
    	.intrinsic-container {
		  position: relative;
		  min-height: 600px;
		  max-height: 700px;
		/*   overflow: hidden; */
		}
		 
		/* 16x9 Aspect Ratio */
		.intrinsic-container-16x9 {
		  padding-bottom: 56.25%;
		}
		 
		/* 4x3 Aspect Ratio */
		.intrinsic-container-4x3 {
		  padding-bottom: 75%;
		}
		 
		.intrinsic-container iframe {
		  position: relative;
		  top:0;
		  left: 0;
		  width: 100%;
		  height: 100%;
		  border: thin;
		}
		
		 
    </style>
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
     
      
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a class="logo">Administrar <span class="lite">Portal</span></a>
            <!--logo end-->

            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">                    
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>                    
                </ul>
                <!--  search form end -->                
            </div>

            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="configuration/img/prototipoUser.png">
                            </span>
                            <span class="username">Alfonso Laureano</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="#"><i class="icon_profile"></i> Mi perfil</a>
                            </li>
                            <li>
                                <a href="login.html"><i class="icon_key_alt"></i> Salir</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentación</a>
                            </li> 
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
      </header>      
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="index.html">
                          <i class="icon_house_alt"></i>
                          <span>Configuraci&oacute;n</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:();" class="">
                          <i class="icon_document_alt"></i>
                          <span>Catalogos</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                      	  	<li><a href="#" onclick="HomeConfig.fnLoadHtml('catalogogral.do',null);"><i class="glyphicon-menu-hamburger"></i><span>Catalogo general</span></a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('catalogodet.do',null);"><i class="glyphicon-menu-hamburger"></i>Catalogo detalle</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('aplicaciones.do',null);"><i class="glyphicon-menu-hamburger"></i>Aplicaciones</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('excepcionAplicaciones.do',null);"><i class="glyphicon-menu-hamburger"></i>Excep. de aplicaciones</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('historialPassword.do',null);"><i class="glyphicon-menu-hamburger"></i>Hist. de password</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('logsAccesos.do',null);"><i class="glyphicon-menu-hamburger"></i>Logs de accesos</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('permisos.do',null);"><i class="glyphicon-menu-hamburger"></i>Permisos</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('respuestasPreguntasSecretas.do',null);"><i class="glyphicon-menu-hamburger"></i>Resp. a preg. secretas</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('roles.do',null);"><i class="glyphicon-menu-hamburger"></i>Roles</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('session.do',null);"><i class="glyphicon-menu-hamburger"></i>Sessión</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('usuarios.do',null);"><i class="glyphicon-menu-hamburger"></i>Usuario</a></li>
							<li><a href="#" onclick="HomeConfig.fnLoadHtml('detalleUsuario.do',null);"><i class="glyphicon-menu-hamburger"></i>Detalle usuario</a></li>       
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_cog"></i>
                          <span>Asignar permisos</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a>Permisos a roles</a></li>
                          <li><a>Permisos</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_cog"></i>
                          <span>My courses</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a href="https://clix-go.takeda.com">Mis cursos</a></li>
                      </ul>
                  </li> 
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">            
              <!--overview start-->
			  <div class="row">
				<div class="col-lg-12">
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
<!-- 						<li><i class="fa fa-laptop"></i>Dashboard</li>						  	 -->
					</ol>
				</div>
			</div>
              
            <div class="row intrinsic-container">
            	<iframe id="divContent" style="height: 650px;">
            	
            	</iframe>
			</div> 
		
          </section>
          <div class="text-center">
          	Derechos reservados TAKEDA
        </div>
      </section>
      <!--main content end-->
  </section>
  <!-- container section start -->

    <!-- javascripts -->
    <script src="configuration/js/jquery.js"></script>
	<script src="configuration/js/jquery-ui-1.10.4.min.js"></script>
    <script src="configuration/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="configuration/js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="configuration/js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="configuration/js/jquery.scrollTo.min.js"></script>
    <script src="configuration/js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
<!--     <script src="configuration/assets/jquery-knob/js/jquery.knob.js"></script> -->
<!--     <script src="configuration/js/jquery.sparkline.js" type="text/javascript"></script> -->
<!--     <script src="configuration/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script> -->
<!--     <script src="configuration/js/owl.carousel.js" ></script> -->
    <!-- jQuery full calendar -->
<!--     <script src="configuration/js/fullcalendar.min.js"></script> Full Google Calendar - Calendar -->
<!-- 	<script src="configuration/assets/fullcalendar/fullcalendar/fullcalendar.js"></script> -->
    <!--script for this page only-->
<!--     <script src="configuration/js/calendar-custom.js"></script> -->
<!-- 	<script src="configuration/js/jquery.rateit.min.js"></script> -->
    <!-- custom select -->
<!--     <script src="configuration/js/jquery.customSelect.min.js" ></script> -->
<!-- 	<script src="configuration/assets/chart-master/Chart.js"></script> -->
   
    <!--custome script for all page-->
    <script src="configuration/js/scripts.js"></script>
    <!-- custom script for this page-->
   <!--  <script src="configuration/js/sparkline-chart.js"></script>
    <script src="configuration/js/easy-pie-chart.js"></script>
	<script src="configuration/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="configuration/js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="configuration/js/xcharts.min.js"></script>
	<script src="configuration/js/jquery.autosize.min.js"></script>
	<script src="configuration/js/jquery.placeholder.min.js"></script> -->
<!-- 	<script src="configuration/js/gdp-data.js"></script>	 -->
	<!-- <script src="configuration/js/morris.min.js"></script>
	<script src="configuration/js/sparklines.js"></script>	
	<script src="configuration/js/charts.js"></script>
	<script src="configuration/js/jquery.slimscroll.min.js"></script> -->
	
	<!-- LIBRERIAS PARA LAS TABLAS -->
	<!-- <link href="configuration/jtable.2.4.0/themes/lightcolor/red/jtable.min.css" rel="stylesheet" type="text/css"/>
	<script src="configuration/jtable.2.4.0/jquery.jtable.min.js" type="text/javascript"></script> -->
	
	<script src="configuration/libs-custom/fns-generics.js"></script>
	<script src="configuration/libs-custom/dialogs-alt.js"></script>
	
	<!-- CATALOGOS PARA EL PORTAL -->
<!-- 	<script src="configuration/js-catalogos/aplicaciones.js"></script> -->


	<script src="configuration/homeConfig.js"></script> 
	
  <script>

      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () { 
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
//       $(document).ready(function() {
//           $("#owl-slider").owlCarousel({
//               navigation : true,
//               slideSpeed : 300,
//               paginationSpeed : 400,
//               singleItem : true

//           });
//       });

      //custom select box

//       $(function(){
//           $('select.styled').customSelect();
//       });
	  
	  /* ---------- Map ---------- */
// 	$(function(){
// 	  $('#map').vectorMap({
// 	    map: 'world_mill_en',
// 	    series: {
// 	      regions: [{
// 	        values: gdpData,
// 	        scale: ['#000', '#000'],
// 	        normalizeFunction: 'polynomial'
// 	      }]
// 	    },
// 		backgroundColor: '#eef3f7',
// 	    onLabelShow: function(e, el, code){
// 	      el.html(el.html()+' (GDP - '+gdpData[code]+')');
// 	    }
// 	  });
// 	});

  </script>

  </body>
</html>
