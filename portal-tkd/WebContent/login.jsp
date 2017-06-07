<%@ page language="java" contentType="text/html; charset=ISO-8859-15"
    pageEncoding="ISO-8859-15"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
   
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
	
  <link rel="shortcut icon" href="view/images/favicon.ico">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
  <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

  <link rel="stylesheet" href="css/style.css"> 
</head>

<body> 
 
<div class="pen-title">
	<a href="home.do" ><img src="view/images/LogoTakeda.png" class="logoPortal"></a>
 </div> 
<div class="module form-module">
  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
    <div class="tooltip">Click Me</div>
  </div>
  <div class="form">
    <h2>Login to your account</h2>
    <form action="home.do" method="POST">
      <input type="text" id="userName" name="userName" placeholder="Username" value="SK3214" />
      <input type="password" id="password" name="password" placeholder="Password" value="password2017;"/>
      <input type="submit" placeholder="Password" style="cursor: pointer;"/>
    </form>
  </div>
 
<!--   <div class="cta"><a href="#">Forgot your password?</a></div> -->
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<!--   <script src='http://codepen.io/andytran/pen/vLmRVp.js'></script> -->
</body>
</html>
