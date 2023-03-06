<%@ page language="java" contentType="text/html; charset=windows-1256"
	pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1256">
<title>Job board HTML-5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">
<link rel="stylesheet" href="assets/css/style.css">
<!-- CSS here -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">


<link rel="stylesheet" href="assets/css/slicknav.css">
<link rel="stylesheet" href="assets/css/animate.min.css">

<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/themify-icons.css">


<link rel="stylesheet" href="assets/css/style.css">
<!-- Font Icon -->


</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<!-- Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="assets/img/logo/logo.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	<header> <!-- Header Start -->
	<div class="header-area header-transparrent">
		<div class="headder-top header-sticky">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-3 col-md-2">
						<!-- Logo -->
						<div class="logo">
							<a href="index.html"><img src="assets/img/logo/logo.png"
								alt=""></a>
						</div>
					</div>
					<div class="col-lg-9 col-md-9">
						<div class="menu-wrapper">
							<!-- Main-menu -->
							<div class="main-menu">
								<nav class="d-none d-lg-block">
								<ul id="navigation">
									<li><a href="index.jsp">Home</a></li>
                                    <li><a href="AboutUs.jsp">About</a></li>
                                    <li><a href="contact.do">Contact</a></li>
									

								</ul>
								</nav>
							</div>
							<!-- Header-btn -->
							<div class="header-btn d-none f-right d-lg-block">
								<a href="Signup.jsp" class="btn head-btn1">Registre</a>
                                    <a href="login.jsp" class="btn head-btn2">Login</a>
							</div>
						</div>
					</div>
					<!-- Mobile Menu -->
					<div class="col-12">
						<div class="mobile_menu d-block d-lg-none"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End --> </header>


	<!-- slider Area Start-->
	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="slider-active">
			<div class="single-slider slider-height d-flex justify-content-center"
				data-background="assets/img/hero/h1_hero.jpg">

				<p></p>
				<section style="margin-top: 70px;"
				    
					class="sign-in" >
				<div class="container" >
					<div class="signin-content">
						<div class="signin-image">
							<figure> <img src="images/logoPayer.PNG"
								alt="sing up image"></figure>
							
						</div>

						<div class="signin-form">
							<h2 style="color: #e72734; margin-bottom: 40px" class="form-title">Authentifiez vous :</h2>
							<p style="font-size: 15px; font-style: italic; font-weight: bold;">${message}</p>
							<form method="post" action="login" class="register-form"
								id="login-form">
								<div class="form-group">
									<label for="your_name"><i
										class="zmdi zmdi-account material-icons-name"></i></label> <input
										type="text" name="username" id="your_name"
										placeholder="Your Name" />
								</div>
								<div class="form-group">
									<label for="your_pass"><i class="zmdi zmdi-lock"></i></label> <input
										type="password" name="password" id="your_pass"
										placeholder="Your Password" />
								</div>
								<div class="form-group">
								      <a href="forgotPassword.jsp" style="color: #7893ae">Forgout Password ?</a>
							   </div>
								<div class="form-group">
									<div>
										<p style="margin-left: 60px;">You don't have an account?<a style="color: #e72734" href="Signup.jsp">Sign Up</a></p>
									</div>
								</div>
								<div style="margin-left: 90px;" class="form-group form-button">
									<input type="submit" name="signin" id="signin"
										class="form-submit" value="Connexion" />
								</div>
								
							</form>	
						</div>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>




	<!-- slider Area End-->
	<!-- Our Services Start -->



	<!-- JS here -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>

	<!-- All JS Custom Plugins Link Here here -->
	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<script src="./assets/js/price_rangs.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
	<script src="./assets/js/jquery.scrollUp.min.js"></script>
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	    var status=document.getElementById("status").value
	    if(status=="failed"){
	    	swal("Sorry","Wrong Username or Password","error")
	    }
	    else if(status=="invalidPassword"){
	    	swal("Sorry","Please enter a valid password","error")
	    }
	    else if(status=="invalidEmail"){
	    	swal("Sorry","Please enter a valid username","error")
	    }
	
	</script>

	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>

</body>
</html>