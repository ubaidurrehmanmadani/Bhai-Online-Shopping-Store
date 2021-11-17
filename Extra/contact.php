<!DOCTYPE html>

<html>

    
<!-- Mirrored from velikorodnov.com/html/homeshop/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jan 2016 16:29:14 GMT -->
<head>
        
        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Title -->
        <title>HomeShop - HTML Template</title>
        
		<!-- Fonts -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,900,700italic,500italic' rel='stylesheet' type='text/css'>
		
        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/perfect-scrollbar.css">
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/fontello.css">
		<link rel="stylesheet" href="css/chosen.css">
   		<link rel="stylesheet" href="css/animation.css">
		<link rel="stylesheet" href="css/style.css">
        
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<link rel="stylesheet" href="css/ie.css">
        <![endif]-->
		<!--[if IE 7]>
			<link rel="stylesheet" href="css/fontello-ie7.css">
		<![endif]-->
        
    </head>
    
    
    <body>
		
		<!-- Container -->
		<div class="container">
			
			<!-- Header -->
			<?php   
$p="";
if(basename(__DIR__)!="bhai"){
	     $p="../";
	}  
session_start();	
if(isset($_SESSION['user'])){include($p."Templates/loggedin_header.php");}
 else {include($p."Templates/header.php");}
  
  
?>

			<!-- /Header -->
			
			
			<!-- Content -->
			<div class="row content">
				
                <div class="col-lg-12 col-md-12 col-sm-12">
                	<div class="breadcrumbs">
                    	<p><a href="index.html">Home</a> <i class="icons icon-right-dir"></i> Contact</p>
                    </div>
                </div>
                
				<!-- Main Content -->
				<section class="main-content col-lg-12 col-md-12 col-sm-12">
                    
                    
                    <div class="row">
                    	
                        <div class="col-lg-7 col-md-7 col-sm-7">
                        	
                            <div class="carousel-heading no-margin">
                                <h4>Contact Information</h4>
                            </div>
                            
                            <div class="page-content contact-info">
                            	
                                <iframe width="425" height="350" src="https://maps.google.rs/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=marmora+road&amp;sll=44.210767,20.922416&amp;sspn=4.606139,10.821533&amp;ie=UTF8&amp;hq=&amp;hnear=Marmora+Rd,+London+SE22+0RX,+United+Kingdom&amp;t=m&amp;z=14&amp;ll=51.451955,-0.055755&amp;output=embed"></iframe>
								<div class="row">
                                	
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                    	<div class="contact-item green">
                                            <i class="icons icon-location-3"></i>
                                            <p>Phool Ghulaab Road,<br>
                                            
Mandian, Abbottabad.</p>
										</div>
                                    </div>
                                    
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                    	<div class="contact-item blue">
                                            <i class="icons icon-mail"></i>
                                            <p><a href="#">info@companyname.com</a><br>
<a href="#">sales@companyname.com</a>
</p>
										</div>
                                    </div>
                                    
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                    	<div class="contact-item orange">
                                            <i class="icons icon-phone"></i>
                                            <p>+92 334 4246365<br>
+92 300 1234567
</p>
										</div>
                                    </div>
                                    
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                    	<div class="contact-item purple">
                                            <i class="icons icon-clock"></i>
                                            <p>Monday - Friday: 08.00-20.00<br>
Saturday: 09.00-15.00<br>
Sunday: closed</p>
										</div>
                                    </div>
                                    
                                </div>
                                
                            </div>
                            
                    	</div>
                        
                        
                        
                        
                        <div class="col-lg-5 col-md-5 col-sm-5">
                        	
                            <div class="carousel-heading no-margin">
                                <h4>Contact Form</h4>
                            </div>
                            
                            <div class="page-content contact-form">
                            	
								<form id="contact-form" action="http://velikorodnov.com/html/homeshop/php/contact.php">
								
									<label>Name(required)</label>
									<input name="contact-name" type="text">
									
									<label>Email(required)</label>
									<input name="contact-email" type="text">
									
									<label>Subject</label>
									<input name="contact-subject" type="text">
									
									<label>Message</label>
									<textarea name="contact-message"></textarea>
									
									<input class="big" type="submit" value="Send Message">
									
                                </form>
								
                            </div>
                            
                    	</div>
                        
                        
                  	</div>
                    
				</section>
				<!-- /Main Content -->
                
                
			</div>
			<!-- /Content -->
			
			
			


			
			<!-- Banner -->
			<?php include($p."Templates/footer.php")?>
			<!-- Footer -->
			
            
            <div id="back-to-top">
            	<i class="icon-up-dir"></i>
            </div>
            
		</div>
    	<!-- Container -->
		
		
		
		<!-- JavaScript -->
		<script src="js/modernizr.min.js"></script>
		<script src="js/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/jquery.raty.min.js"></script>
		
		<!-- Scroll Bar -->
		<script src="js/perfect-scrollbar.min.js"></script>
		
		<!-- Cloud Zoom -->
		<script src="js/zoomsl-3.0.min.js"></script>
		
		<!-- FancyBox -->
		<script src="js/jquery.fancybox.pack.js"></script>
		
		<!-- jQuery REVOLUTION Slider  -->
		<script type="text/javascript" src="js/jquery.themepunch.plugins.min.js"></script>
		<script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>

		<!-- FlexSlider -->
		<script defer src="js/flexslider.min.js"></script>
		
		<!-- IOS Slider -->
		<script src = "js/jquery.iosslider.min.js"></script>
		
		<!-- noUi Slider -->
		<script src="js/jquery.nouislider.min.js"></script>
		
		<!-- Owl Carousel -->
		<script src="js/owl.carousel.min.js"></script>
		
		<!-- Cloud Zoom -->
		<script src="js/zoomsl-3.0.min.js"></script>
		
		<!-- SelectJS -->
        <script src="js/chosen.jquery.min.js" type="text/javascript"></script>
        
        <!-- Main JS -->
        <script defer src="js/bootstrap.min.js"></script>
        <script src="js/main-script.js"></script>

		
    </body>
    

<!-- Mirrored from velikorodnov.com/html/homeshop/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jan 2016 16:29:15 GMT -->
</html>