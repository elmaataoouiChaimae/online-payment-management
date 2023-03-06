<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Job board HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
		 <link rel="stylesheet" href="assets/css/style.css">
		<!-- CSS here -->
	    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
	    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
		<!-- Google fonts-->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
			rel="stylesheet" type="text/css" />
		<link
			href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
			rel="stylesheet" type="text/css" />
		<!-- Core theme CSS (includes Bootstrap)-->
		<link href="css/index-styles.css" rel="stylesheet" />

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
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
       <div class="header-area header-transparrent">
           <div class="headder-top header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-2">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="index.do"><img src="assets/img/logo/logo.png" alt=""></a>
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
                                            <li> Hello <%= session.getAttribute("name")%></li>
                                            
                                            
                                        </ul>
                                    </nav>
                                </div>          
                                <!-- Header-btn -->
                                <div class="header-btn d-none f-right d-lg-block">
                                    
                                    <a href="lougout.do" class="btn head-btn2">Déconnexion</a>
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
        <!-- Header End -->
    </header>
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active">
                <div class="single-slider slider-height d-flex justify-content-center" data-background="assets/img/hero/h1_hero.jpg">
                 
                            
                                    <section style="margin-top: 30px; " class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h5 style="color: #e72734; font-size: 30px; margin-top: 20px; margin-bottom: 50px" class="form-title">Payement De Facture En Ligne :</h5>
                          <h6>Mr/Mrs :  <%= session.getAttribute("name")%></h6>
				          <h6>Number  : <%= session.getAttribute("phone")%></h6>
				           <h6>Invoice amount : <%= session.getAttribute("facture")  %> DH</h6>
				           <h6>Invoice type:  <%= session.getAttribute("nomAbonement")%> </h6>
				           <h6>Etat de facture : <%= session.getAttribute("etat")%> </h6>
                        
                         <div class="bg-light rounded-lg shadow-sm p-5">
         
        
        <!-- Credit card form tabs -->
        <ul role="tablist" class="nav bg-light nav-pills rounded-pill nav-fill mb-3">
          <li class="nav-item">
            <a data-toggle="pill" style="color: #e72734;" href="#nav-tab-card" class="nav-link active rounded-pill">
                                <i class="fa fa-credit-card" style="color: #e72734;"></i>
                                Credit Card
                            </a>
          </li>
          <li class="nav-item">
            <a data-toggle="pill" style="color: #e72734;" href="#nav-tab-paypal" class="nav-link rounded-pill">
                                <i class="fa fa-paypal" style="color: #e72734;"></i>
                                Paypal
                            </a>
          </li>
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-bank" style="color: #e72734;" class="nav-link rounded-pill">
                                <i class="fa fa-university" style="color: #e72734;"></i>
                                 Bank Transfer
                             </a>
          </li>
        </ul>
        <!-- End -->


        <!-- Credit card form content -->
        <div class="tab-content">

          <!-- credit card info-->
          <div id="nav-tab-card" class="tab-pane fade show active">
           
            <form  method="post" action="payer">
              
              <div class="form-group">
                <label for="cardNumber">Card number</label>
                <div class="input-group">
                  <input type="text" name="cardNumber" placeholder="Your card number" class="form-control" >
                  <div class="input-group-append">
                    <span class="input-group-text text-muted">
                                                <i class="fa fa-cc-visa mx-1"></i>
                                                <i class="fa fa-cc-amex mx-1"></i>
                                                <i class="fa fa-cc-mastercard mx-1"></i>
                                            </span>
                  </div>
                </div>
              </div>
               
              <div class="row">
                <div class="col-sm-8">
                  <div class="form-group">
                    <label><span class="hidden-xs">Expiration</span></label>
                   <div class="form-group">
                    <input required type="date" class="form-control" id="date_end" name="date_end">
                </div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="username"></label>
                <input type="text" name="tree" placeholder="Three-digits code on the back of your card"  class="form-control">
              </div>
               <br> 
              <button type="submit" class="subscribe btn btn-primary btn-block rounded-pill shadow-sm"> Confirm  </button>
            </form>
          </div>
          <!-- End -->

          <!-- Paypal info -->
          <div id="nav-tab-paypal" class="tab-pane fade">
            <p>Paypal is easiest way to pay online</p>
            <p>
              <a href="https://www.paypal.com/fr/webapps/mpp/home" class="btn btn-primary rounded-pill"><i class="fa fa-paypal mr-2"></i> Log into my Paypal</a>
            </p>
            
          </div>
          <!-- End -->

          <!-- bank transfer info -->
          <div id="nav-tab-bank" class="tab-pane fade">
            <h6>Bank account details</h6>
            <dl>
              <dt>Bank</dt>
              <dd> CIH BANK</dd>
            </dl>
            <dl>
              <dt>Account number</dt>
              <dd>7775877975</dd>
            </dl>
            <dl>
              <dt>IBAN</dt>
              <dd>CZ7775877975656</dd>
            </dl>
          </div>
          <!-- End -->
        </div>
        <!-- End -->

      </div>
    </div>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/logoPayer.PNG" alt="sing up image"></figure>
                       
                    </div>
                </div>
            </div>
        </section>                                </div>
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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	    var status=document.getElementById("status").value
	    
	    if(status=="invalidcardNumber"){
	    	swal("Sorry","Please enter a valid card number","error")
	    }
	    else if(status=="invalidAnnee"){
	    	swal("Sorry","The card is expired","error")
	    }
	
	</script>

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