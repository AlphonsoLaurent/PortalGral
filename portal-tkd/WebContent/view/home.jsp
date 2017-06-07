<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="utf-8">
	<title>Portal Takeda</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<link rel="shortcut icon" href="view/images/favicon.ico">
    
	<!-- CSS -->
	<link href="view/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="view/css/flexslider.css" rel="stylesheet" type="text/css" />
	<link href="view/css/prettyPhoto.css" rel="stylesheet" type="text/css" />
	<link href="view/css/animate.css" rel="stylesheet" type="text/css" media="all" />
    <link href="view/css/owl.carousel.css" rel="stylesheet">
	<link href="view/css/style.css" rel="stylesheet" type="text/css" />
    
	<!-- FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
    
	<!-- SCRIPTS -->
	<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if IE]><html class="ie" lang="en"> <![endif]-->
	
	<script src="view/js/jquery.min.js" type="text/javascript"></script>
	<script src="view/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="view/js/jquery.prettyPhoto.js" type="text/javascript"></script>
	<script src="view/js/jquery.nicescroll.min.js" type="text/javascript"></script>
	<script src="view/js/superfish.min.js" type="text/javascript"></script>
	<script src="view/js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="view/js/owl.carousel.js" type="text/javascript"></script>
	<script src="view/js/animate.js" type="text/javascript"></script>
	<script src="view/js/jquery.BlackAndWhite.js"></script>
	<script src="view/js/myscript.js" type="text/javascript"></script>
	<script>
		
		//PrettyPhoto
		jQuery(document).ready(function() {
			$("a[rel^='prettyPhoto']").prettyPhoto();
		});
		
		//BlackAndWhite
		$(window).load(function(){
			$('.client_img').BlackAndWhite({
				hoverEffect : true, // default true
				// set the path to BnWWorker.js for a superfast implementation
				webworkerPath : false,
				// for the images with a fluid width and height 
				responsive:true,
				// to invert the hover effect
				invertHoverEffect: true,
				// this option works only on the modern browsers ( on IE lower than 9 it remains always 1)
				intensity:1,
				speed: { //this property could also be just speed: value for both fadeIn and fadeOut
					fadeIn: 300, // 200ms for fadeIn animations
					fadeOut: 300 // 800ms for fadeOut animations
				},
				onImageReady:function(img) {
					// this callback gets executed anytime an image is converted
				}
			});
		});
		
	</script>
	
</head>
<body>

<!-- PRELOADER -->
<img id="preloader" src="view/images/preloader.gif" alt="" />
<!-- //PRELOADER -->
<div class="preloader_hide">

	<!-- PAGE -->
	<div id="page">
	
		<!-- HEADER -->
		<header>
			
			<!-- MENU BLOCK -->
			<div class="menu_block">
			
				<!-- CONTAINER -->
				<div class="container clearfix">
					
					<!-- LOGO -->
					<div class="logo pull-left">
						<a href="home.do" ><img src="view/images/LogoTakeda.png" class="logo"></a>
					</div><!-- //LOGO -->
					
					<!-- SEARCH FORM -->
					<!-- <div id="search-form" class="pull-right">
						<form method="get" action="#">
							<input type="text" name="Search" value="Search" onFocus="if (this.value == 'Search') this.value = '';" onBlur="if (this.value == '') this.value = 'Search';" />
						</form>
					</div> -->
					
					<!-- MENU -->
					<div class="pull-right">
						<nav class="navmenu center">
							<ul>
								<li class="first active scroll_btn"><a href="#home" >Home</a></li>
								<li class="scroll_btn"><a href="#about" >About Us</a></li>
								<li class="scroll_btn"><a href="http://mxs00064:9085/report-swat/home.do" >Projects</a></li>
								<li class="scroll_btn"><a href="#team" >Team</a></li>
								<li class="scroll_btn"><a href="#news" >News</a></li>
								<li class="scroll_btn last"><a href="#contacts" >Contacts</a></li>
								<li class="sub-menu">
									<a href="javascript:void(0);" >Pages</a>
									<ul>
										<li><a href="blog.html" >Blog</a></li>
										<li><a href="blog-post.html" >Blog Post</a></li>
										<li><a href="portfolio-post.html" >Portfolio Single Work</a></li>
										<li class="sub-menu dropdown-menu">
											<a href="javascript:void(0);" >Nivel tres</a>
											<ul>
												<li><a href="blog.html" >Blog</a></li>
												<li><a href="blog-post.html" >Blog Post</a></li>
												<li><a href="portfolio-post.html" >Portfolio Single Work</a></li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</nav>
						<!-- <nav class="collapse navbar-collapse">
							<ul class="nav navbar-nav navbar-right">
								  	<li class="first active"><a href="#home" >Home</a></li>
									<li><a href="#about" >About Us</a></li>
									<li><a href="http://mxs00064:9085/report-swat/home.do" >Projects</a></li>
									<li><a href="#team" >Team</a></li>
									<li><a href="#news" >News</a></li>
									<li><a href="#contacts" >Contacts</a></li>
								  	<li>
									    <a class="dropdown-toggle">
									      <i class="menu-icon fa fa-caret-right fa fa-line-chart" ></i>
											Menus de nivel
											<b class="arrow fa fa-angle-down"></b>
									    </a>
									    <b class="arrow"></b>
									    <ul class="submenu"> 
									    	<li><a class="fa fa-pie-chart" aria-hidden="true" href="blog.html" >Blog</a></li>
											<li><a class="fa fa-pie-chart" aria-hidden="true" href="blog-post.html" >Blog Post</a></li>
											<li>
												<a class="dropdown-toggle">
											      <i class="menu-icon fa fa-caret-right fa fa-line-chart" ></i>
													seundo nivel
													<b class="arrow fa fa-angle-down"></b>
											    </a>
											    <b class="arrow"></b>
									      		<ul class="submenu"> 
										    		<li  class="fa fa-pie-chart">Tercer nivel</li>
													<li  class="fa fa-pie-chart">Tercer nivel</li>
												</ul>
									    	</li>
									    </ul>
								  </li> 
							</ul>
						</nav> --> 
					</div><!-- //MENU -->
				</div><!-- //MENU BLOCK -->
			</div><!-- //CONTAINER -->
		</header><!-- //HEADER -->
		
		
		<!-- HOME -->
		<section id="home" class="padbot0">
				
			<!-- TOP SLIDER -->
			<div class="flexslider top_slider">
				<ul class="slides">
					<li class="slide1">
						<div class="flex_caption1">
							<p class="title1 captionDelay2 FromTop">Portal</p> 
							<p class="title3 captionDelay6 FromTop">&nbsp;Takeda </p>
							<p class="title4 captionDelay7 FromBottom">Los sistemas empresariales han puesto gran
								cantidad de información disponible para los usuarios,
								sin embargo, esto también ha traído algunos
								inconvenientes como:
								• Confusión de los usuarios para decidir qué
								información es más importante.
								• Islas de información, ya que cada sistema
								administra ésta por separado y regularmente
								se requieren tareas adicionales para trasladar
								información de un sistema a otro.
								• A pesar de que se tiene información almacenada
								en sistemas, la revisión y aprobación
								de la misma se realiza en forma manual y con
								documentos impresos, incluyendo tareas
								adicionales.
								• Problemas de seguridad asociados a diversos
								mecanismos de salvaguarda de la información.</p>
						</div>
					<li class="slide2">
						<div class="flex_caption1">
							<p class="title1 captionDelay6 FromLeft">Responsive</p>
							<p class="title2 captionDelay4 FromLeft">Design</p>
							<p class="title3 captionDelay2 FromLeft">Theme</p>
							<p class="title4 captionDelay7 FromLeft">The template is suitable for any company and the direction that appreciates style, purity and quality of the web site.</p>
						</div>
					</li>
					<li class="slide3">
						<div class="flex_caption1">
							<p class="title1 captionDelay1 FromBottom">Amazing</p>
							<p class="title2 captionDelay2 FromBottom">Video</p>
							<p class="title3 captionDelay3 FromBottom">Background</p>
							<p class="title4 captionDelay5 FromBottom">The template is suitable for any company and the direction that appreciates style, purity and quality of the web site.</p>
						</div>
 
					</li>
				</ul>
			</div> 
		</section><!-- //HOME -->
		
		<!-- CONTACTS -->
		<section id="contacts">
		</section><!-- //CONTACTS -->
		
	<!-- FOOTER -->
	<footer>
			
		<!-- CONTAINER -->
		<div class="container">
			
			<!-- ROW -->
			<div class="row" data-appear-top-offset="-200" data-animated="fadeInUp">
				
				<div class="col-lg-4 col-md-4 col-sm-6 padbot30">
					<h4><b>Featured</b> posts</h4>
					<div class="recent_posts_small clearfix">
						<div class="post_item_img_small">
							<img src="view/images/blog/1.jpg" alt="" />
						</div>
						<div class="post_item_content_small">
							<a class="title" href="blog.html" >As we have developed a unique layout template</a>
							<ul class="post_item_inf_small">
								<li>10 January 2014</li>
							</ul>
						</div>
					</div>
					<div class="recent_posts_small clearfix">
						<div class="post_item_img_small">
							<img src="view/images/blog/2.jpg" alt="" />
						</div>
						<div class="post_item_content_small">
							<a class="title" href="blog.html" >How much is to develop a design for the game?</a>
							<ul class="post_item_inf_small">
								<li>14 January 2014</li>
							</ul>
						</div>
					</div>
					<div class="recent_posts_small clearfix">
						<div class="post_item_img_small">
							<img src="view/images/blog/3.jpg" alt="" />
						</div>
						<div class="post_item_content_small">
							<a class="title" href="blog.html" >How to pump designer</a>
							<ul class="post_item_inf_small">
								<li>21 December 2013</li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-6 padbot30 foot_about_block">
					<h4><b>About</b> us</h4>
					<p>We value people over profits, quality over quantity, and keeping it real. As such, we deliver an unmatched working relationship with our clients.</p>
					<p>Our team is intentionally small, eclectic, and skilled; with our in-house expertise, we provide sharp and</p>
					<ul class="social">
						<li><a href="javascript:void(0);" ><i class="fa fa-twitter"></i></a></li>
						<li><a href="javascript:void(0);" ><i class="fa fa-facebook"></i></a></li>
						<li><a href="javascript:void(0);" ><i class="fa fa-google-plus"></i></a></li>
						<li><a href="javascript:void(0);" ><i class="fa fa-pinterest-square"></i></a></li>
						<li><a href="javascript:void(0);" ><i class="map_show fa fa-map-marker"></i></a></li>
					</ul>
				</div>
				
				<div class="respond_clear"></div>
				
				<div class="col-lg-4 col-md-4 padbot30">
					<h4><b>Contacts</b> Us</h4>
					
					<!-- CONTACT FORM -->
					<div class="span9 contact_form">
						<div id="note"></div>
						<div id="fields">
							<form id="contact-form-face" class="clearfix" action="#">
								<input type="text" name="name" value="Name" onFocus="if (this.value == 'Name') this.value = '';" onBlur="if (this.value == '') this.value = 'Name';" />
								<textarea name="message" onFocus="if (this.value == 'Message') this.value = '';" onBlur="if (this.value == '') this.value = 'Message';">Message</textarea>
								<input class="contact_btn" type="submit" value="Send message" />
							</form>
						</div>
					</div><!-- //CONTACT FORM -->
				</div>
			</div><!-- //ROW -->
			<div class="row copyright">
				<div class="col-lg-12 text-center">
				
				 <p>Crafted with <i class="fa fa-heart"></i>, <a href="http://designscrazed.org/" >Designscrazed</a></p>
				</div>
			
			</div><!-- //ROW -->
		</div><!-- //CONTAINER -->
	</footer><!-- //FOOTER -->
	
	
	<!-- MAP -->
	<div id="map">
		<a class="map_hide" href="javascript:void(0);" ><i class="fa fa-angle-right"></i><i class="fa fa-angle-left"></i></a>
		<iframe src="http://maps.google.com/maps?f=q&amp;give%20a%20hand=s_q&amp;hl=en&amp;geocode=&amp;q=london&amp;sll=37.0625,-95.677068&amp;sspn=42.631141,90.263672&amp;ie=UTF8&amp;hq=&amp;hnear=London,+United+Kingdom&amp;ll=51.500141,-0.126257&amp;spn=0.026448,0.039396&amp;z=14&amp;output=embed" ></iframe>
	</div><!-- //MAP -->

</div>
</body>
</html>